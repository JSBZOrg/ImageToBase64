import { router } from 'microrouter'
import cors from 'micro-cors'
import routers from './router' 

# export default =>
  # r = await routers()
  # r = routers()
  # cors() router.apply null, r

export default cors() router.apply null, routers()

