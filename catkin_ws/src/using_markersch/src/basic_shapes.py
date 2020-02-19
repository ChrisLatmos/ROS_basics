#!/usr/bin/env python

import rospy
from visualization_msgs.msg import Marker                                                                                   #REMEMBER TO ADD A Marker IN rviz AND CHANGE FIXED FRAME TO "/my_frame"



def switch_marker(marker, shape_type):
    shape_types = {'SPHERE': Marker.SPHERE, 'ARROW': Marker.ARROW, 'CYLINDER': Marker.CYLINDER, 'CUBE': Marker.CUBE}        #DICTIONARY WITH ALL TYPES OF SHAPES

    marker.type = shape_types[shape_type]                                                                                   #WE CHANGE THE KEY 'shape_type' IN MAIN, USING A COUNTER


if __name__ == '__main__':

        rospy.init_node("basic_shapes", anonymous = True)                                                                   #INITIALIZE NODE (MAKE IT ANONYMOUS)
        marker_pub = rospy.Publisher("visualization_marker", Marker, queue_size = 100)                                      #PUBLISH TO TOPIC "visualization_marker". ADD A Marker IN rviz AS A SUBSCRIBER
        rate = rospy.Rate(1)                                                                                                #1Hz

        marker = Marker()                                                                                                   #CREATE OUR marker OBJECT
        counter = 0                                                                                                         #FOR THE IF STATEMENTS
        marker.type = marker.SPHERE    #Initialize shape to CUBE. shape is just an integer (uint8)

        while not rospy.is_shutdown():                                                                                      #INITIALIZE marker EVERY TIME
            #marker = Marker()
            marker.header.frame_id = "/my_frame"
            marker.header.stamp = rospy.Time.now()

            marker.ns = "basic_shapes"
            marker.id = 0
            marker.action = marker.ADD #OPTIONS ARE: ADD DELETE DELETEALL

            marker.pose.position.x = 0
            marker.pose.position.y = 0
            marker.pose.position.z = 0
            marker.pose.orientation.x = 0.0
            marker.pose.orientation.y = 0.0
            marker.pose.orientation.z = 0.0
            marker.pose.orientation.w = 0.0

            marker.scale.x = 1.0
            marker.scale.y = 1.0
            marker.scale.z = 1.0

            marker.color.r = 0.0
            marker.color.g = 1.0
            marker.color.b = 0.0
            marker.color.a = 1.0

            marker.lifetime = rospy.Duration()                                                                              #NEVER AUTO-DELETE

            #while marker_pub.getNumSubscribers() < 1:

            #    if not rospy.is_shutdown():
            #        return 0

            #    print("Please create a subscriber to the marker")
            #    sleep(1)

            marker_pub.publish(marker)                                                                                      #PUBLISH THE marker object

            if counter == 0:                                                                                                #CHANGE THE KEY OF THE switch_marker IN EVERY LOOP
                shape_type = 'SPHERE'
                counter += 1
            elif counter == 1:
                shape_type = 'ARROW'
                counter += 1
            elif counter == 2:
                shape_type = 'CUBE'
                counter += 1
            elif counter == 3:
                shape_type = 'CYLINDER'
                counter = 0

            switch_marker(marker, shape_type)                                                                               #CALL THE FUNCTION THAT CHANGES THE marker.type

            rate.sleep()                                                                                                    #SLEEP ENOUGH TO MANTAIN 1Hz
