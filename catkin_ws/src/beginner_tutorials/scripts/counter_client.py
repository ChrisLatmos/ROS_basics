#!/usr/bin/env python

import rospy
import timer
from beginner_tutorials.msg import CounterAction, CounterGoal, CounterResult
import actionlib

def counter_a_client():

    client = actionlib.SimpleActionClient('counter_server', CounterAction)

    client.wait_for_server()

    goal = GetCounterGoal(count_up_to)

    client.send_goal(goal)

    client.wait_for_result()

    result = client.get_result()

    return result
