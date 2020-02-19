#!/usr/bin/env python

import rospy
from service_temp.srv import WordCount
import sys

def service_server():
    rospy.init_node('service_client')                           #START NODE COMMUNICATION WITH ROS MASTER.
    rospy.wait_for_service('word_count')                        #WAIT UNTILL THE SERVER 'word_count' IS OPEN. UNTILL THEN, THE REQUEST IS ON THE AIR.

    word_counter = rospy.ServiceProxy('word_count',WordCount)   #word_counter IS LIKE A LOCAL FUNCTION, EXCEPT THAT IT REDIRECTS ITS INPUT TO THE SERVER.
                                                                #THE SERVER DOES THE WORK, AND THE RESPONSE IS THE OUTPUT OF THE LOCAL FUNCTION.

    words = ' '.join(sys.argv[1:])
    word_count = word_counter(words)                            #words IS THE REQUEST. word_count IS THE RESPONSE.
                                                                #THESE CORRESPOND TO THE WordCount.srv FILE WE CREATED EARLIER

    print words, '->', word_count.count                         #JUST TO SEE IF IT WORKED

if __name__ == '__main__':
    service_server()
