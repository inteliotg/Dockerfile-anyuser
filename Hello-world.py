import os
import time
import logging as log
import sys

log.basicConfig(format="[ %(levelname)s ] %(message)s", level=log.INFO, stream=sys.stdout)
log.info("Demo log output in container")
log.info("--Hello World--")

log.info("Demo creating file in output mount point")
f = open('./data.txt', 'a+')
f.write('Hello Python' + os.linesep)
f.close()
log.info("Had created demo.txt file\n You can go to output point to check with terminal or filesystem.")

log.info("Demo keep the container live with max limitation")
while True:
  time.sleep(5)
  log.info("--Enter terminal to do what you want --")
log.info("exit")
