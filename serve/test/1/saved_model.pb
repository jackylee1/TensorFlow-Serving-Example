ЗХ
у╝
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.5.02v1.5.0-0-g37aa430d84ис
i
inputsPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
j
targetsPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *:═┐*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
х
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
╥
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
б
dense/kernel
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container *
shape
:
╟
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
u
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
И
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Х

dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias
▓
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
Й
dense/MatMulMatMulinputsdense/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
А
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:         *
T0
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌╛*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌>*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ы
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ш
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
┌
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
е
dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
╧
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
М
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
Щ
dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
С
dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
W
dense_2/ReluReludense_2/BiasAdd*'
_output_shapes
:         *
T0
й
2prediction/kernel/Initializer/random_uniform/shapeConst*
valueB"      *$
_class
loc:@prediction/kernel*
dtype0*
_output_shapes
:
Ы
0prediction/kernel/Initializer/random_uniform/minConst*
valueB
 *0┐*$
_class
loc:@prediction/kernel*
dtype0*
_output_shapes
: 
Ы
0prediction/kernel/Initializer/random_uniform/maxConst*
valueB
 *0?*$
_class
loc:@prediction/kernel*
dtype0*
_output_shapes
: 
Ї
:prediction/kernel/Initializer/random_uniform/RandomUniformRandomUniform2prediction/kernel/Initializer/random_uniform/shape*

seed *
T0*$
_class
loc:@prediction/kernel*
seed2 *
dtype0*
_output_shapes

:
т
0prediction/kernel/Initializer/random_uniform/subSub0prediction/kernel/Initializer/random_uniform/max0prediction/kernel/Initializer/random_uniform/min*$
_class
loc:@prediction/kernel*
_output_shapes
: *
T0
Ї
0prediction/kernel/Initializer/random_uniform/mulMul:prediction/kernel/Initializer/random_uniform/RandomUniform0prediction/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@prediction/kernel*
_output_shapes

:
ц
,prediction/kernel/Initializer/random_uniformAdd0prediction/kernel/Initializer/random_uniform/mul0prediction/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*$
_class
loc:@prediction/kernel
л
prediction/kernel
VariableV2*
shared_name *$
_class
loc:@prediction/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
█
prediction/kernel/AssignAssignprediction/kernel,prediction/kernel/Initializer/random_uniform*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
Д
prediction/kernel/readIdentityprediction/kernel*
T0*$
_class
loc:@prediction/kernel*
_output_shapes

:
Т
!prediction/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@prediction/bias*
dtype0
Я
prediction/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@prediction/bias*
	container 
