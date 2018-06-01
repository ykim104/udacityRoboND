#include <cmath>
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
// %EndTag(INCLUDES)%

// ROS publishers, subscribers
ros::Publisher marker_pub;
ros::Subscriber marker_sub;
visualization_msgs::Marker marker;
geometry_msgs::PoseWithCovarianceStamped pose_AMCL;

// ROS variables
float pose_AMCL_x, pose_AMCL_y;
//double pickup_x, pickup_y, dropoff_x, dropoff_y;
bool hide = false;
//define pickup and goal pos
float pickup_x = 7.0;
float pickup_y = -1.5;
float dropoff_x = 6;
float dropoff_y = -5;

// hide marker
bool marker_hide()
{
    marker.color.a = 0; // invisible
    marker_pub.publish(marker);
    ROS_INFO("Marker Hide DONE");
    ros::Duration(5).sleep();

    return true;
}

// publish marker
bool marker_publish()
{
// edit pose location
    marker.pose.position.x = dropoff_x;
    marker.pose.position.y = dropoff_y;
    marker.color.a = 1;
// publish at new location
    marker_pub.publish(marker);
    ros::Duration(5).sleep();
    ROS_INFO("MARKER PUBLISH DONE");
    return false;
}

//amcl callback function
float diff_x, diff_y;
float goal_x, goal_y;
void pose_amcl_callback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msgAMCL)
{
  pose_AMCL = *msgAMCL;
  pose_AMCL_x = pose_AMCL.pose.pose.position.x;
  pose_AMCL_y = pose_AMCL.pose.pose.position.y;
  
}
/**
  //define goal
  goal_x = hide ? dropoff_x : pickup_x;
  goal_y = hide ? dropoff_y : pickup_y;
  diff_x = std::abs (pose_AMCL_x - goal_x);
  diff_y = std::abs (pose_AMCL_y - goal_y);
  //ROS_INFO("%f %f", diff_x, diff_y);
  
  //if at pick up location
  if( (diff_x < .25) && (diff_y < .25))
  {
     //hide the marker and wait five seconds
     if(!hide)
     {
      ROS_INFO("marker hide");
      hide = marker_hide();
    }
    else
    {
     //hide = true; after pickup
     ROS_INFO("marker publish at dropoff");
     hide = marker_publish();
    } 
 }
}

**/
int main( int argc, char** argv )
{
  ros::init(argc, argv, "add_markers");
  ros::NodeHandle n;
  ros::Rate r(1);
  //ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  //ros::Subscriber marker_sub =  n.subscribe("amcl_pose",1000,pose_amcl_callback);
  marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  marker_sub = n.subscribe("amcl_pose", 100, pose_amcl_callback);
// %EndTag(INIT)%

  // Set our initial shape type to be a cube
// %Tag(SHAPE_INIT)%
  uint32_t shape = visualization_msgs::Marker::CUBE;
// %EndTag(SHAPE_INIT)%

// %Tag(MARKER_INIT)%
  // while (ros::ok())
  // {
    // visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "/map";
    marker.header.stamp = ros::Time::now();
// %EndTag(MARKER_INIT)%

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
// %Tag(NS_ID)%
    marker.ns = "basic_shapes";
    marker.id = 0;
// %EndTag(NS_ID)%

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
// %Tag(TYPE)%
    marker.type = shape;
// %EndTag(TYPE)%

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
// %Tag(ACTION)%
    marker.action = visualization_msgs::Marker::ADD;
// %EndTag(ACTION)%

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
// %Tag(POSE)%
    marker.pose.position.x = pickup_x;
    marker.pose.position.y = pickup_y;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;
// %EndTag(POSE)%

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
// %Tag(SCALE)%
    marker.scale.x = 0.5; //1.0;
    marker.scale.y = 0.5; //1.0;
    marker.scale.z = 0.5; //1.0;
// %EndTag(SCALE)%

    // Set the color -- be sure to set alpha to something non-zero!
// %Tag(COLOR)%
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;
// %EndTag(COLOR)%

// %Tag(LIFETIME)% 5 seconds
    marker.lifetime = ros::Duration();
// %EndTag(LIFETIME)%
   while(ros::ok())
  {
    // Publish the marker
// %Tag(PUBLISH)%
    while (marker_pub.getNumSubscribers() < 1)
    {
      if (!ros::ok())
      {
        return 0;
      }
      ROS_WARN_ONCE("Please create a subscriber to the marker");
      sleep(1);
    }
    marker_pub.publish(marker);

  // ROS_INFO("%f", pose_AMCL_x);
    //define goal
  goal_x = hide ? dropoff_x : pickup_x;
  goal_y = hide ? dropoff_y : pickup_y;
  diff_x = std::abs (pose_AMCL_x - goal_x);
  diff_y = std::abs (pose_AMCL_y - goal_y);
  //ROS_INFO("%f %f", diff_x, diff_y);
  
  //if at pick up location
  if( (diff_x < .25) && (diff_y < .25))
  {
     //hide the marker and wait five seconds
     if(!hide)
     {
      ROS_INFO("marker hide");
      hide = marker_hide();
    }
    else
    {
     //hide = true; after pickup
     ROS_INFO("marker publish at dropoff");
     hide = marker_publish();
    } 
  }
//    ros::Duration(5).sleep();
// %EndTag(PUBLISH)%

/**
// puase for 5 seconds
    marker.color.a = 0; // invisible
    marker_pub.publish(marker);
    ros::Duration(5).sleep();
// edit pose location
    marker.pose.position.x = 4;
    marker.pose.position.y = -5;
    marker.color.a = 1;
// publish at new location
    marker_pub.publish(marker);
    ros::Duration(5).sleep();
**/
//    ROS_INFO("%f", pose_AMCL_x);
    ros::spinOnce(); // call all the callbacks waiting to be called at this point in time! Need when you subscribe
    r.sleep();
  }
}

