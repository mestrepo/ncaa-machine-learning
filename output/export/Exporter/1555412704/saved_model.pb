Єн
ц*Л*
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-0-ga6d8ffae098ан

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_output_shapes
: *
_class
loc:@global_step*
shape: *
dtype0	

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
A
PlaceholderPlaceholder*
dtype0	*
_output_shapes
:
C
Placeholder_1Placeholder*
dtype0*
_output_shapes
:
C
Placeholder_2Placeholder*
dtype0	*
_output_shapes
:
C
Placeholder_3Placeholder*
dtype0*
_output_shapes
:
Y
ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
X

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
_output_shapes
:*
T0	
[
ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
^
ExpandDims_1
ExpandDimsPlaceholder_1ExpandDims_1/dim*
T0*
_output_shapes
:
[
ExpandDims_2/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
^
ExpandDims_2
ExpandDimsPlaceholder_2ExpandDims_2/dim*
T0	*
_output_shapes
:
[
ExpandDims_3/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
^
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*
T0*
_output_shapes
:
д
=linear/linear_model/opp_ncaa/weights/part_0/Initializer/zerosConst*
valueB	Љ*    *>
_class4
20loc:@linear/linear_model/opp_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
ѓ
+linear/linear_model/opp_ncaa/weights/part_0VarHandleOp*<
shared_name-+linear/linear_model/opp_ncaa/weights/part_0*>
_class4
20loc:@linear/linear_model/opp_ncaa/weights/part_0*
shape:	Љ*
dtype0*
_output_shapes
: 
Ї
Llinear/linear_model/opp_ncaa/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/opp_ncaa/weights/part_0*
_output_shapes
: 
џ
2linear/linear_model/opp_ncaa/weights/part_0/AssignAssignVariableOp+linear/linear_model/opp_ncaa/weights/part_0=linear/linear_model/opp_ncaa/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/opp_ncaa/weights/part_0*
dtype0
ь
?linear/linear_model/opp_ncaa/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/opp_ncaa/weights/part_0*>
_class4
20loc:@linear/linear_model/opp_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
e
.linear/linear_model/linear_model/opp_ncaa/RankRankExpandDims_3*
_output_shapes
: *
T0

?linear/linear_model/linear_model/opp_ncaa/assert_positive/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Jlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/LessLess?linear/linear_model/linear_model/opp_ncaa/assert_positive/Const.linear/linear_model/linear_model/opp_ncaa/Rank*
T0*
_output_shapes
: 

Klinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/ConstConst*
valueB *
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/AllAllJlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/LessKlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Const*
_output_shapes
: 
ь
Rlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/ConstConst*
dtype0*
_output_shapes
: *j
valueaB_ BYFeature (key: opp_ncaa) cannot have rank 0. Given: Tensor("ExpandDims_3:0", dtype=string)
П
Tlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Const_1Const*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
Ь
Tlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Const_2Const*H
value?B= B7x (linear/linear_model/linear_model/opp_ncaa/Rank:0) = *
dtype0*
_output_shapes
: 
є
Zlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_0Const*j
valueaB_ BYFeature (key: opp_ncaa) cannot have rank 0. Given: Tensor("ExpandDims_3:0", dtype=string)*
dtype0*
_output_shapes
: 
Х
Zlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_1Const*
dtype0*
_output_shapes
: *;
value2B0 B*Condition x > 0 did not hold element-wise:
в
Zlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_2Const*H
value?B= B7x (linear/linear_model/linear_model/opp_ncaa/Rank:0) = *
dtype0*
_output_shapes
: 
ћ
Slinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/AssertAssertIlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/AllZlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_0Zlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_1Zlinear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert/data_2.linear/linear_model/linear_model/opp_ncaa/Rank*
T
2
Н
0linear/linear_model/linear_model/opp_ncaa/Rank_1RankExpandDims_3T^linear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert*
_output_shapes
: *
T0
Щ
1linear/linear_model/linear_model/opp_ncaa/Equal/xConstT^linear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
О
/linear/linear_model/linear_model/opp_ncaa/EqualEqual1linear/linear_model/linear_model/opp_ncaa/Equal/x0linear/linear_model/linear_model/opp_ncaa/Rank_1*
_output_shapes
: *
T0
Ф
5linear/linear_model/linear_model/opp_ncaa/cond/SwitchSwitch/linear/linear_model/linear_model/opp_ncaa/Equal/linear/linear_model/linear_model/opp_ncaa/Equal*
T0
*
_output_shapes
: : 

7linear/linear_model/linear_model/opp_ncaa/cond/switch_tIdentity7linear/linear_model/linear_model/opp_ncaa/cond/Switch:1*
T0
*
_output_shapes
: 

7linear/linear_model/linear_model/opp_ncaa/cond/switch_fIdentity5linear/linear_model/linear_model/opp_ncaa/cond/Switch*
T0
*
_output_shapes
: 

6linear/linear_model/linear_model/opp_ncaa/cond/pred_idIdentity/linear/linear_model/linear_model/opp_ncaa/Equal*
_output_shapes
: *
T0


=linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/dimConstT^linear/linear_model/linear_model/opp_ncaa/assert_positive/assert_less/Assert/Assert8^linear/linear_model/linear_model/opp_ncaa/cond/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
э
9linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims
ExpandDimsBlinear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/Switch:1=linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/dim*
T0*
_output_shapes
:
и
@linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/SwitchSwitchExpandDims_36linear/linear_model/linear_model/opp_ncaa/cond/pred_id*
T0*
_class
loc:@ExpandDims_3*
_output_shapes

::
Я
7linear/linear_model/linear_model/opp_ncaa/cond/Switch_1SwitchExpandDims_36linear/linear_model/linear_model/opp_ncaa/cond/pred_id*
_class
loc:@ExpandDims_3*
_output_shapes

::*
T0
п
4linear/linear_model/linear_model/opp_ncaa/cond/MergeMerge7linear/linear_model/linear_model/opp_ncaa/cond/Switch_19linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims*
_output_shapes
:: *
T0*
N

Hlinear/linear_model/linear_model/opp_ncaa/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
ё
Blinear/linear_model/linear_model/opp_ncaa/to_sparse_input/NotEqualNotEqual4linear/linear_model/linear_model/opp_ncaa/cond/MergeHlinear/linear_model/linear_model/opp_ncaa/to_sparse_input/ignore_value/x*
T0*
_output_shapes
:
Р
Alinear/linear_model/linear_model/opp_ncaa/to_sparse_input/indicesWhereBlinear/linear_model/linear_model/opp_ncaa/to_sparse_input/NotEqual*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ў
@linear/linear_model/linear_model/opp_ncaa/to_sparse_input/valuesGatherNd4linear/linear_model/linear_model/opp_ncaa/cond/MergeAlinear/linear_model/linear_model/opp_ncaa/to_sparse_input/indices*
Tindices0	*
Tparams0*
_output_shapes
:
Т
Elinear/linear_model/linear_model/opp_ncaa/to_sparse_input/dense_shapeShape4linear/linear_model/linear_model/opp_ncaa/cond/Merge*
out_type0	*#
_output_shapes
:џџџџџџџџџ*
T0

?linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/ConstConst*
valueBЉBBoston CollegeBGeorgia TechBGeorge WashingtonBKansasBMarylandB
Notre DameBKentuckyBAlabamaBArkansasBAuburnBBaylorBButlerB
CaliforniaB
CincinnatiBCornellBDaytonBDePaulBEastern Mich.BFloridaBFlorida St.BGeorge MasonBIllinoisBIndianaBIowa St.BJames MadisonB
Kansas St.BLa SalleB
LouisvilleBLSUBMemphisB
Miami (FL)BMt. St. Mary'sBMichigan St.BOld DominionBOhio St.BPacificBPenn St.BPurdueBSFABSienaBSouthern Ill.BSt. John's (NY)BSaint LouisBSMUBSyracuseBTCUBTempleBTexasB
Texas TechBGeorgiaBNorth CarolinaBUNIB
New MexicoBRhode IslandBSouthern CaliforniaBUtah St.BVirginiaB
VanderbiltB	WisconsinBWestern Ky.BWashington St.BWest VirginiaBXavierB	CharlotteBClemsonBCleveland St.BColoradoBUConnB
Coppin St.BDukeBFGCUBGonzagaB
GeorgetownB
Seton HallBHarvardBIowaBSaint Joseph'sBLoyola ChicagoB	MarquetteBMassachusettsBMichiganB	MinnesotaBMissouriBMissouri St.BMississippi St.BNavyBNC StateBNew Mexico St.BNorthwestern St.BOklahomaBOklahoma St.BPennB
PepperdineB
PittsburghB	PrincetonB
ProvidenceBRichmondBSouth CarolinaBStanfordB	TennesseeBTulsaB	Texas A&MBUCLABUTSAB	VillanovaBWake ForestB
WashingtonBNorthwesternBVirginia TechBArizona St.BBYUBDavidsonBMiddle Tenn.BNevadaBOregonBRobert MorrisBSaint Mary's (CA)BUABB	LouisianaBNew OrleansB
South Fla.BVermontBVCUBAlbany (NY)BArizonaBArk.-Pine BluffBBradleyBBucknellBChattanoogaBCol. of CharlestonB	CreightonB
EvansvilleBGeorgia St.BHamptonBIllinois St.BKent St.B
Miami (OH)B	MilwaukeeBOle MissB
Murray St.BOhioBAustin PeayBSan Diego St.BLittle RockBUNC AshevilleBUNLVBUtahBUTEPBCal PolyBLouisiana TechBColorado St.BDetroit MercyBHawaiiBLehighB	ManhattanBMercerBUC DavisBWinthropBWestern Mich.BBall St.BMonmouthBMontanaBMorehead St.BN.C. A&TBTulaneBUC Santa BarbaraBUNCWB
ValparaisoBWichita St.B	Green BayB
Holy CrossBCentral Mich.BLoyola MarymountBOaklandBSanta ClaraBSouthern U.B
South Ala.B	San DiegoB	Weber St.BWyomingBDrexelBETSUBFlorida A&MB
Fresno St.BIndiana St.BNorth Dakota St.BNiagaraBNorfolk St.BYaleBSouthern UtahBStony BrookB	Boise St.BSt. BonaventureBNortheasternBN.C. CentralBLIU BrooklynBSouthern Miss.B	UC IrvineBIonaB	LafayetteBDelawareBLoyola MarylandBAlcornBBrownBGa. SouthernBMarshallBNorthern Ill.BLibertyBEastern Ky.B	FairfieldBEast CarolinaB	Air ForceBBelmontBCoastal Caro.BWoffordBOral RobertsB
Morgan St.BPortland St.BIll.-ChicagoBFairleigh DickinsonBRiderB	Boston U.BSouth Carolina St.BCampbellBTroyBLamar UniversityBMississippi Val.B
BinghamtonBAlabama St.BRutgersBSaint Peter'sBUCFBFordhamBNebraskaBHofstraBAmericanBJackson St.BHoustonBTennessee St.BSan Jose St.BSam Houston St.BNorthern Ariz.BEastern Ill.B
Wright St.BNorth TexasBAppalachian St.BCentral Conn. St.B
La.-MonroeBNorth FloridaBJacksonvilleBRadfordBAkronBCal St. FullertonBNorth DakotaBNicholls St.BTexas SouthernB
Oregon St.BSouth Dakota St.BEastern Wash.BUMBCBMcNeeseBTowsonBSoutheastern La.BNorthern Colo.BUNCGBLong Beach St.BFIUBIdahoBArkansas St.BSan FranciscoBCanisiusBPortlandBMaristBPrairie ViewBCSUNBColgateBHowardBIUPUIBFla. AtlanticBJacksonville St.BUT ArlingtonBBuffaloBSamfordBA&M-Corpus ChristiBDelaware St.B	Texas St.BWagnerBCharleston So.BNorthern Ky.BSoutheast Mo. St.BAlabama A&MBWestern Caro.BMontana St.BDrakeBSaint Francis (PA)BCSU BakersfieldB	Idaho St.*
dtype0*
_output_shapes	
:Љ

>linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/SizeConst*
value
B :Љ*
dtype0*
_output_shapes
: 

Elinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

Elinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Г
?linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/rangeRangeElinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/range/start>linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/SizeElinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/range/delta*
_output_shapes	
:Љ
П
Alinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/ToInt64Cast?linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/range*

DstT0	*
_output_shapes	
:Љ*

SrcT0

Dlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0

Jlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ч
Olinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table/table_initLookupTableImportV2Dlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table?linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/ConstAlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/ToInt64*	
Tin0*

Tout0	
е
;linear/linear_model/linear_model/opp_ncaa/hash_table_LookupLookupTableFindV2Dlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table@linear/linear_model/linear_model/opp_ncaa/to_sparse_input/valuesJlinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table/Const*	
Tin0*
_output_shapes
:*

Tout0	
Р
4linear/linear_model/linear_model/opp_ncaa/Shape/CastCastElinear/linear_model/linear_model/opp_ncaa/to_sparse_input/dense_shape*

SrcT0	*

DstT0*#
_output_shapes
:џџџџџџџџџ

=linear/linear_model/linear_model/opp_ncaa/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

?linear/linear_model/linear_model/opp_ncaa/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

?linear/linear_model/linear_model/opp_ncaa/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

7linear/linear_model/linear_model/opp_ncaa/strided_sliceStridedSlice4linear/linear_model/linear_model/opp_ncaa/Shape/Cast=linear/linear_model/linear_model/opp_ncaa/strided_slice/stack?linear/linear_model/linear_model/opp_ncaa/strided_slice/stack_1?linear/linear_model/linear_model/opp_ncaa/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
}
2linear/linear_model/linear_model/opp_ncaa/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
г
0linear/linear_model/linear_model/opp_ncaa/Cast/xPack7linear/linear_model/linear_model/opp_ncaa/strided_slice2linear/linear_model/linear_model/opp_ncaa/Cast/x/1*
T0*
N*
_output_shapes
:

.linear/linear_model/linear_model/opp_ncaa/CastCast0linear/linear_model/linear_model/opp_ncaa/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
Б
7linear/linear_model/linear_model/opp_ncaa/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/opp_ncaa/to_sparse_input/indicesElinear/linear_model/linear_model/opp_ncaa/to_sparse_input/dense_shape.linear/linear_model/linear_model/opp_ncaa/Cast*-
_output_shapes
:џџџџџџџџџ:
Ќ
@linear/linear_model/linear_model/opp_ncaa/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/opp_ncaa/hash_table_Lookup*
_output_shapes
:*
T0	
Ѕ
8linear/linear_model/linear_model/opp_ncaa/ReadVariableOpReadVariableOp+linear/linear_model/opp_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ

Blinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Й
<linear/linear_model/linear_model/opp_ncaa/weighted_sum/SliceSlice9linear/linear_model/linear_model/opp_ncaa/SparseReshape:1Blinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice/beginAlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:

<linear/linear_model/linear_model/opp_ncaa/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
р
;linear/linear_model/linear_model/opp_ncaa/weighted_sum/ProdProd<linear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice<linear/linear_model/linear_model/opp_ncaa/weighted_sum/Const*
_output_shapes
: *
T0	

Glinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
й
?linear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2GatherV29linear/linear_model/linear_model/opp_ncaa/SparseReshape:1Glinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2/indicesDlinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
ё
=linear/linear_model/linear_model/opp_ncaa/weighted_sum/Cast/xPack;linear/linear_model/linear_model/opp_ncaa/weighted_sum/Prod?linear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
З
Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshapeSparseReshape7linear/linear_model/linear_model/opp_ncaa/SparseReshape9linear/linear_model/linear_model/opp_ncaa/SparseReshape:1=linear/linear_model/linear_model/opp_ncaa/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
О
Mlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshape/IdentityIdentity@linear/linear_model/linear_model/opp_ncaa/SparseReshape/Identity*
_output_shapes
:*
T0	

Elinear/linear_model/linear_model/opp_ncaa/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Clinear/linear_model/linear_model/opp_ncaa/weighted_sum/GreaterEqualGreaterEqualMlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshape/IdentityElinear/linear_model/linear_model/opp_ncaa/weighted_sum/GreaterEqual/y*
_output_shapes
:*
T0	
М
<linear/linear_model/linear_model/opp_ncaa/weighted_sum/WhereWhereClinear/linear_model/linear_model/opp_ncaa/weighted_sum/GreaterEqual*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ћ
>linear/linear_model/linear_model/opp_ncaa/weighted_sum/ReshapeReshape<linear/linear_model/linear_model/opp_ncaa/weighted_sum/WhereDlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
№
Alinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_1GatherV2Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshape>linear/linear_model/linear_model/opp_ncaa/weighted_sum/ReshapeFlinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

Flinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ъ
Alinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_2GatherV2Mlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshape/Identity>linear/linear_model/linear_model/opp_ncaa/weighted_sum/ReshapeFlinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*
_output_shapes
:
И
?linear/linear_model/linear_model/opp_ncaa/weighted_sum/IdentityIdentityFlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

Plinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
э
^linear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsAlinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_1Alinear/linear_model/linear_model/opp_ncaa/weighted_sum/GatherV2_2?linear/linear_model/linear_model/opp_ncaa/weighted_sum/IdentityPlinear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Г
blinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Е
dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Е
dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ё
\linear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice^linear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsblinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stackdlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask
і
Slinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/CastCast\linear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0	
ў
Ulinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/UniqueUnique`linear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
ѓ
dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *
value	B : *K
_classA
?=loc:@linear/linear_model/linear_model/opp_ncaa/ReadVariableOp

_linear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV28linear/linear_model/linear_model/opp_ncaa/ReadVariableOpUlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/Uniquedlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0*K
_classA
?=loc:@linear/linear_model/linear_model/opp_ncaa/ReadVariableOp

hlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity_linear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
Nlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparseSparseSegmentSumhlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityWlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/Unique:1Slinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ї
@linear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_1Reshape`linear/linear_model/linear_model/opp_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Flinear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
К
<linear/linear_model/linear_model/opp_ncaa/weighted_sum/ShapeShapeNlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Jlinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_sliceStridedSlice<linear/linear_model/linear_model/opp_ncaa/weighted_sum/ShapeJlinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stackLlinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stack_1Llinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 

>linear/linear_model/linear_model/opp_ncaa/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ј
<linear/linear_model/linear_model/opp_ncaa/weighted_sum/stackPack>linear/linear_model/linear_model/opp_ncaa/weighted_sum/stack/0Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
ў
;linear/linear_model/linear_model/opp_ncaa/weighted_sum/TileTile@linear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_1<linear/linear_model/linear_model/opp_ncaa/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

а
Alinear/linear_model/linear_model/opp_ncaa/weighted_sum/zeros_like	ZerosLikeNlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
Т
6linear/linear_model/linear_model/opp_ncaa/weighted_sumSelect;linear/linear_model/linear_model/opp_ncaa/weighted_sum/TileAlinear/linear_model/linear_model/opp_ncaa/weighted_sum/zeros_likeNlinear/linear_model/linear_model/opp_ncaa/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Д
=linear/linear_model/linear_model/opp_ncaa/weighted_sum/Cast_1Cast9linear/linear_model/linear_model/opp_ncaa/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:

Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Clinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
У
>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1Slice=linear/linear_model/linear_model/opp_ncaa/weighted_sum/Cast_1Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1/beginClinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Є
>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Shape_1Shape6linear/linear_model/linear_model/opp_ncaa/weighted_sum*
T0*
_output_shapes
:

Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Clinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ф
>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2Slice>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Shape_1Dlinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2/beginClinear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:

Blinear/linear_model/linear_model/opp_ncaa/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Л
=linear/linear_model/linear_model/opp_ncaa/weighted_sum/concatConcatV2>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_1>linear/linear_model/linear_model/opp_ncaa/weighted_sum/Slice_2Blinear/linear_model/linear_model/opp_ncaa/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
є
@linear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_2Reshape6linear/linear_model/linear_model/opp_ncaa/weighted_sum=linear/linear_model/linear_model/opp_ncaa/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
в
=linear/linear_model/opp_seed/weights/part_0/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@linear/linear_model/opp_seed/weights/part_0*
dtype0*
_output_shapes

:
ђ
+linear/linear_model/opp_seed/weights/part_0VarHandleOp*<
shared_name-+linear/linear_model/opp_seed/weights/part_0*>
_class4
20loc:@linear/linear_model/opp_seed/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
Ї
Llinear/linear_model/opp_seed/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/opp_seed/weights/part_0*
_output_shapes
: 
џ
2linear/linear_model/opp_seed/weights/part_0/AssignAssignVariableOp+linear/linear_model/opp_seed/weights/part_0=linear/linear_model/opp_seed/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/opp_seed/weights/part_0*
dtype0
ы
?linear/linear_model/opp_seed/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/opp_seed/weights/part_0*
dtype0*
_output_shapes

:*>
_class4
20loc:@linear/linear_model/opp_seed/weights/part_0
e
.linear/linear_model/linear_model/opp_seed/RankRankExpandDims_2*
T0	*
_output_shapes
: 

?linear/linear_model/linear_model/opp_seed/assert_positive/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Jlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/LessLess?linear/linear_model/linear_model/opp_seed/assert_positive/Const.linear/linear_model/linear_model/opp_seed/Rank*
_output_shapes
: *
T0

Klinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/ConstConst*
_output_shapes
: *
valueB *
dtype0

Ilinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/AllAllJlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/LessKlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Const*
_output_shapes
: 
ы
Rlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/ConstConst*i
value`B^ BXFeature (key: opp_seed) cannot have rank 0. Given: Tensor("ExpandDims_2:0", dtype=int64)*
dtype0*
_output_shapes
: 
П
Tlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Const_1Const*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
Ь
Tlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Const_2Const*H
value?B= B7x (linear/linear_model/linear_model/opp_seed/Rank:0) = *
dtype0*
_output_shapes
: 
ѓ
Zlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_0Const*i
value`B^ BXFeature (key: opp_seed) cannot have rank 0. Given: Tensor("ExpandDims_2:0", dtype=int64)*
dtype0*
_output_shapes
: 
Х
Zlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_1Const*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
в
Zlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_2Const*H
value?B= B7x (linear/linear_model/linear_model/opp_seed/Rank:0) = *
dtype0*
_output_shapes
: 
ћ
Slinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/AssertAssertIlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/AllZlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_0Zlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_1Zlinear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert/data_2.linear/linear_model/linear_model/opp_seed/Rank*
T
2
Н
0linear/linear_model/linear_model/opp_seed/Rank_1RankExpandDims_2T^linear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert*
T0	*
_output_shapes
: 
Щ
1linear/linear_model/linear_model/opp_seed/Equal/xConstT^linear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert*
dtype0*
_output_shapes
: *
value	B :
О
/linear/linear_model/linear_model/opp_seed/EqualEqual1linear/linear_model/linear_model/opp_seed/Equal/x0linear/linear_model/linear_model/opp_seed/Rank_1*
T0*
_output_shapes
: 
Ф
5linear/linear_model/linear_model/opp_seed/cond/SwitchSwitch/linear/linear_model/linear_model/opp_seed/Equal/linear/linear_model/linear_model/opp_seed/Equal*
T0
*
_output_shapes
: : 

7linear/linear_model/linear_model/opp_seed/cond/switch_tIdentity7linear/linear_model/linear_model/opp_seed/cond/Switch:1*
T0
*
_output_shapes
: 

7linear/linear_model/linear_model/opp_seed/cond/switch_fIdentity5linear/linear_model/linear_model/opp_seed/cond/Switch*
T0
*
_output_shapes
: 

6linear/linear_model/linear_model/opp_seed/cond/pred_idIdentity/linear/linear_model/linear_model/opp_seed/Equal*
_output_shapes
: *
T0


=linear/linear_model/linear_model/opp_seed/cond/ExpandDims/dimConstT^linear/linear_model/linear_model/opp_seed/assert_positive/assert_less/Assert/Assert8^linear/linear_model/linear_model/opp_seed/cond/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
э
9linear/linear_model/linear_model/opp_seed/cond/ExpandDims
ExpandDimsBlinear/linear_model/linear_model/opp_seed/cond/ExpandDims/Switch:1=linear/linear_model/linear_model/opp_seed/cond/ExpandDims/dim*
_output_shapes
:*
T0	
и
@linear/linear_model/linear_model/opp_seed/cond/ExpandDims/SwitchSwitchExpandDims_26linear/linear_model/linear_model/opp_seed/cond/pred_id*
_output_shapes

::*
T0	*
_class
loc:@ExpandDims_2
Я
7linear/linear_model/linear_model/opp_seed/cond/Switch_1SwitchExpandDims_26linear/linear_model/linear_model/opp_seed/cond/pred_id*
_class
loc:@ExpandDims_2*
_output_shapes

::*
T0	
п
4linear/linear_model/linear_model/opp_seed/cond/MergeMerge7linear/linear_model/linear_model/opp_seed/cond/Switch_19linear/linear_model/linear_model/opp_seed/cond/ExpandDims*
N*
_output_shapes
:: *
T0	
Ё
1linear/linear_model/linear_model/opp_seed/ToFloatCast4linear/linear_model/linear_model/opp_seed/cond/Merge*

SrcT0	*

DstT0*
_output_shapes
:

/linear/linear_model/linear_model/opp_seed/ShapeShape1linear/linear_model/linear_model/opp_seed/ToFloat*
T0*#
_output_shapes
:џџџџџџџџџ

=linear/linear_model/linear_model/opp_seed/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

?linear/linear_model/linear_model/opp_seed/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

?linear/linear_model/linear_model/opp_seed/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
џ
7linear/linear_model/linear_model/opp_seed/strided_sliceStridedSlice/linear/linear_model/linear_model/opp_seed/Shape=linear/linear_model/linear_model/opp_seed/strided_slice/stack?linear/linear_model/linear_model/opp_seed/strided_slice/stack_1?linear/linear_model/linear_model/opp_seed/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
{
9linear/linear_model/linear_model/opp_seed/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
с
7linear/linear_model/linear_model/opp_seed/Reshape/shapePack7linear/linear_model/linear_model/opp_seed/strided_slice9linear/linear_model/linear_model/opp_seed/Reshape/shape/1*
T0*
N*
_output_shapes
:
к
1linear/linear_model/linear_model/opp_seed/ReshapeReshape1linear/linear_model/linear_model/opp_seed/ToFloat7linear/linear_model/linear_model/opp_seed/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/opp_seed/weights/ReadVariableOpReadVariableOp+linear/linear_model/opp_seed/weights/part_0*
dtype0*
_output_shapes

:

$linear/linear_model/opp_seed/weightsIdentity3linear/linear_model/opp_seed/weights/ReadVariableOp*
_output_shapes

:*
T0
Ы
6linear/linear_model/linear_model/opp_seed/weighted_sumMatMul1linear/linear_model/linear_model/opp_seed/Reshape$linear/linear_model/opp_seed/weights*
T0*'
_output_shapes
:џџџџџџџџџ
к
@linear/linear_model/school_ncaa/weights/part_0/Initializer/zerosConst*
valueB	Љ*    *A
_class7
53loc:@linear/linear_model/school_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
ќ
.linear/linear_model/school_ncaa/weights/part_0VarHandleOp*?
shared_name0.linear/linear_model/school_ncaa/weights/part_0*A
_class7
53loc:@linear/linear_model/school_ncaa/weights/part_0*
shape:	Љ*
dtype0*
_output_shapes
: 
­
Olinear/linear_model/school_ncaa/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/school_ncaa/weights/part_0*
_output_shapes
: 

5linear/linear_model/school_ncaa/weights/part_0/AssignAssignVariableOp.linear/linear_model/school_ncaa/weights/part_0@linear/linear_model/school_ncaa/weights/part_0/Initializer/zeros*A
_class7
53loc:@linear/linear_model/school_ncaa/weights/part_0*
dtype0
ѕ
Blinear/linear_model/school_ncaa/weights/part_0/Read/ReadVariableOpReadVariableOp.linear/linear_model/school_ncaa/weights/part_0*A
_class7
53loc:@linear/linear_model/school_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
h
1linear/linear_model/linear_model/school_ncaa/RankRankExpandDims_1*
T0*
_output_shapes
: 

Blinear/linear_model/linear_model/school_ncaa/assert_positive/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
э
Mlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/LessLessBlinear/linear_model/linear_model/school_ncaa/assert_positive/Const1linear/linear_model/linear_model/school_ncaa/Rank*
_output_shapes
: *
T0

Nlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/ConstConst*
valueB *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/AllAllMlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/LessNlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Const*
_output_shapes
: 
ђ
Ulinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/ConstConst*m
valuedBb B\Feature (key: school_ncaa) cannot have rank 0. Given: Tensor("ExpandDims_1:0", dtype=string)*
dtype0*
_output_shapes
: 
Т
Wlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Const_1Const*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
в
Wlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Const_2Const*
_output_shapes
: *K
valueBB@ B:x (linear/linear_model/linear_model/school_ncaa/Rank:0) = *
dtype0
њ
]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *m
valuedBb B\Feature (key: school_ncaa) cannot have rank 0. Given: Tensor("ExpandDims_1:0", dtype=string)*
dtype0
Ш
]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_1Const*
_output_shapes
: *;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0
и
]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_2Const*K
valueBB@ B:x (linear/linear_model/linear_model/school_ncaa/Rank:0) = *
dtype0*
_output_shapes
: 

Vlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/AssertAssertLlinear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/All]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_0]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_1]linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert/data_21linear/linear_model/linear_model/school_ncaa/Rank*
T
2
У
3linear/linear_model/linear_model/school_ncaa/Rank_1RankExpandDims_1W^linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert*
_output_shapes
: *
T0
Я
4linear/linear_model/linear_model/school_ncaa/Equal/xConstW^linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
Ч
2linear/linear_model/linear_model/school_ncaa/EqualEqual4linear/linear_model/linear_model/school_ncaa/Equal/x3linear/linear_model/linear_model/school_ncaa/Rank_1*
_output_shapes
: *
T0
Э
8linear/linear_model/linear_model/school_ncaa/cond/SwitchSwitch2linear/linear_model/linear_model/school_ncaa/Equal2linear/linear_model/linear_model/school_ncaa/Equal*
T0
*
_output_shapes
: : 
Ѓ
:linear/linear_model/linear_model/school_ncaa/cond/switch_tIdentity:linear/linear_model/linear_model/school_ncaa/cond/Switch:1*
T0
*
_output_shapes
: 
Ё
:linear/linear_model/linear_model/school_ncaa/cond/switch_fIdentity8linear/linear_model/linear_model/school_ncaa/cond/Switch*
T0
*
_output_shapes
: 