╞
prediction/bias/AssignAssignprediction/bias!prediction/bias/Initializer/zeros*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
z
prediction/bias/readIdentityprediction/bias*
T0*"
_class
loc:@prediction/bias*
_output_shapes
:
Щ
prediction/MatMulMatMuldense_2/Reluprediction/kernel/read*'
_output_shapes
:         *
transpose_a( *
transpose_b( *
T0
П
prediction/BiasAddBiasAddprediction/MatMulprediction/bias/read*
data_formatNHWC*'
_output_shapes
:         *
T0
c
prediction/SigmoidSigmoidprediction/BiasAdd*'
_output_shapes
:         *
T0
u
SquaredDifferenceSquaredDifferencetargetsprediction/Sigmoid*
T0*'
_output_shapes
:         
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
d
lossMeanSquaredDifferenceConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
r
!gradients/loss_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Р
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
j
gradients/loss_grad/ShapeShapeSquaredDifference*
T0*
out_type0*
_output_shapes
:
Ь
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*'
_output_shapes
:         *

Tmultiples0*
T0
l
gradients/loss_grad/Shape_1ShapeSquaredDifference*
out_type0*
_output_shapes
:*
T0
^
gradients/loss_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/loss_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/loss_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ъ
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
_
gradients/loss_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
В
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
_output_shapes
: *
T0
А
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
_output_shapes
: *
T0
n
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
М
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*'
_output_shapes
:         
m
&gradients/SquaredDifference_grad/ShapeShapetargets*
out_type0*
_output_shapes
:*
T0
z
(gradients/SquaredDifference_grad/Shape_1Shapeprediction/Sigmoid*
out_type0*
_output_shapes
:*
T0
▐
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*2
_output_shapes 
:         :         *
T0
К
'gradients/SquaredDifference_grad/scalarConst^gradients/loss_grad/truediv*
_output_shapes
: *
valueB
 *   @*
dtype0
г
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/loss_grad/truediv*
T0*'
_output_shapes
:         
Ш
$gradients/SquaredDifference_grad/subSubtargetsprediction/Sigmoid^gradients/loss_grad/truediv*'
_output_shapes
:         *
T0
л
&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0*'
_output_shapes
:         
╦
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
┴
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
╧
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
╟
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*'
_output_shapes
:         *
T0*
Tshape0
Й
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:         
Л
1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
Т
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape*'
_output_shapes
:         *
T0
М
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:         *
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
┐
-gradients/prediction/Sigmoid_grad/SigmoidGradSigmoidGradprediction/Sigmoid;gradients/SquaredDifference_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:         
з
-gradients/prediction/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/prediction/Sigmoid_grad/SigmoidGrad*
data_formatNHWC*
_output_shapes
:*
T0
Ъ
2gradients/prediction/BiasAdd_grad/tuple/group_depsNoOp.^gradients/prediction/Sigmoid_grad/SigmoidGrad.^gradients/prediction/BiasAdd_grad/BiasAddGrad
Ю
:gradients/prediction/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/prediction/Sigmoid_grad/SigmoidGrad3^gradients/prediction/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/prediction/Sigmoid_grad/SigmoidGrad*'
_output_shapes
:         
У
<gradients/prediction/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/prediction/BiasAdd_grad/BiasAddGrad3^gradients/prediction/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*@
_class6
42loc:@gradients/prediction/BiasAdd_grad/BiasAddGrad
▌
'gradients/prediction/MatMul_grad/MatMulMatMul:gradients/prediction/BiasAdd_grad/tuple/control_dependencyprediction/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b(
╠
)gradients/prediction/MatMul_grad/MatMul_1MatMuldense_2/Relu:gradients/prediction/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
П
1gradients/prediction/MatMul_grad/tuple/group_depsNoOp(^gradients/prediction/MatMul_grad/MatMul*^gradients/prediction/MatMul_grad/MatMul_1
Р
9gradients/prediction/MatMul_grad/tuple/control_dependencyIdentity'gradients/prediction/MatMul_grad/MatMul2^gradients/prediction/MatMul_grad/tuple/group_deps*'
_output_shapes
:         *
T0*:
_class0
.,loc:@gradients/prediction/MatMul_grad/MatMul
Н
;gradients/prediction/MatMul_grad/tuple/control_dependency_1Identity)gradients/prediction/MatMul_grad/MatMul_12^gradients/prediction/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/prediction/MatMul_grad/MatMul_1*
_output_shapes

:
л
$gradients/dense_2/Relu_grad/ReluGradReluGrad9gradients/prediction/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0*'
_output_shapes
:         
Ы
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
Л
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_2/Relu_grad/ReluGrad+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ж
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Relu_grad/ReluGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Relu_grad/ReluGrad*'
_output_shapes
:         
З
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
╘
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b(
─
&gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/Relu7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
Ж
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Д
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         
Б
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:
д
"gradients/dense/Relu_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*'
_output_shapes
:         
Ч
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0
Е
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp#^gradients/dense/Relu_grad/ReluGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
■
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Relu_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         *
T0*5
_class+
)'loc:@gradients/dense/Relu_grad/ReluGrad
 
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
╬
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*'
_output_shapes
:         *
transpose_a( *
transpose_b(*
T0
╝
$gradients/dense/MatMul_grad/MatMul_1MatMulinputs5gradients/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
А
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
№
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:         *
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
∙
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes

:
}
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
О
beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@dense/bias
н
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
i
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@dense/bias
}
beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
О
beta2_power
VariableV2*
_output_shapes
: *
shared_name *
_class
loc:@dense/bias*
	container *
shape: *
dtype0
н
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
i
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*
_class
loc:@dense/bias
Щ
#dense/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *
_class
loc:@dense/kernel
ж
dense/kernel/Adam
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container 
═
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

dense/kernel/Adam/readIdentitydense/kernel/Adam*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
Ы
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
и
dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container *
shape
:
╙
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@dense/kernel
Г
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
Н
!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ъ
dense/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
┴
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
u
dense/bias/Adam/readIdentitydense/bias/Adam*
_class
loc:@dense/bias*
_output_shapes
:*
T0
П
#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ь
dense/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╟
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
y
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@dense/bias
Э
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
к
dense_1/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
╒
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
Е
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
Я
'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
м
dense_1/kernel/Adam_1
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
█
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
Й
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
С
#dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
Ю
dense_1/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╔
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
{
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
У
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
а
dense_1/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense_1/bias*
	container 
╧
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(

dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@dense_1/bias
г
(prediction/kernel/Adam/Initializer/zerosConst*
valueB*    *$
_class
loc:@prediction/kernel*
dtype0*
_output_shapes

:
░
prediction/kernel/Adam
VariableV2*
shared_name *$
_class
loc:@prediction/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
с
prediction/kernel/Adam/AssignAssignprediction/kernel/Adam(prediction/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:
О
prediction/kernel/Adam/readIdentityprediction/kernel/Adam*
_output_shapes

:*
T0*$
_class
loc:@prediction/kernel
е
*prediction/kernel/Adam_1/Initializer/zerosConst*
valueB*    *$
_class
loc:@prediction/kernel*
dtype0*
_output_shapes

:
▓
prediction/kernel/Adam_1
VariableV2*
shared_name *$
_class
loc:@prediction/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
ч
prediction/kernel/Adam_1/AssignAssignprediction/kernel/Adam_1*prediction/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@prediction/kernel
Т
prediction/kernel/Adam_1/readIdentityprediction/kernel/Adam_1*
T0*$
_class
loc:@prediction/kernel*
_output_shapes

:
Ч
&prediction/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@prediction/bias*
dtype0
д
prediction/bias/Adam
VariableV2*
shared_name *"
_class
loc:@prediction/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╒
prediction/bias/Adam/AssignAssignprediction/bias/Adam&prediction/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@prediction/bias
Д
prediction/bias/Adam/readIdentityprediction/bias/Adam*
T0*"
_class
loc:@prediction/bias*
_output_shapes
:
Щ
(prediction/bias/Adam_1/Initializer/zerosConst*
valueB*    *"
_class
loc:@prediction/bias*
dtype0*
_output_shapes
:
ж
prediction/bias/Adam_1
VariableV2*"
_class
loc:@prediction/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
█
prediction/bias/Adam_1/AssignAssignprediction/bias/Adam_1(prediction/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:
И
prediction/bias/Adam_1/readIdentityprediction/bias/Adam_1*
T0*"
_class
loc:@prediction/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *
╫#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
ь
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes

:
▀
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes
:
°
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( *
_output_shapes

:
ы
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_1/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
К
'Adam/update_prediction/kernel/ApplyAdam	ApplyAdamprediction/kernelprediction/kernel/Adamprediction/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/prediction/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@prediction/kernel*
use_nesterov( *
_output_shapes

:
¤
%Adam/update_prediction/bias/ApplyAdam	ApplyAdamprediction/biasprediction/bias/Adamprediction/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/prediction/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@prediction/bias
╙
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam(^Adam/update_prediction/kernel/ApplyAdam&^Adam/update_prediction/bias/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
Х
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
╒

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam(^Adam/update_prediction/kernel/ApplyAdam&^Adam/update_prediction/bias/ApplyAdam*
_class
loc:@dense/bias*
_output_shapes
: *
T0
Щ
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
Р
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam(^Adam/update_prediction/kernel/ApplyAdam&^Adam/update_prediction/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
в
initNoOp^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^prediction/kernel/Assign^prediction/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^prediction/kernel/Adam/Assign ^prediction/kernel/Adam_1/Assign^prediction/bias/Adam/Assign^prediction/bias/Adam_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
╪
save/SaveV2/tensor_namesConst*Л
valueБB■Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bprediction/biasBprediction/bias/AdamBprediction/bias/Adam_1Bprediction/kernelBprediction/kernel/AdamBprediction/kernel/Adam_1*
dtype0*
_output_shapes
:
Л
save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
є
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1prediction/biasprediction/bias/Adamprediction/bias/Adam_1prediction/kernelprediction/kernel/Adamprediction/kernel/Adam_1*"
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst* 
valueBBbeta1_power*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ы
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Я
save/Assign_1Assignbeta2_powersave/RestoreV2_1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
p
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
dense/bias
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save/Assign_2Assign
dense/biassave/RestoreV2_2*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
u
save/RestoreV2_3/tensor_namesConst*$
valueBBdense/bias/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
з
save/Assign_3Assigndense/bias/Adamsave/RestoreV2_3*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
w
save/RestoreV2_4/tensor_namesConst*&
valueBBdense/bias/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_4Assigndense/bias/Adam_1save/RestoreV2_4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
r
save/RestoreV2_5/tensor_namesConst*!
valueBBdense/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save/Assign_5Assigndense/kernelsave/RestoreV2_5*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
w
save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdense/kernel/Adam
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save/Assign_6Assigndense/kernel/Adamsave/RestoreV2_6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
y
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBdense/kernel/Adam_1
j
!save/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2_7*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
r
save/RestoreV2_8/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save/Assign_8Assigndense_1/biassave/RestoreV2_8*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
w
save/RestoreV2_9/tensor_namesConst*
_output_shapes
:*&
valueBBdense_1/bias/Adam*
dtype0
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
л
save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2_9*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
z
save/RestoreV2_10/tensor_namesConst*(
valueBBdense_1/bias/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2_10*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
u
save/RestoreV2_11/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save/Assign_11Assigndense_1/kernelsave/RestoreV2_11*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
z
save/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBdense_1/kernel/Adam
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2_12*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
|
save/RestoreV2_13/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
╖
save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2_13*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
v
save/RestoreV2_14/tensor_namesConst*
_output_shapes
:*$
valueBBprediction/bias*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
о
save/Assign_14Assignprediction/biassave/RestoreV2_14*
use_locking(*
T0*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:
{
save/RestoreV2_15/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBprediction/bias/Adam
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save/Assign_15Assignprediction/bias/Adamsave/RestoreV2_15*
use_locking(*
T0*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:
}
save/RestoreV2_16/tensor_namesConst*+
value"B Bprediction/bias/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_16Assignprediction/bias/Adam_1save/RestoreV2_16*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
x
save/RestoreV2_17/tensor_namesConst*&
valueBBprediction/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save/Assign_17Assignprediction/kernelsave/RestoreV2_17*
use_locking(*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:
}
save/RestoreV2_18/tensor_namesConst*
dtype0*
_output_shapes
:*+
value"B Bprediction/kernel/Adam
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save/Assign_18Assignprediction/kernel/Adamsave/RestoreV2_18*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bprediction/kernel/Adam_1
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save/Assign_19Assignprediction/kernel/Adam_1save/RestoreV2_19*
use_locking(*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:
р
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19
д
init_1NoOp^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^prediction/kernel/Assign^prediction/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^prediction/kernel/Adam/Assign ^prediction/kernel/Adam_1/Assign^prediction/bias/Adam/Assign^prediction/bias/Adam_1/Assign
R
save/Const_1Const*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2419f98d62554bb4b64e831e568397bc/part*
dtype0*
_output_shapes
: 
w
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
щ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Л
valueБB■Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bprediction/biasBprediction/bias/AdamBprediction/bias/Adam_1Bprediction/kernelBprediction/kernel/AdamBprediction/kernel/Adam_1
Ь
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Т
save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1prediction/biasprediction/bias/Adamprediction/bias/Adam_1prediction/kernelprediction/kernel/Adamprediction/kernel/Adam_1"/device:CPU:0*"
dtypes
2
д
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
о
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
О
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(
Н
save/IdentityIdentitysave/Const_1^save/control_dependency_1^save/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
r
save/RestoreV2_20/tensor_namesConst* 
valueBBbeta1_power*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_20	RestoreV2save/Const_1save/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
б
save/Assign_20Assignbeta1_powersave/RestoreV2_20*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias
r
save/RestoreV2_21/tensor_namesConst* 
valueBBbeta2_power*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_21	RestoreV2save/Const_1save/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
б
save/Assign_21Assignbeta2_powersave/RestoreV2_21*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
q
save/RestoreV2_22/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_22	RestoreV2save/Const_1save/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_22Assign
dense/biassave/RestoreV2_22*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
v
save/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBdense/bias/Adam
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ы
save/RestoreV2_23	RestoreV2save/Const_1save/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_23Assigndense/bias/Adamsave/RestoreV2_23*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
x
save/RestoreV2_24/tensor_namesConst*&
valueBBdense/bias/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_24	RestoreV2save/Const_1save/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
л
save/Assign_24Assigndense/bias/Adam_1save/RestoreV2_24*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
s
save/RestoreV2_25/tensor_namesConst*
_output_shapes
:*!
valueBBdense/kernel*
dtype0
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_25	RestoreV2save/Const_1save/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_25Assigndense/kernelsave/RestoreV2_25*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
x
save/RestoreV2_26/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdense/kernel/Adam
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_26	RestoreV2save/Const_1save/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_26Assigndense/kernel/Adamsave/RestoreV2_26*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
z
save/RestoreV2_27/tensor_namesConst*(
valueBBdense/kernel/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_27	RestoreV2save/Const_1save/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save/Assign_27Assigndense/kernel/Adam_1save/RestoreV2_27*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
s
save/RestoreV2_28/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ы
save/RestoreV2_28	RestoreV2save/Const_1save/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save/Assign_28Assigndense_1/biassave/RestoreV2_28*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
x
save/RestoreV2_29/tensor_namesConst*&
valueBBdense_1/bias/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_29	RestoreV2save/Const_1save/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save/Assign_29Assigndense_1/bias/Adamsave/RestoreV2_29*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
z
save/RestoreV2_30/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBdense_1/bias/Adam_1
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_30	RestoreV2save/Const_1save/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save/Assign_30Assigndense_1/bias/Adam_1save/RestoreV2_30*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
u
save/RestoreV2_31/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_31	RestoreV2save/Const_1save/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save/Assign_31Assigndense_1/kernelsave/RestoreV2_31*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
z
save/RestoreV2_32/tensor_namesConst*(
valueBBdense_1/kernel/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_32/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ы
save/RestoreV2_32	RestoreV2save/Const_1save/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_32Assigndense_1/kernel/Adamsave/RestoreV2_32*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
|
save/RestoreV2_33/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ы
save/RestoreV2_33	RestoreV2save/Const_1save/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
╖
save/Assign_33Assigndense_1/kernel/Adam_1save/RestoreV2_33*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
v
save/RestoreV2_34/tensor_namesConst*
_output_shapes
:*$
valueBBprediction/bias*
dtype0
k
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_34	RestoreV2save/Const_1save/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
о
save/Assign_34Assignprediction/biassave/RestoreV2_34*
T0*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:*
use_locking(
{
save/RestoreV2_35/tensor_namesConst*)
value BBprediction/bias/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_35	RestoreV2save/Const_1save/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
│
save/Assign_35Assignprediction/bias/Adamsave/RestoreV2_35*
use_locking(*
T0*"
_class
loc:@prediction/bias*
validate_shape(*
_output_shapes
:
}
save/RestoreV2_36/tensor_namesConst*+
value"B Bprediction/bias/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_36	RestoreV2save/Const_1save/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_36Assignprediction/bias/Adam_1save/RestoreV2_36*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@prediction/bias
x
save/RestoreV2_37/tensor_namesConst*
_output_shapes
:*&
valueBBprediction/kernel*
dtype0
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_37	RestoreV2save/Const_1save/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save/Assign_37Assignprediction/kernelsave/RestoreV2_37*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
}
save/RestoreV2_38/tensor_namesConst*
_output_shapes
:*+
value"B Bprediction/kernel/Adam*
dtype0
k
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_38	RestoreV2save/Const_1save/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save/Assign_38Assignprediction/kernel/Adamsave/RestoreV2_38*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_39/tensor_namesConst*-
value$B"Bprediction/kernel/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ы
save/RestoreV2_39	RestoreV2save/Const_1save/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save/Assign_39Assignprediction/kernel/Adam_1save/RestoreV2_39*
use_locking(*
T0*$
_class
loc:@prediction/kernel*
validate_shape(*
_output_shapes

:
ю
save/restore_shardNoOp^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39
/
save/restore_all_1NoOp^save/restore_shard"@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"К
trainable_variablesЄя
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
y
prediction/kernel:0prediction/kernel/Assignprediction/kernel/read:02.prediction/kernel/Initializer/random_uniform:0
h
prediction/bias:0prediction/bias/Assignprediction/bias/read:02#prediction/bias/Initializer/zeros:0"
train_op

Adam"°
	variablesъч
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
y
prediction/kernel:0prediction/kernel/Assignprediction/kernel/read:02.prediction/kernel/Initializer/random_uniform:0
h
prediction/bias:0prediction/bias/Assignprediction/bias/read:02#prediction/bias/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0
x
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assigndense_1/kernel/Adam/read:02'dense_1/kernel/Adam/Initializer/zeros:0
А
dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assigndense_1/kernel/Adam_1/read:02)dense_1/kernel/Adam_1/Initializer/zeros:0
p
dense_1/bias/Adam:0dense_1/bias/Adam/Assigndense_1/bias/Adam/read:02%dense_1/bias/Adam/Initializer/zeros:0
x
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assigndense_1/bias/Adam_1/read:02'dense_1/bias/Adam_1/Initializer/zeros:0
Д
prediction/kernel/Adam:0prediction/kernel/Adam/Assignprediction/kernel/Adam/read:02*prediction/kernel/Adam/Initializer/zeros:0
М
prediction/kernel/Adam_1:0prediction/kernel/Adam_1/Assignprediction/kernel/Adam_1/read:02,prediction/kernel/Adam_1/Initializer/zeros:0
|
prediction/bias/Adam:0prediction/bias/Adam/Assignprediction/bias/Adam/read:02(prediction/bias/Adam/Initializer/zeros:0
Д
prediction/bias/Adam_1:0prediction/bias/Adam_1/Assignprediction/bias/Adam_1/read:02*prediction/bias/Adam_1/Initializer/zeros:0*Т
serving_default
)
inputs
inputs:0         6
outputs+
prediction/Sigmoid:0         tensorflow/serving/predict