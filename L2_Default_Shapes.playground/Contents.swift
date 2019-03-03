import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let box = SCNBox(width:1, height:2, length:1, chamferRadius:0.0) //长方体
let capsule = SCNCapsule(capRadius:0.5, height:2) //太空舱、胶囊
let cone = SCNCone(topRadius:0.5, bottomRadius:1, height:2) //圆锥体
let cylinder = SCNCylinder(radius:1, height:10) //圆筒
let plane = SCNPlane(width:1, height:1) //水平面
let pyramid = SCNPyramid(width:1, height:1, length:1) //金字塔
let sphere = SCNSphere(radius:1) //球体
let text = SCNText(string:"Hello", extrusionDepth:10) //文字
let torus = SCNTorus(ringRadius:1, pipeRadius:0.5) //圆环面
let tube = SCNTube(innerRadius:0.1, outerRadius:1, height:0.1) //电子管道

let node = SCNNode()
node.geometry = plane
node.geometry?.firstMaterial?.diffuse.contents = UIColor.green
node.geometry?.firstMaterial?.specular.contents = UIColor.blue
scene.rootNode.addChildNode(node)


let action = SCNAction.rotate(by: 180 * CGFloat(Double.pi/180.0), around: SCNVector3(0, 1, 0), duration: 10)
node.runAction(action)