9linear/linear_model/linear_model/school_ncaa/cond/pred_idIdentity2linear/linear_model/linear_model/school_ncaa/Equal*
T0
*
_output_shapes
: 
Ё
@linear/linear_model/linear_model/school_ncaa/cond/ExpandDims/dimConstW^linear/linear_model/linear_model/school_ncaa/assert_positive/assert_less/Assert/Assert;^linear/linear_model/linear_model/school_ncaa/cond/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
і
<linear/linear_model/linear_model/school_ncaa/cond/ExpandDims
ExpandDimsElinear/linear_model/linear_model/school_ncaa/cond/ExpandDims/Switch:1@linear/linear_model/linear_model/school_ncaa/cond/ExpandDims/dim*
T0*
_output_shapes
:
о
Clinear/linear_model/linear_model/school_ncaa/cond/ExpandDims/SwitchSwitchExpandDims_19linear/linear_model/linear_model/school_ncaa/cond/pred_id*
_output_shapes

::*
T0*
_class
loc:@ExpandDims_1
е
:linear/linear_model/linear_model/school_ncaa/cond/Switch_1SwitchExpandDims_19linear/linear_model/linear_model/school_ncaa/cond/pred_id*
T0*
_class
loc:@ExpandDims_1*
_output_shapes

::
ш
7linear/linear_model/linear_model/school_ncaa/cond/MergeMerge:linear/linear_model/linear_model/school_ncaa/cond/Switch_1<linear/linear_model/linear_model/school_ncaa/cond/ExpandDims*
T0*
N*
_output_shapes
:: 

