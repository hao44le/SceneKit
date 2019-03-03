import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let path = UIBezierPath()
path.move(to: CGPoint(x: 0, y: 0))
path.addLine(to: CGPoint(x: 1, y: 1))
path.addLine(to: CGPoint(x: 2, y: 0))
path.close()

let shape = SCNShape(path: path, extrusionDepth: 0.2)

let tube = SCNTube(innerRadius:0.1, outerRadius:1, height:0.1)

let node = SCNNode()
node.geometry = shape
node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
node.geometry?.firstMaterial?.specular.contents = UIColor.white
node.geometry?.firstMaterial?.isDoubleSided = true
scene.rootNode.addChildNode(node)


let action = SCNAction.rotate(by: 90 * CGFloat(Double.pi/180.0), around: SCNVector3(1, 0, 0), duration: 10)
let repeaAction = SCNAction.repeatForever(action)
node.runAction(repeaAction)
