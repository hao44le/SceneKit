import UIKit
import SceneKit
import PlaygroundSupport
//1.载入所需要的库

//2.声明我们的SceneView
let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene() //场景
sceneView.scene = scene
sceneView.backgroundColor = UIColor.green
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView
//3.SceneView加入到PlayGround

let node = SCNNode() //4.加入图案

let torus = SCNTorus(ringRadius: 2, pipeRadius: 1)
let box = SCNBox(width: 2, height: 1, length: 1, chamferRadius: 0)

//圆环面
node.geometry = box
node.geometry?.firstMaterial?.diffuse.contents = UIColor.lightGray
scene.rootNode.addChildNode(node)



// 5. 给圆环面 加入一些动画
let action = SCNAction.rotate(by: 180 * CGFloat(Double.pi/180.0), around: SCNVector3(0, 1, 0), duration: 9)
node.runAction(action)
