# Velocity Obstacles with MTT-GNN algorithm

Colision detection algorithm which makes use of the GNN node from the MTT package. This node, along with its dependecies were migrated from the lartkv5.

# Installation

This node makes use of the colormap node available on the LARDEMUA repository. The ShortTermPath also makes use of the canReceiveAndUpdateStatus node available on the ATLASCAR2RemoteControl package on the same repository. This node was created using the initial version of the canReceiveAndUpdateStatus, recent versions of this node were not tested.

# Usage Instructions

This package contains 3 major nodes: the GNN, the VO and the ShortTermPath.

The GNN node can be executed by itself by runing the following command:

```bash
roslaunch mtt gnn.launch
```

To run the collision detection algorithm (GNN + VO) use:

```bash
roslaunch velocityobstacle vo.launch show:=1
```
The "show:=1" initializes Rviz with all the information needed already subscribed to. If the Rviz is not needed use "show:=0"

To initialize only the Rviz run:
```bash
roslaunch velocityobstacle view_vcones.launch
```

To start the ShortTermPath run:
```bash
rosrun velocityobstacle ShortTermPath.py
```

# Credits

Author Name  | Email
------------- | -------------
Rui Costa | ruipcosta@ua.pt
Jorge Almeida | almeida.j@ua.pt
