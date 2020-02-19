#!/usr/bin/env python

import rospy
from service_temp.srv import WordCount, WordCountResponse               #WordCount & WordCountResponse ARE THE FILES THAT WERE CREATED BY catkin_make AFTER CREATING THE WordCount.srv FILE

def count_words(req):                                                   #CALLBACK FUNCTION
    return WordCountResponse(len(req.words.split()))                    #OUTPUT OF CALLBACK FUNCTION WHICH IS THEN PASSED TO SERVER(RESPONSE) AND THE SERVER PASSES IT TO THE CLIENT.
                                                                        #THIS OUTPUT(RESPONSE) IS THE OUTPUT OF THE "LOCAL FUNCTION" word_count IN service_client.py. THE INPUT WAS THE REQUEST.


def service_server():
    rospy.init_node('service_server')                                   #START NODE COMMUNICATION WITH ROS MASTER.

    service = rospy.Service('word_count', WordCount, count_words)       #OPEN A SERVICE CALLED 'word_count' THAT ACCEPTS REQUESTS OF TYPE WordCount
                                                                        #AND PASS THEM TO CALLBACK FUNCTION count_words

    rospy.spin()                                                        #KEEP THE NODE UP AND RUNNING UNTILL FURTHER NOTICE

if __name__ == '__main__':
    service_server()