Klinear/linear_model/linear_model/school_ncaa/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
њ
Elinear/linear_model/linear_model/school_ncaa/to_sparse_input/NotEqualNotEqual7linear/linear_model/linear_model/school_ncaa/cond/MergeKlinear/linear_model/linear_model/school_ncaa/to_sparse_input/ignore_value/x*
T0*
_output_shapes
:
Ц
Dlinear/linear_model/linear_model/school_ncaa/to_sparse_input/indicesWhereElinear/linear_model/linear_model/school_ncaa/to_sparse_input/NotEqual*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Clinear/linear_model/linear_model/school_ncaa/to_sparse_input/valuesGatherNd7linear/linear_model/linear_model/school_ncaa/cond/MergeDlinear/linear_model/linear_model/school_ncaa/to_sparse_input/indices*
Tindices0	*
Tparams0*
_output_shapes
:
Ш
Hlinear/linear_model/linear_model/school_ncaa/to_sparse_input/dense_shapeShape7linear/linear_model/linear_model/school_ncaa/cond/Merge*
T0*
out_type0	*#
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/ConstConst*
valueBЉBBoston CollegeBGeorgia TechBGeorge WashingtonBKansasBMarylandB
Notre DameBKentuckyBAlabamaBArkansasBAuburnBBaylorBButlerB
CaliforniaB
CincinnatiBCornellBDaytonBDePaulBEastern Mich.BFloridaBFlorida St.BGeorge MasonBIllinoisBIndianaBIowa St.BJames MadisonB
Kansas St.BLa SalleB
LouisvilleBLSUBMemphisB
Miami (FL)BMt. St. Mary'sBMichigan St.BOld DominionBOhio St.BPacificBPenn St.BPurdueBSFABSienaBSouthern Ill.BSt. John's (NY)BSaint LouisBSMUBSyracuseBTCUBTempleBTexasB
Texas TechBGeorgiaBNorth CarolinaBUNIB
New MexicoBRhode IslandBSouthern CaliforniaBUtah St.BVirginiaB
VanderbiltB	WisconsinBWestern Ky.BWashington St.BWest VirginiaBXavierB	CharlotteBClemsonBCleveland St.BColoradoBUConnB
Coppin St.BDukeBFGCUBGonzagaB
GeorgetownB
Seton HallBHarvardBIowaBSaint Joseph'sBLoyola ChicagoB	MarquetteBMassachusettsBMichiganB	MinnesotaBMissouriBMissouri St.BMississippi St.BNavyBNC StateBNew Mexico St.BNorthwestern St.BOklahomaBOklahoma St.BPennB
PepperdineB
PittsburghB	PrincetonB
ProvidenceBRichmondBSouth CarolinaBStanfordB	TennesseeBTulsaB	Texas A&MBUCLABUTSAB	VillanovaBWake ForestB
WashingtonBNorthwesternBVirginia TechBArizona St.BBYUBDavidsonBMiddle Tenn.BNevadaBOregonBRobert MorrisBSaint Mary's (CA)BUABB	LouisianaBNew OrleansB
South Fla.BVermontBVCUBAlbany (NY)BArizonaBArk.-Pine BluffBBradleyBBucknellBChattanoogaBCol. of CharlestonB	CreightonB
EvansvilleBGeorgia St.BHamptonBIllinois St.BKent St.B
Miami (OH)B	MilwaukeeBOle MissB
Murray St.BOhioBAustin PeayBSan Diego St.BLittle RockBUNC AshevilleBUNLVBUtahBUTEPBCal PolyBLouisiana TechBColorado St.BDetroit MercyBHawaiiBLehighB	ManhattanBMercerBUC DavisBWinthropBWestern Mich.BBall St.BMonmouthBMontanaBMorehead St.BN.C. A&TBTulaneBUC Santa BarbaraBUNCWB
ValparaisoBWichita St.B	Green BayB
Holy CrossBCentral Mich.BLoyola MarymountBOaklandBSanta ClaraBSouthern U.B
South Ala.B	San DiegoB	Weber St.BWyomingBDrexelBETSUBFlorida A&MB
Fresno St.BIndiana St.BNorth Dakota St.BNiagaraBNorfolk St.BYaleBSouthern UtahBStony BrookB	Boise St.BSt. BonaventureBNortheasternBN.C. CentralBLIU BrooklynBSouthern Miss.B	UC IrvineBIonaB	LafayetteBDelawareBLoyola MarylandBAlcornBBrownBGa. SouthernBMarshallBNorthern Ill.BLibertyBEastern Ky.B	FairfieldBEast CarolinaB	Air ForceBBelmontBCoastal Caro.BWoffordBOral RobertsB
Morgan St.BPortland St.BIll.-ChicagoBFairleigh DickinsonBRiderB	Boston U.BSouth Carolina St.BCampbellBTroyBLamar UniversityBMississippi Val.B
BinghamtonBAlabama St.BRutgersBSaint Peter'sBUCFBFordhamBNebraskaBHofstraBAmericanBJackson St.BHoustonBTennessee St.BSan Jose St.BSam Houston St.BNorthern Ariz.BEastern Ill.B
Wright St.BNorth TexasBAppalachian St.BCentral Conn. St.B
La.-MonroeBNorth FloridaBJacksonvilleBRadfordBAkronBCal St. FullertonBNorth DakotaBNicholls St.BTexas SouthernB
Oregon St.BSouth Dakota St.BEastern Wash.BUMBCBMcNeeseBTowsonBSoutheastern La.BNorthern Colo.BUNCGBLong Beach St.BFIUBIdahoBArkansas St.BSan FranciscoBCanisiusBPortlandBMaristBPrairie ViewBCSUNBColgateBHowardBIUPUIBFla. AtlanticBJacksonville St.BUT ArlingtonBBuffaloBSamfordBA&M-Corpus ChristiBDelaware St.B	Texas St.BWagnerBCharleston So.BNorthern Ky.BSoutheast Mo. St.BAlabama A&MBWestern Caro.BMontana St.BDrakeBSaint Francis (PA)BCSU BakersfieldB	Idaho St.*
dtype0*
_output_shapes	
:Љ

Dlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/SizeConst*
value
B :Љ*
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

Klinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
Elinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/rangeRangeKlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/range/startDlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/SizeKlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/range/delta*
_output_shapes	
:Љ
Ы
Glinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/ToInt64CastElinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/range*

SrcT0*

DstT0	*
_output_shapes	
:Љ

Jlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0

Plinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_table/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
п
Ulinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_table/table_initLookupTableImportV2Jlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_tableElinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/ConstGlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/ToInt64*	
Tin0*

Tout0	
ч
>linear/linear_model/linear_model/school_ncaa/hash_table_LookupLookupTableFindV2Jlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_tableClinear/linear_model/linear_model/school_ncaa/to_sparse_input/valuesPlinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_table/Const*	
Tin0*
_output_shapes
:*

Tout0	
Ц
7linear/linear_model/linear_model/school_ncaa/Shape/CastCastHlinear/linear_model/linear_model/school_ncaa/to_sparse_input/dense_shape*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0	

@linear/linear_model/linear_model/school_ncaa/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Blinear/linear_model/linear_model/school_ncaa/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Blinear/linear_model/linear_model/school_ncaa/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

:linear/linear_model/linear_model/school_ncaa/strided_sliceStridedSlice7linear/linear_model/linear_model/school_ncaa/Shape/Cast@linear/linear_model/linear_model/school_ncaa/strided_slice/stackBlinear/linear_model/linear_model/school_ncaa/strided_slice/stack_1Blinear/linear_model/linear_model/school_ncaa/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

5linear/linear_model/linear_model/school_ncaa/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
м
3linear/linear_model/linear_model/school_ncaa/Cast/xPack:linear/linear_model/linear_model/school_ncaa/strided_slice5linear/linear_model/linear_model/school_ncaa/Cast/x/1*
T0*
N*
_output_shapes
:
Ђ
1linear/linear_model/linear_model/school_ncaa/CastCast3linear/linear_model/linear_model/school_ncaa/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
Н
:linear/linear_model/linear_model/school_ncaa/SparseReshapeSparseReshapeDlinear/linear_model/linear_model/school_ncaa/to_sparse_input/indicesHlinear/linear_model/linear_model/school_ncaa/to_sparse_input/dense_shape1linear/linear_model/linear_model/school_ncaa/Cast*-
_output_shapes
:џџџџџџџџџ:
В
Clinear/linear_model/linear_model/school_ncaa/SparseReshape/IdentityIdentity>linear/linear_model/linear_model/school_ncaa/hash_table_Lookup*
T0	*
_output_shapes
:
Ћ
;linear/linear_model/linear_model/school_ncaa/ReadVariableOpReadVariableOp.linear/linear_model/school_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ

Elinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Dlinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Х
?linear/linear_model/linear_model/school_ncaa/weighted_sum/SliceSlice<linear/linear_model/linear_model/school_ncaa/SparseReshape:1Elinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice/beginDlinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:

?linear/linear_model/linear_model/school_ncaa/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
щ
>linear/linear_model/linear_model/school_ncaa/weighted_sum/ProdProd?linear/linear_model/linear_model/school_ncaa/weighted_sum/Slice?linear/linear_model/linear_model/school_ncaa/weighted_sum/Const*
T0	*
_output_shapes
: 

Jlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Glinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
Blinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2GatherV2<linear/linear_model/linear_model/school_ncaa/SparseReshape:1Jlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2/indicesGlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
њ
@linear/linear_model/linear_model/school_ncaa/weighted_sum/Cast/xPack>linear/linear_model/linear_model/school_ncaa/weighted_sum/ProdBlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2*
_output_shapes
:*
T0	*
N
У
Glinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshapeSparseReshape:linear/linear_model/linear_model/school_ncaa/SparseReshape<linear/linear_model/linear_model/school_ncaa/SparseReshape:1@linear/linear_model/linear_model/school_ncaa/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Ф
Plinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshape/IdentityIdentityClinear/linear_model/linear_model/school_ncaa/SparseReshape/Identity*
_output_shapes
:*
T0	

Hlinear/linear_model/linear_model/school_ncaa/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Flinear/linear_model/linear_model/school_ncaa/weighted_sum/GreaterEqualGreaterEqualPlinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/school_ncaa/weighted_sum/GreaterEqual/y*
_output_shapes
:*
T0	
Т
?linear/linear_model/linear_model/school_ncaa/weighted_sum/WhereWhereFlinear/linear_model/linear_model/school_ncaa/weighted_sum/GreaterEqual*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Glinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/school_ncaa/weighted_sum/ReshapeReshape?linear/linear_model/linear_model/school_ncaa/weighted_sum/WhereGlinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Ilinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ќ
Dlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_1GatherV2Glinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshapeAlinear/linear_model/linear_model/school_ncaa/weighted_sum/ReshapeIlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

Ilinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
і
Dlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_2GatherV2Plinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshape/IdentityAlinear/linear_model/linear_model/school_ncaa/weighted_sum/ReshapeIlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*
_output_shapes
:*
Taxis0
О
Blinear/linear_model/linear_model/school_ncaa/weighted_sum/IdentityIdentityIlinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Slinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ќ
alinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsDlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_1Dlinear/linear_model/linear_model/school_ncaa/weighted_sum/GatherV2_2Blinear/linear_model/linear_model/school_ncaa/weighted_sum/IdentitySlinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ж
elinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
И
glinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
И
glinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

_linear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicealinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowselinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stackglinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1glinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
ќ
Vlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/CastCast_linear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:џџџџџџџџџ

Xlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/UniqueUniqueclinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
љ
glinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *
value	B : *N
_classD
B@loc:@linear/linear_model/linear_model/school_ncaa/ReadVariableOp*
dtype0

blinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2;linear/linear_model/linear_model/school_ncaa/ReadVariableOpXlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/Uniqueglinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0*N
_classD
B@loc:@linear/linear_model/linear_model/school_ncaa/ReadVariableOp

klinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityblinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0
И
Qlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparseSparseSegmentSumklinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityZlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/Unique:1Vlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

Ilinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"џџџџ   *
dtype0
А
Clinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_1Reshapeclinear/linear_model/linear_model/school_ncaa/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Ilinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
Р
?linear/linear_model/linear_model/school_ncaa/weighted_sum/ShapeShapeQlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0

Mlinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Olinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Olinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Я
Glinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_sliceStridedSlice?linear/linear_model/linear_model/school_ncaa/weighted_sum/ShapeMlinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stackOlinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stack_1Olinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0

Alinear/linear_model/linear_model/school_ncaa/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

