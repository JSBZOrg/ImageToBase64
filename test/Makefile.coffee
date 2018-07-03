import dd from 'ddeyes'
import 'shelljs/make'
import img from '../sources/toBase64.coffee'
import getImage from '../sources/router'
import files from '../sources/files'
import test from '../sources'
target.all = =>
 dd img()
    
