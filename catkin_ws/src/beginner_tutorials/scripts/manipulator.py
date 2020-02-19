#!/usr/bin/env python

import rospy
from std_msgs.msg import Int16

def callback(x):                                                # DEFINE FUNCTION. INPUT -> THE DATA THAT THE SUBSCRIBER HAS HEARD
    rospy.loginfo(x)                                            # DISPLA THE DATA THE SUBSCRIBER HEARD WITH ITS INFO

def manipulator():                                              # DEFINE FUNCTION
    rospy.init_node('manipulator',anonymous = True)             # INITIALIZE NODE WITH A NAME AND A UNIQUE ID FOR MASTER
    rospy.Subscriber('/task1/numbers', Int16, callback)         # SUBSCRIBE TO /task1/numbers EXPECT Int16 TYPE OF DATA AND SEND THESE DATA TO callback
    rospy.spin()                                                # KEEP RUNNING

if __name__ == '__main__':                                      # MAIN
    manipulator()
