import fs from 'fs'
import dd from 'ddeyes'
import base64Img from 'base64-img'
import urls from './files.coffee'

export default =>
  # urlArr = await urls()
  urlArr = urls()
  res = urlArr.map (item, index) =>
    base64 = base64Img.base64Sync item
    {
      url: urlArr[index]
      img: base64
    }