?linear/linear_model/linear_model/school_ncaa/weighted_sum/stackPackAlinear/linear_model/linear_model/school_ncaa/weighted_sum/stack/0Glinear/linear_model/linear_model/school_ncaa/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0

>linear/linear_model/linear_model/school_ncaa/weighted_sum/TileTileClinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_1?linear/linear_model/linear_model/school_ncaa/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

ж
Dlinear/linear_model/linear_model/school_ncaa/weighted_sum/zeros_like	ZerosLikeQlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
9linear/linear_model/linear_model/school_ncaa/weighted_sumSelect>linear/linear_model/linear_model/school_ncaa/weighted_sum/TileDlinear/linear_model/linear_model/school_ncaa/weighted_sum/zeros_likeQlinear/linear_model/linear_model/school_ncaa/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
К
@linear/linear_model/linear_model/school_ncaa/weighted_sum/Cast_1Cast<linear/linear_model/linear_model/school_ncaa/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:

Glinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Я
Alinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1Slice@linear/linear_model/linear_model/school_ncaa/weighted_sum/Cast_1Glinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1/beginFlinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
Њ
Alinear/linear_model/linear_model/school_ncaa/weighted_sum/Shape_1Shape9linear/linear_model/linear_model/school_ncaa/weighted_sum*
T0*
_output_shapes
:

Glinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
а
Alinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2SliceAlinear/linear_model/linear_model/school_ncaa/weighted_sum/Shape_1Glinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2/beginFlinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0

Elinear/linear_model/linear_model/school_ncaa/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
@linear/linear_model/linear_model/school_ncaa/weighted_sum/concatConcatV2Alinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_1Alinear/linear_model/linear_model/school_ncaa/weighted_sum/Slice_2Elinear/linear_model/linear_model/school_ncaa/weighted_sum/concat/axis*
_output_shapes
:*
T0*
N
§
Clinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_2Reshape9linear/linear_model/linear_model/school_ncaa/weighted_sum@linear/linear_model/linear_model/school_ncaa/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
9linear/linear_model/seed/weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/seed/weights/part_0*
dtype0*
_output_shapes

:
ц
'linear/linear_model/seed/weights/part_0VarHandleOp*:
_class0
.,loc:@linear/linear_model/seed/weights/part_0*
shape
:*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/seed/weights/part_0

Hlinear/linear_model/seed/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/seed/weights/part_0*
_output_shapes
: 
я
.linear/linear_model/seed/weights/part_0/AssignAssignVariableOp'linear/linear_model/seed/weights/part_09linear/linear_model/seed/weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/seed/weights/part_0*
dtype0
п
;linear/linear_model/seed/weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/seed/weights/part_0*:
_class0
.,loc:@linear/linear_model/seed/weights/part_0*
dtype0*
_output_shapes

:
_
*linear/linear_model/linear_model/seed/RankRank
ExpandDims*
T0	*
_output_shapes
: 
}
;linear/linear_model/linear_model/seed/assert_positive/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
и
Flinear/linear_model/linear_model/seed/assert_positive/assert_less/LessLess;linear/linear_model/linear_model/seed/assert_positive/Const*linear/linear_model/linear_model/seed/Rank*
_output_shapes
: *
T0

Glinear/linear_model/linear_model/seed/assert_positive/assert_less/ConstConst*
_output_shapes
: *
valueB *
dtype0
ѕ
Elinear/linear_model/linear_model/seed/assert_positive/assert_less/AllAllFlinear/linear_model/linear_model/seed/assert_positive/assert_less/LessGlinear/linear_model/linear_model/seed/assert_positive/assert_less/Const*
_output_shapes
: 
с
Nlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/ConstConst*c
valueZBX BRFeature (key: seed) cannot have rank 0. Given: Tensor("ExpandDims:0", dtype=int64)*
dtype0*
_output_shapes
: 
Л
Plinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Const_1Const*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
Ф
Plinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Const_2Const*D
value;B9 B3x (linear/linear_model/linear_model/seed/Rank:0) = *
dtype0*
_output_shapes
: 
щ
Vlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_0Const*c
valueZBX BRFeature (key: seed) cannot have rank 0. Given: Tensor("ExpandDims:0", dtype=int64)*
dtype0*
_output_shapes
: 
С
Vlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_1Const*
_output_shapes
: *;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0
Ъ
Vlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *D
value;B9 B3x (linear/linear_model/linear_model/seed/Rank:0) = 
у
Olinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/AssertAssertElinear/linear_model/linear_model/seed/assert_positive/assert_less/AllVlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_0Vlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_1Vlinear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert/data_2*linear/linear_model/linear_model/seed/Rank*
T
2
Г
,linear/linear_model/linear_model/seed/Rank_1Rank
ExpandDimsP^linear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert*
_output_shapes
: *
T0	
С
-linear/linear_model/linear_model/seed/Equal/xConstP^linear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
В
+linear/linear_model/linear_model/seed/EqualEqual-linear/linear_model/linear_model/seed/Equal/x,linear/linear_model/linear_model/seed/Rank_1*
_output_shapes
: *
T0
И
1linear/linear_model/linear_model/seed/cond/SwitchSwitch+linear/linear_model/linear_model/seed/Equal+linear/linear_model/linear_model/seed/Equal*
_output_shapes
: : *
T0


3linear/linear_model/linear_model/seed/cond/switch_tIdentity3linear/linear_model/linear_model/seed/cond/Switch:1*
_output_shapes
: *
T0


3linear/linear_model/linear_model/seed/cond/switch_fIdentity1linear/linear_model/linear_model/seed/cond/Switch*
_output_shapes
: *
T0


2linear/linear_model/linear_model/seed/cond/pred_idIdentity+linear/linear_model/linear_model/seed/Equal*
T0
*
_output_shapes
: 

9linear/linear_model/linear_model/seed/cond/ExpandDims/dimConstP^linear/linear_model/linear_model/seed/assert_positive/assert_less/Assert/Assert4^linear/linear_model/linear_model/seed/cond/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
с
5linear/linear_model/linear_model/seed/cond/ExpandDims
ExpandDims>linear/linear_model/linear_model/seed/cond/ExpandDims/Switch:19linear/linear_model/linear_model/seed/cond/ExpandDims/dim*
T0	*
_output_shapes
:
Ь
<linear/linear_model/linear_model/seed/cond/ExpandDims/SwitchSwitch
ExpandDims2linear/linear_model/linear_model/seed/cond/pred_id*
T0	*
_class
loc:@ExpandDims*
_output_shapes

::
У
3linear/linear_model/linear_model/seed/cond/Switch_1Switch
ExpandDims2linear/linear_model/linear_model/seed/cond/pred_id*
T0	*
_class
loc:@ExpandDims*
_output_shapes

::
г
0linear/linear_model/linear_model/seed/cond/MergeMerge3linear/linear_model/linear_model/seed/cond/Switch_15linear/linear_model/linear_model/seed/cond/ExpandDims*
T0	*
N*
_output_shapes
:: 

-linear/linear_model/linear_model/seed/ToFloatCast0linear/linear_model/linear_model/seed/cond/Merge*

DstT0*
_output_shapes
:*

SrcT0	

+linear/linear_model/linear_model/seed/ShapeShape-linear/linear_model/linear_model/seed/ToFloat*
T0*#
_output_shapes
:џџџџџџџџџ

9linear/linear_model/linear_model/seed/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

;linear/linear_model/linear_model/seed/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

;linear/linear_model/linear_model/seed/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ы
3linear/linear_model/linear_model/seed/strided_sliceStridedSlice+linear/linear_model/linear_model/seed/Shape9linear/linear_model/linear_model/seed/strided_slice/stack;linear/linear_model/linear_model/seed/strided_slice/stack_1;linear/linear_model/linear_model/seed/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
w
5linear/linear_model/linear_model/seed/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
е
3linear/linear_model/linear_model/seed/Reshape/shapePack3linear/linear_model/linear_model/seed/strided_slice5linear/linear_model/linear_model/seed/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ю
-linear/linear_model/linear_model/seed/ReshapeReshape-linear/linear_model/linear_model/seed/ToFloat3linear/linear_model/linear_model/seed/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

/linear/linear_model/seed/weights/ReadVariableOpReadVariableOp'linear/linear_model/seed/weights/part_0*
dtype0*
_output_shapes

:

 linear/linear_model/seed/weightsIdentity/linear/linear_model/seed/weights/ReadVariableOp*
T0*
_output_shapes

:
П
2linear/linear_model/linear_model/seed/weighted_sumMatMul-linear/linear_model/linear_model/seed/Reshape linear/linear_model/seed/weights*
T0*'
_output_shapes
:џџџџџџџџџ
ы
5linear/linear_model/linear_model/weighted_sum_no_biasAddN@linear/linear_model/linear_model/opp_ncaa/weighted_sum/Reshape_26linear/linear_model/linear_model/opp_seed/weighted_sumClinear/linear_model/linear_model/school_ncaa/weighted_sum/Reshape_22linear/linear_model/linear_model/seed/weighted_sum*
T0*
N*'
_output_shapes
:џџџџџџџџџ
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
т
'linear/linear_model/bias_weights/part_0VarHandleOp*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
shape:*
dtype0*
_output_shapes
: 

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
я
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
л
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
У
-linear/linear_model/linear_model/weighted_sumBiasAdd5linear/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:џџџџџџџџџ
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
_output_shapes
: *
T0

