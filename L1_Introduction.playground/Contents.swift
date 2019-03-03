import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let torus = SCNNode() //生成圆环面
torus.geometry = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
torus.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
torus.geometry?.firstMaterial?.specular.contents = UIColor.white
scene.rootNode.addChildNode(torus)


let action = SCNAction.rotate(by: 90 * CGFloat(Double.pi/180.0), around: SCNVector3(1, 0, 0), duration: 10)
torus.runAction(action)
