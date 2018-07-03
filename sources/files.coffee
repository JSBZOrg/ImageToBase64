import dd from 'ddeyes'
import path from 'path'
import fs from 'fs'
import recursive from 'recursive-readdir'
baseDir = path.join __dirname, '../public' # 根目录 
export default =>
  # await do () =>
  #   new Promise (resolve, rej) ->
  #     recursive baseDir, [".DS_Store"], (err, files) =>
  #       resolve files
  arr = [];
  fs.readdirSync baseDir
    .map (item, index) =>
      if item != '.DS_Store'
        fs.readdirSync "#{baseDir}/#{item}"
        .map (item2, index) =>
          arr.push "#{baseDir}/#{item}/#{item2}"
  arr


  