linear/Reshape/ReadVariableOpReadVariableOp+linear/linear_model/opp_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
g
linear/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
t
linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
_output_shapes	
:Љ*
T0

linear/Reshape_1/ReadVariableOpReadVariableOp+linear/linear_model/opp_seed/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
_output_shapes
:*
T0

linear/Reshape_2/ReadVariableOpReadVariableOp.linear/linear_model/school_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
i
linear/Reshape_2/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
z
linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
_output_shapes	
:Љ*
T0

linear/Reshape_3/ReadVariableOpReadVariableOp'linear/linear_model/seed/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_3Reshapelinear/Reshape_3/ReadVariableOplinear/Reshape_3/shape*
_output_shapes
:*
T0
T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/concat/axis*
T0*
N*
_output_shapes	
:д
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes	
:д
r
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

DstT0*
_output_shapes	
:д*

SrcT0

d
linear/zero_fraction/ConstConst*
_output_shapes
:*
valueB: *
dtype0
y
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0

$linear/head/predictions/logits/ShapeShape-linear/linear_model/linear_model/weighted_sum*
_output_shapes
:*
T0
z
8linear/head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
blinear/head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
[
Slinear/head/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

 linear/head/predictions/logisticSigmoid-linear/linear_model/linear_model/weighted_sum*'
_output_shapes
:џџџџџџџџџ*
T0

"linear/head/predictions/zeros_like	ZerosLike-linear/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
x
-linear/head/predictions/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ё
(linear/head/predictions/two_class_logitsConcatV2"linear/head/predictions/zeros_like-linear/linear_model/linear_model/weighted_sum-linear/head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ

%linear/head/predictions/probabilitiesSoftmax(linear/head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
v
+linear/head/predictions/class_ids/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
А
!linear/head/predictions/class_idsArgMax(linear/head/predictions/two_class_logits+linear/head/predictions/class_ids/dimension*#
_output_shapes
:џџџџџџџџџ*
T0
q
&linear/head/predictions/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
­
"linear/head/predictions/ExpandDims
ExpandDims!linear/head/predictions/class_ids&linear/head/predictions/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	

#linear/head/predictions/str_classesAsString"linear/head/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
f
linear/head/ShapeShape%linear/head/predictions/probabilities*
_output_shapes
:*
T0
i
linear/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
щ
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
Y
linear/head/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Y
linear/head/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Y
linear/head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

linear/head/rangeRangelinear/head/range/startlinear/head/range/limitlinear/head/range/delta*
_output_shapes
:
X
linear/head/AsStringAsStringlinear/head/range*
T0*
_output_shapes
:
\
linear/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*
T0*
_output_shapes

:
^
linear/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
N*
_output_shapes
:*
T0
~
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0

initNoOp
С
init_all_tablesNoOpP^linear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table/table_initV^linear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
|
save/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
_output_shapes
:*
T0
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:

save/Read_1/ReadVariableOpReadVariableOp+linear/linear_model/opp_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
a
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes
:	Љ
e
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes
:	Љ

save/Read_2/ReadVariableOpReadVariableOp+linear/linear_model/opp_seed/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/Read_3/ReadVariableOpReadVariableOp.linear/linear_model/school_ncaa/weights/part_0*
dtype0*
_output_shapes
:	Љ
a
save/Identity_6Identitysave/Read_3/ReadVariableOp*
_output_shapes
:	Љ*
T0
e
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
_output_shapes
:	Љ*
T0

save/Read_4/ReadVariableOpReadVariableOp'linear/linear_model/seed/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6b9cecc6167c403ca9221a5a5fd78a76/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_5/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
l
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes
:

save/Read_6/ReadVariableOpReadVariableOp+linear/linear_model/opp_ncaa/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	Љ
q
save/Identity_12Identitysave/Read_6/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	Љ
g
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:	Љ

save/Read_7/ReadVariableOpReadVariableOp+linear/linear_model/opp_seed/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
p
save/Identity_14Identitysave/Read_7/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:

save/Read_8/ReadVariableOpReadVariableOp.linear/linear_model/school_ncaa/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	Љ
q
save/Identity_16Identitysave/Read_8/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	Љ
g
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
_output_shapes
:	Љ*
T0

save/Read_9/ReadVariableOpReadVariableOp'linear/linear_model/seed/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:
Ќ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*Ю
valueФBСB linear/linear_model/bias_weightsB$linear/linear_model/opp_ncaa/weightsB$linear/linear_model/opp_seed/weightsB'linear/linear_model/school_ncaa/weightsB linear/linear_model/seed/weights*
dtype0*
_output_shapes
:
З
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*V
valueMBKB1 0,1B297 1 0,297:0,1B1 1 0,1:0,1B297 1 0,297:0,1B1 1 0,1:0,1*
dtype0
щ
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_11save/Identity_13save/Identity_15save/Identity_17save/Identity_19"/device:CPU:0*
dtypes	
2
Ј
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
д
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ј
save/Identity_20Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
_output_shapes
: *
T0	*
_class
loc:@global_step
(
save/restore_shardNoOp^save/Assign
Џ
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ю
valueФBСB linear/linear_model/bias_weightsB$linear/linear_model/opp_ncaa/weightsB$linear/linear_model/opp_seed/weightsB'linear/linear_model/school_ncaa/weightsB linear/linear_model/seed/weights*
dtype0*
_output_shapes
:
К
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*V
valueMBKB1 0,1B297 1 0,297:0,1B1 1 0,1:0,1B297 1 0,297:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
е
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes	
2*D
_output_shapes2
0::	Љ::	Љ:
b
save/Identity_21Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_21"/device:CPU:0*
dtype0
i
save/Identity_22Identitysave/RestoreV2_1:1"/device:CPU:0*
_output_shapes
:	Љ*
T0

save/AssignVariableOp_1AssignVariableOp+linear/linear_model/opp_ncaa/weights/part_0save/Identity_22"/device:CPU:0*
dtype0
h
save/Identity_23Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes

:*
T0

save/AssignVariableOp_2AssignVariableOp+linear/linear_model/opp_seed/weights/part_0save/Identity_23"/device:CPU:0*
dtype0
i
save/Identity_24Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes
:	Љ

save/AssignVariableOp_3AssignVariableOp.linear/linear_model/school_ncaa/weights/part_0save/Identity_24"/device:CPU:0*
dtype0
h
save/Identity_25Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_4AssignVariableOp'linear/linear_model/seed/weights/part_0save/Identity_25"/device:CPU:0*
dtype0
Ћ
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_20:0save/restore_all (5 @F8"Љ
model_variables
Ё
-linear/linear_model/opp_ncaa/weights/part_0:02linear/linear_model/opp_ncaa/weights/part_0/AssignAlinear/linear_model/opp_ncaa/weights/part_0/Read/ReadVariableOp:0"4
$linear/linear_model/opp_ncaa/weightsЉ  "Љ(2?linear/linear_model/opp_ncaa/weights/part_0/Initializer/zeros:08

-linear/linear_model/opp_seed/weights/part_0:02linear/linear_model/opp_seed/weights/part_0/AssignAlinear/linear_model/opp_seed/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/opp_seed/weights  "(2?linear/linear_model/opp_seed/weights/part_0/Initializer/zeros:08
А
0linear/linear_model/school_ncaa/weights/part_0:05linear/linear_model/school_ncaa/weights/part_0/AssignDlinear/linear_model/school_ncaa/weights/part_0/Read/ReadVariableOp:0"7
'linear/linear_model/school_ncaa/weightsЉ  "Љ(2Blinear/linear_model/school_ncaa/weights/part_0/Initializer/zeros:08

)linear/linear_model/seed/weights/part_0:0.linear/linear_model/seed/weights/part_0/Assign=linear/linear_model/seed/weights/part_0/Read/ReadVariableOp:0".
 linear/linear_model/seed/weights  "(2;linear/linear_model/seed/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"­
trainable_variables
Ё
-linear/linear_model/opp_ncaa/weights/part_0:02linear/linear_model/opp_ncaa/weights/part_0/AssignAlinear/linear_model/opp_ncaa/weights/part_0/Read/ReadVariableOp:0"4
$linear/linear_model/opp_ncaa/weightsЉ  "Љ(2?linear/linear_model/opp_ncaa/weights/part_0/Initializer/zeros:08

-linear/linear_model/opp_seed/weights/part_0:02linear/linear_model/opp_seed/weights/part_0/AssignAlinear/linear_model/opp_seed/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/opp_seed/weights  "(2?linear/linear_model/opp_seed/weights/part_0/Initializer/zeros:08
А
0linear/linear_model/school_ncaa/weights/part_0:05linear/linear_model/school_ncaa/weights/part_0/AssignDlinear/linear_model/school_ncaa/weights/part_0/Read/ReadVariableOp:0"7
'linear/linear_model/school_ncaa/weightsЉ  "Љ(2Blinear/linear_model/school_ncaa/weights/part_0/Initializer/zeros:08

)linear/linear_model/seed/weights/part_0:0.linear/linear_model/seed/weights/part_0/Assign=linear/linear_model/seed/weights/part_0/Read/ReadVariableOp:0".
 linear/linear_model/seed/weights  "(2;linear/linear_model/seed/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"§
	variablesяь
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Ё
-linear/linear_model/opp_ncaa/weights/part_0:02linear/linear_model/opp_ncaa/weights/part_0/AssignAlinear/linear_model/opp_ncaa/weights/part_0/Read/ReadVariableOp:0"4
$linear/linear_model/opp_ncaa/weightsЉ  "Љ(2?linear/linear_model/opp_ncaa/weights/part_0/Initializer/zeros:08

-linear/linear_model/opp_seed/weights/part_0:02linear/linear_model/opp_seed/weights/part_0/AssignAlinear/linear_model/opp_seed/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/opp_seed/weights  "(2?linear/linear_model/opp_seed/weights/part_0/Initializer/zeros:08
А
0linear/linear_model/school_ncaa/weights/part_0:05linear/linear_model/school_ncaa/weights/part_0/AssignDlinear/linear_model/school_ncaa/weights/part_0/Read/ReadVariableOp:0"7
'linear/linear_model/school_ncaa/weightsЉ  "Љ(2Blinear/linear_model/school_ncaa/weights/part_0/Initializer/zeros:08

)linear/linear_model/seed/weights/part_0:0.linear/linear_model/seed/weights/part_0/Assign=linear/linear_model/seed/weights/part_0/Read/ReadVariableOp:0".
 linear/linear_model/seed/weights  "(2;linear/linear_model/seed/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"С
table_initializerЋ
Ј
Olinear/linear_model/linear_model/opp_ncaa/opp_ncaa_lookup/hash_table/table_init
Ulinear/linear_model/linear_model/school_ncaa/school_ncaa_lookup/hash_table/table_init"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"ѓ)
cond_contextт)п)
Ч
8linear/linear_model/linear_model/opp_ncaa/cond/cond_text8linear/linear_model/linear_model/opp_ncaa/cond/pred_id:09linear/linear_model/linear_model/opp_ncaa/cond/switch_t:0 *
ExpandDims_3:0
Blinear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/Switch:1
?linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/dim:0
;linear/linear_model/linear_model/opp_ncaa/cond/ExpandDims:0
8linear/linear_model/linear_model/opp_ncaa/cond/pred_id:0
9linear/linear_model/linear_model/opp_ncaa/cond/switch_t:0t
8linear/linear_model/linear_model/opp_ncaa/cond/pred_id:08linear/linear_model/linear_model/opp_ncaa/cond/pred_id:0T
ExpandDims_3:0Blinear/linear_model/linear_model/opp_ncaa/cond/ExpandDims/Switch:1
ђ
:linear/linear_model/linear_model/opp_ncaa/cond/cond_text_18linear/linear_model/linear_model/opp_ncaa/cond/pred_id:09linear/linear_model/linear_model/opp_ncaa/cond/switch_f:0*О
ExpandDims_3:0
9linear/linear_model/linear_model/opp_ncaa/cond/Switch_1:0
9linear/linear_model/linear_model/opp_ncaa/cond/Switch_1:1
8linear/linear_model/linear_model/opp_ncaa/cond/pred_id:0
9linear/linear_model/linear_model/opp_ncaa/cond/switch_f:0t
8linear/linear_model/linear_model/opp_ncaa/cond/pred_id:08linear/linear_model/linear_model/opp_ncaa/cond/pred_id:0K
ExpandDims_3:09linear/linear_model/linear_model/opp_ncaa/cond/Switch_1:0
Ч
8linear/linear_model/linear_model/opp_seed/cond/cond_text8linear/linear_model/linear_model/opp_seed/cond/pred_id:09linear/linear_model/linear_model/opp_seed/cond/switch_t:0 *
ExpandDims_2:0
Blinear/linear_model/linear_model/opp_seed/cond/ExpandDims/Switch:1
?linear/linear_model/linear_model/opp_seed/cond/ExpandDims/dim:0
;linear/linear_model/linear_model/opp_seed/cond/ExpandDims:0
8linear/linear_model/linear_model/opp_seed/cond/pred_id:0
9linear/linear_model/linear_model/opp_seed/cond/switch_t:0T
ExpandDims_2:0Blinear/linear_model/linear_model/opp_seed/cond/ExpandDims/Switch:1t
8linear/linear_model/linear_model/opp_seed/cond/pred_id:08linear/linear_model/linear_model/opp_seed/cond/pred_id:0
ђ
:linear/linear_model/linear_model/opp_seed/cond/cond_text_18linear/linear_model/linear_model/opp_seed/cond/pred_id:09linear/linear_model/linear_model/opp_seed/cond/switch_f:0*О
ExpandDims_2:0
9linear/linear_model/linear_model/opp_seed/cond/Switch_1:0
9linear/linear_model/linear_model/opp_seed/cond/Switch_1:1
8linear/linear_model/linear_model/opp_seed/cond/pred_id:0
9linear/linear_model/linear_model/opp_seed/cond/switch_f:0K
ExpandDims_2:09linear/linear_model/linear_model/opp_seed/cond/Switch_1:0t
8linear/linear_model/linear_model/opp_seed/cond/pred_id:08linear/linear_model/linear_model/opp_seed/cond/pred_id:0
ш
;linear/linear_model/linear_model/school_ncaa/cond/cond_text;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0<linear/linear_model/linear_model/school_ncaa/cond/switch_t:0 *Ћ
ExpandDims_1:0
Elinear/linear_model/linear_model/school_ncaa/cond/ExpandDims/Switch:1
Blinear/linear_model/linear_model/school_ncaa/cond/ExpandDims/dim:0
>linear/linear_model/linear_model/school_ncaa/cond/ExpandDims:0
;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0
<linear/linear_model/linear_model/school_ncaa/cond/switch_t:0W
ExpandDims_1:0Elinear/linear_model/linear_model/school_ncaa/cond/ExpandDims/Switch:1z
;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0

