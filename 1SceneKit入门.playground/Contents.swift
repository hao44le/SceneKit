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

let torus = SCNNode() //4.声明 圆环面
torus.geometry = SCNTorus(ringRadius: 2, pipeRadius: 1)
torus.geometry?.firstMaterial?.diffuse.contents = UIColor.lightGray
scene.rootNode.addChildNode(torus)

// 5. 给圆环面 加入一些动画
let action = SCNAction.rotate(by: -90 * CGFloat(Double.pi/180.0), around: SCNVector3(1, 1, 1), duration: 9)
torus.runAction(action)
