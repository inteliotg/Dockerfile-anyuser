import os
import time
import logging as log
import sys

log.basicConfig(format="[ %(levelname)s ] %(message)s", level=log.INFO, stream=sys.stdout)

log.info("Hello world")
  
f = open('/app/mount-folder/data.txt', 'a+')
f.write('Hello Python' + os.linesep)

while True:
  time.sleep(100)
  log.info("Hello world")
log.info("exit")