=linear/linear_model/linear_model/school_ncaa/cond/cond_text_1;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0<linear/linear_model/linear_model/school_ncaa/cond/switch_f:0*г
ExpandDims_1:0
<linear/linear_model/linear_model/school_ncaa/cond/Switch_1:0
<linear/linear_model/linear_model/school_ncaa/cond/Switch_1:1
;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0
<linear/linear_model/linear_model/school_ncaa/cond/switch_f:0N
ExpandDims_1:0<linear/linear_model/linear_model/school_ncaa/cond/Switch_1:0z
;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0;linear/linear_model/linear_model/school_ncaa/cond/pred_id:0

4linear/linear_model/linear_model/seed/cond/cond_text4linear/linear_model/linear_model/seed/cond/pred_id:05linear/linear_model/linear_model/seed/cond/switch_t:0 *я
ExpandDims:0
>linear/linear_model/linear_model/seed/cond/ExpandDims/Switch:1
;linear/linear_model/linear_model/seed/cond/ExpandDims/dim:0
7linear/linear_model/linear_model/seed/cond/ExpandDims:0
4linear/linear_model/linear_model/seed/cond/pred_id:0
5linear/linear_model/linear_model/seed/cond/switch_t:0l
4linear/linear_model/linear_model/seed/cond/pred_id:04linear/linear_model/linear_model/seed/cond/pred_id:0N
ExpandDims:0>linear/linear_model/linear_model/seed/cond/ExpandDims/Switch:1
Ц
6linear/linear_model/linear_model/seed/cond/cond_text_14linear/linear_model/linear_model/seed/cond/pred_id:05linear/linear_model/linear_model/seed/cond/switch_f:0*
ExpandDims:0
5linear/linear_model/linear_model/seed/cond/Switch_1:0
5linear/linear_model/linear_model/seed/cond/Switch_1:1
4linear/linear_model/linear_model/seed/cond/pred_id:0
5linear/linear_model/linear_model/seed/cond/switch_f:0l
4linear/linear_model/linear_model/seed/cond/pred_id:04linear/linear_model/linear_model/seed/cond/pred_id:0E
ExpandDims:05linear/linear_model/linear_model/seed/cond/Switch_1:0"%
saved_model_main_op


group_deps*Ж
predictЊ
#
opp_ncaa
Placeholder_3:0

seed
Placeholder:0	
#
opp_seed
Placeholder_2:0	
&
school_ncaa
Placeholder_1:0E
logistic9
"linear/head/predictions/logistic:0џџџџџџџџџH
	class_ids;
$linear/head/predictions/ExpandDims:0	џџџџџџџџџO
probabilities>
'linear/head/predictions/probabilities:0џџџџџџџџџG
classes<
%linear/head/predictions/str_classes:0џџџџџџџџџP
logitsF
/linear/linear_model/linear_model/weighted_sum:0џџџџџџџџџtensorflow/serving/predict