import os
import time
import logging as log

log.info("Hello world")
  
f = open('/app/mount-folder/data.txt', 'a+')
f.write('Hello Python' + os.linesep)

while True:
  time.sleep(100)
  log.info("Hello world")
log.info("exit")
