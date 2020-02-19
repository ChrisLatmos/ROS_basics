#!/usr/bin/env python

import rospy
import actionlib
from beginner_tutorials.msg import TimerAction, TimerGoal, TimerResult

rospy.init_node('timer_action_client')
client = actionlib.SimpleActionClient('timer', TimerAction)             #SimpleActionClient IS A CLASS CONSTRUCTOR THAT EXISTS IN THE LIBRARY actionlib.
client.wait_for_server()
goal = TimerGoal()          #CREATE GOAL OF TYPE TimerGoal
goal.time_to_wait = rospy.Duration.from_sec(5.0)
client.send_goal(goal)
client.wait_for_result()
print('Time elapsed: %f'%(client.get_result().time_elapsed.to_sec()))
