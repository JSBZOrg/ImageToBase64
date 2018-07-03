import dd from 'ddeyes'
import path from 'path'
import { send } from 'micro'
import { router, get } from 'microrouter'
import base64AndUrl from './toBase64'

export default =>
  # json = await base64AndUrl()
  json = base64AndUrl()
  res = json.map (item, index) =>
    aPath = path.join __dirname, '../public'
    p = item.url.replace aPath, ''
    get p, (req, res) =>
      send res, 200, item.img