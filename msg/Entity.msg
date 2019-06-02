# Identification of the object
time lastUpdateTime                     # TODO: Documentation
float64 probability                     # TODO: Documentation
int64 ID                                # TODO: Documentation
int32 wonderlandId                      # Id of the entity in Wonderland
string[] aliases                        # TODO: Documentation

# Description of the object:
string name                             # Recognition name of the object (e.g. Apple / Person / Pen / ...)
string category                         # Category of the object (e.g. Food / Tools / ...)
string color                            # The verbal color of the object

# Physical description of the object:
float64 weight                          # The weight of the object (For GPSR and SPR)
float64 size                            # The size of the object (For GPSR and SPR)

# Location of the object
geometry_msgs/Point position            # Localisation in space of the object
geometry_msgs/Pose2D waypoint           # Most accurate pose to reach for obtain the object
geometry_msgs/Point velocity            # Actual velocity of the object
int32 containerId                       # Id of the entity were this is contained in Wonderland
sensor_msgs/PointCloud2 pointcloud      # Pointcloud of the object for grasping detection
sara_msgs/BoundingBox3D BoundingBox     # Bounding box representing the object

# Description of an human
sara_msgs/FaceMsg face
string pose
float64 poseProbability
bool isOperator