яю(
■╙
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
Щ
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8▄р
О
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_8/gamma
З
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:*
dtype0
М
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_8/beta
Е
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/moving_mean
У
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:*
dtype0
в
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_8/moving_variance
Ы
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:*
dtype0
Ж
conv2d_152/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_152/kernel

%conv2d_152/kernel/Read/ReadVariableOpReadVariableOpconv2d_152/kernel*&
_output_shapes
:*
dtype0
v
conv2d_152/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_152/bias
o
#conv2d_152/bias/Read/ReadVariableOpReadVariableOpconv2d_152/bias*
_output_shapes
:*
dtype0
Ж
conv2d_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_153/kernel

%conv2d_153/kernel/Read/ReadVariableOpReadVariableOpconv2d_153/kernel*&
_output_shapes
:*
dtype0
v
conv2d_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_153/bias
o
#conv2d_153/bias/Read/ReadVariableOpReadVariableOpconv2d_153/bias*
_output_shapes
:*
dtype0
Ж
conv2d_154/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_154/kernel

%conv2d_154/kernel/Read/ReadVariableOpReadVariableOpconv2d_154/kernel*&
_output_shapes
:*
dtype0
v
conv2d_154/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_154/bias
o
#conv2d_154/bias/Read/ReadVariableOpReadVariableOpconv2d_154/bias*
_output_shapes
:*
dtype0
Ж
conv2d_155/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_155/kernel

%conv2d_155/kernel/Read/ReadVariableOpReadVariableOpconv2d_155/kernel*&
_output_shapes
:*
dtype0
v
conv2d_155/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_155/bias
o
#conv2d_155/bias/Read/ReadVariableOpReadVariableOpconv2d_155/bias*
_output_shapes
:*
dtype0
Ж
conv2d_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_156/kernel

%conv2d_156/kernel/Read/ReadVariableOpReadVariableOpconv2d_156/kernel*&
_output_shapes
: *
dtype0
v
conv2d_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_156/bias
o
#conv2d_156/bias/Read/ReadVariableOpReadVariableOpconv2d_156/bias*
_output_shapes
: *
dtype0
Ж
conv2d_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_157/kernel

%conv2d_157/kernel/Read/ReadVariableOpReadVariableOpconv2d_157/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_157/bias
o
#conv2d_157/bias/Read/ReadVariableOpReadVariableOpconv2d_157/bias*
_output_shapes
: *
dtype0
Ж
conv2d_158/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_158/kernel

%conv2d_158/kernel/Read/ReadVariableOpReadVariableOpconv2d_158/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_158/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_158/bias
o
#conv2d_158/bias/Read/ReadVariableOpReadVariableOpconv2d_158/bias*
_output_shapes
:@*
dtype0
Ж
conv2d_159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_159/kernel

%conv2d_159/kernel/Read/ReadVariableOpReadVariableOpconv2d_159/kernel*&
_output_shapes
:@@*
dtype0
v
conv2d_159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_159/bias
o
#conv2d_159/bias/Read/ReadVariableOpReadVariableOpconv2d_159/bias*
_output_shapes
:@*
dtype0
З
conv2d_160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*"
shared_nameconv2d_160/kernel
А
%conv2d_160/kernel/Read/ReadVariableOpReadVariableOpconv2d_160/kernel*'
_output_shapes
:@А*
dtype0
w
conv2d_160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А* 
shared_nameconv2d_160/bias
p
#conv2d_160/bias/Read/ReadVariableOpReadVariableOpconv2d_160/bias*
_output_shapes	
:А*
dtype0
И
conv2d_161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*"
shared_nameconv2d_161/kernel
Б
%conv2d_161/kernel/Read/ReadVariableOpReadVariableOpconv2d_161/kernel*(
_output_shapes
:АА*
dtype0
w
conv2d_161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А* 
shared_nameconv2d_161/bias
p
#conv2d_161/bias/Read/ReadVariableOpReadVariableOpconv2d_161/bias*
_output_shapes	
:А*
dtype0
З
conv2d_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:└@*"
shared_nameconv2d_162/kernel
А
%conv2d_162/kernel/Read/ReadVariableOpReadVariableOpconv2d_162/kernel*'
_output_shapes
:└@*
dtype0
v
conv2d_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_162/bias
o
#conv2d_162/bias/Read/ReadVariableOpReadVariableOpconv2d_162/bias*
_output_shapes
:@*
dtype0
Ж
conv2d_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_163/kernel

%conv2d_163/kernel/Read/ReadVariableOpReadVariableOpconv2d_163/kernel*&
_output_shapes
:@@*
dtype0
v
conv2d_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_163/bias
o
#conv2d_163/bias/Read/ReadVariableOpReadVariableOpconv2d_163/bias*
_output_shapes
:@*
dtype0
Ж
conv2d_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:` *"
shared_nameconv2d_164/kernel

%conv2d_164/kernel/Read/ReadVariableOpReadVariableOpconv2d_164/kernel*&
_output_shapes
:` *
dtype0
v
conv2d_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_164/bias
o
#conv2d_164/bias/Read/ReadVariableOpReadVariableOpconv2d_164/bias*
_output_shapes
: *
dtype0
Ж
conv2d_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_165/kernel

%conv2d_165/kernel/Read/ReadVariableOpReadVariableOpconv2d_165/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_165/bias
o
#conv2d_165/bias/Read/ReadVariableOpReadVariableOpconv2d_165/bias*
_output_shapes
: *
dtype0
Ж
conv2d_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameconv2d_166/kernel

%conv2d_166/kernel/Read/ReadVariableOpReadVariableOpconv2d_166/kernel*&
_output_shapes
:0*
dtype0
v
conv2d_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_166/bias
o
#conv2d_166/bias/Read/ReadVariableOpReadVariableOpconv2d_166/bias*
_output_shapes
:*
dtype0
Ж
conv2d_167/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_167/kernel

%conv2d_167/kernel/Read/ReadVariableOpReadVariableOpconv2d_167/kernel*&
_output_shapes
:*
dtype0
v
conv2d_167/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_167/bias
o
#conv2d_167/bias/Read/ReadVariableOpReadVariableOpconv2d_167/bias*
_output_shapes
:*
dtype0
Ж
conv2d_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_168/kernel

%conv2d_168/kernel/Read/ReadVariableOpReadVariableOpconv2d_168/kernel*&
_output_shapes
:*
dtype0
v
conv2d_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_168/bias
o
#conv2d_168/bias/Read/ReadVariableOpReadVariableOpconv2d_168/bias*
_output_shapes
:*
dtype0
Ж
conv2d_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_169/kernel

%conv2d_169/kernel/Read/ReadVariableOpReadVariableOpconv2d_169/kernel*&
_output_shapes
:*
dtype0
v
conv2d_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_169/bias
o
#conv2d_169/bias/Read/ReadVariableOpReadVariableOpconv2d_169/bias*
_output_shapes
:*
dtype0
Ж
conv2d_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_170/kernel

%conv2d_170/kernel/Read/ReadVariableOpReadVariableOpconv2d_170/kernel*&
_output_shapes
:*
dtype0
v
conv2d_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_170/bias
o
#conv2d_170/bias/Read/ReadVariableOpReadVariableOpconv2d_170/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/m
Х
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:*
dtype0
Ъ
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/m
У
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_152/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_152/kernel/m
Н
,Adam/conv2d_152/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_152/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_152/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_152/bias/m
}
*Adam/conv2d_152/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_152/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_153/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_153/kernel/m
Н
,Adam/conv2d_153/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_153/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_153/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_153/bias/m
}
*Adam/conv2d_153/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_153/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_154/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_154/kernel/m
Н
,Adam/conv2d_154/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_154/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_154/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_154/bias/m
}
*Adam/conv2d_154/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_154/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_155/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_155/kernel/m
Н
,Adam/conv2d_155/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_155/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_155/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_155/bias/m
}
*Adam/conv2d_155/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_155/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_156/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_156/kernel/m
Н
,Adam/conv2d_156/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_156/kernel/m*&
_output_shapes
: *
dtype0
Д
Adam/conv2d_156/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_156/bias/m
}
*Adam/conv2d_156/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_156/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_157/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_157/kernel/m
Н
,Adam/conv2d_157/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_157/kernel/m*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_157/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_157/bias/m
}
*Adam/conv2d_157/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_157/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_158/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_158/kernel/m
Н
,Adam/conv2d_158/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_158/kernel/m*&
_output_shapes
: @*
dtype0
Д
Adam/conv2d_158/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_158/bias/m
}
*Adam/conv2d_158/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_158/bias/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_159/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_159/kernel/m
Н
,Adam/conv2d_159/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_159/kernel/m*&
_output_shapes
:@@*
dtype0
Д
Adam/conv2d_159/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_159/bias/m
}
*Adam/conv2d_159/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_159/bias/m*
_output_shapes
:@*
dtype0
Х
Adam/conv2d_160/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*)
shared_nameAdam/conv2d_160/kernel/m
О
,Adam/conv2d_160/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_160/kernel/m*'
_output_shapes
:@А*
dtype0
Е
Adam/conv2d_160/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/conv2d_160/bias/m
~
*Adam/conv2d_160/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_160/bias/m*
_output_shapes	
:А*
dtype0
Ц
Adam/conv2d_161/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*)
shared_nameAdam/conv2d_161/kernel/m
П
,Adam/conv2d_161/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_161/kernel/m*(
_output_shapes
:АА*
dtype0
Е
Adam/conv2d_161/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/conv2d_161/bias/m
~
*Adam/conv2d_161/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_161/bias/m*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:└@*)
shared_nameAdam/conv2d_162/kernel/m
О
,Adam/conv2d_162/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/kernel/m*'
_output_shapes
:└@*
dtype0
Д
Adam/conv2d_162/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_162/bias/m
}
*Adam/conv2d_162/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/bias/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_163/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_163/kernel/m
Н
,Adam/conv2d_163/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/kernel/m*&
_output_shapes
:@@*
dtype0
Д
Adam/conv2d_163/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_163/bias/m
}
*Adam/conv2d_163/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/bias/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:` *)
shared_nameAdam/conv2d_164/kernel/m
Н
,Adam/conv2d_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/m*&
_output_shapes
:` *
dtype0
Д
Adam/conv2d_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_164/bias/m
}
*Adam/conv2d_164/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_165/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_165/kernel/m
Н
,Adam/conv2d_165/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/kernel/m*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_165/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_165/bias/m
}
*Adam/conv2d_165/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_166/kernel/m
Н
,Adam/conv2d_166/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/m*&
_output_shapes
:0*
dtype0
Д
Adam/conv2d_166/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_166/bias/m
}
*Adam/conv2d_166/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_167/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_167/kernel/m
Н
,Adam/conv2d_167/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_167/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_167/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_167/bias/m
}
*Adam/conv2d_167/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_167/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_168/kernel/m
Н
,Adam/conv2d_168/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_168/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_168/bias/m
}
*Adam/conv2d_168/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_169/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_169/kernel/m
Н
,Adam/conv2d_169/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_169/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_169/bias/m
}
*Adam/conv2d_169/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_170/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_170/kernel/m
Н
,Adam/conv2d_170/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_170/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_170/bias/m
}
*Adam/conv2d_170/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/bias/m*
_output_shapes
:*
dtype0
Ь
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/v
Х
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:*
dtype0
Ъ
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/v
У
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_152/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_152/kernel/v
Н
,Adam/conv2d_152/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_152/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_152/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_152/bias/v
}
*Adam/conv2d_152/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_152/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_153/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_153/kernel/v
Н
,Adam/conv2d_153/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_153/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_153/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_153/bias/v
}
*Adam/conv2d_153/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_153/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_154/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_154/kernel/v
Н
,Adam/conv2d_154/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_154/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_154/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_154/bias/v
}
*Adam/conv2d_154/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_154/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_155/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_155/kernel/v
Н
,Adam/conv2d_155/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_155/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_155/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_155/bias/v
}
*Adam/conv2d_155/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_155/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_156/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_156/kernel/v
Н
,Adam/conv2d_156/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_156/kernel/v*&
_output_shapes
: *
dtype0
Д
Adam/conv2d_156/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_156/bias/v
}
*Adam/conv2d_156/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_156/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_157/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_157/kernel/v
Н
,Adam/conv2d_157/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_157/kernel/v*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_157/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_157/bias/v
}
*Adam/conv2d_157/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_157/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_158/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_158/kernel/v
Н
,Adam/conv2d_158/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_158/kernel/v*&
_output_shapes
: @*
dtype0
Д
Adam/conv2d_158/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_158/bias/v
}
*Adam/conv2d_158/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_158/bias/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_159/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_159/kernel/v
Н
,Adam/conv2d_159/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_159/kernel/v*&
_output_shapes
:@@*
dtype0
Д
Adam/conv2d_159/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_159/bias/v
}
*Adam/conv2d_159/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_159/bias/v*
_output_shapes
:@*
dtype0
Х
Adam/conv2d_160/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*)
shared_nameAdam/conv2d_160/kernel/v
О
,Adam/conv2d_160/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_160/kernel/v*'
_output_shapes
:@А*
dtype0
Е
Adam/conv2d_160/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/conv2d_160/bias/v
~
*Adam/conv2d_160/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_160/bias/v*
_output_shapes	
:А*
dtype0
Ц
Adam/conv2d_161/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*)
shared_nameAdam/conv2d_161/kernel/v
П
,Adam/conv2d_161/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_161/kernel/v*(
_output_shapes
:АА*
dtype0
Е
Adam/conv2d_161/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/conv2d_161/bias/v
~
*Adam/conv2d_161/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_161/bias/v*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:└@*)
shared_nameAdam/conv2d_162/kernel/v
О
,Adam/conv2d_162/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/kernel/v*'
_output_shapes
:└@*
dtype0
Д
Adam/conv2d_162/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_162/bias/v
}
*Adam/conv2d_162/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/bias/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_163/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_163/kernel/v
Н
,Adam/conv2d_163/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/kernel/v*&
_output_shapes
:@@*
dtype0
Д
Adam/conv2d_163/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_163/bias/v
}
*Adam/conv2d_163/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/bias/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:` *)
shared_nameAdam/conv2d_164/kernel/v
Н
,Adam/conv2d_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/v*&
_output_shapes
:` *
dtype0
Д
Adam/conv2d_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_164/bias/v
}
*Adam/conv2d_164/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_165/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_165/kernel/v
Н
,Adam/conv2d_165/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/kernel/v*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_165/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_165/bias/v
}
*Adam/conv2d_165/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_166/kernel/v
Н
,Adam/conv2d_166/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/v*&
_output_shapes
:0*
dtype0
Д
Adam/conv2d_166/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_166/bias/v
}
*Adam/conv2d_166/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_167/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_167/kernel/v
Н
,Adam/conv2d_167/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_167/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_167/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_167/bias/v
}
*Adam/conv2d_167/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_167/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_168/kernel/v
Н
,Adam/conv2d_168/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_168/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_168/bias/v
}
*Adam/conv2d_168/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_169/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_169/kernel/v
Н
,Adam/conv2d_169/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_169/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_169/bias/v
}
*Adam/conv2d_169/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_170/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_170/kernel/v
Н
,Adam/conv2d_170/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_170/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_170/bias/v
}
*Adam/conv2d_170/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
сь
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ыь
valueРьBМь BДь
ё
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer-21
layer-22
layer_with_weights-13
layer-23
layer_with_weights-14
layer-24
layer-25
layer-26
layer_with_weights-15
layer-27
layer_with_weights-16
layer-28
layer-29
layer-30
 layer_with_weights-17
 layer-31
!layer_with_weights-18
!layer-32
"layer_with_weights-19
"layer-33
#layer-34
$layer-35
%	optimizer
&trainable_variables
'regularization_losses
(	variables
)	keras_api
*
signatures
 
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
Ч
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4trainable_variables
5regularization_losses
6	variables
7	keras_api
h

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
h

>kernel
?bias
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
R
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
h

Hkernel
Ibias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
h

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
R
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
h

Xkernel
Ybias
Ztrainable_variables
[regularization_losses
\	variables
]	keras_api
h

^kernel
_bias
`trainable_variables
aregularization_losses
b	variables
c	keras_api
R
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
h

hkernel
ibias
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
h

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
R
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
h

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
l

~kernel
bias
Аtrainable_variables
Бregularization_losses
В	variables
Г	keras_api
V
Дtrainable_variables
Еregularization_losses
Ж	variables
З	keras_api
V
Иtrainable_variables
Йregularization_losses
К	variables
Л	keras_api
n
Мkernel
	Нbias
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api
n
Тkernel
	Уbias
Фtrainable_variables
Хregularization_losses
Ц	variables
Ч	keras_api
V
Шtrainable_variables
Щregularization_losses
Ъ	variables
Ы	keras_api
V
Ьtrainable_variables
Эregularization_losses
Ю	variables
Я	keras_api
n
аkernel
	бbias
вtrainable_variables
гregularization_losses
д	variables
е	keras_api
n
жkernel
	зbias
иtrainable_variables
йregularization_losses
к	variables
л	keras_api
V
мtrainable_variables
нregularization_losses
о	variables
п	keras_api
V
░trainable_variables
▒regularization_losses
▓	variables
│	keras_api
n
┤kernel
	╡bias
╢trainable_variables
╖regularization_losses
╕	variables
╣	keras_api
n
║kernel
	╗bias
╝trainable_variables
╜regularization_losses
╛	variables
┐	keras_api
V
└trainable_variables
┴regularization_losses
┬	variables
├	keras_api
V
─trainable_variables
┼regularization_losses
╞	variables
╟	keras_api
n
╚kernel
	╔bias
╩trainable_variables
╦regularization_losses
╠	variables
═	keras_api
n
╬kernel
	╧bias
╨trainable_variables
╤regularization_losses
╥	variables
╙	keras_api
n
╘kernel
	╒bias
╓trainable_variables
╫regularization_losses
╪	variables
┘	keras_api
V
┌trainable_variables
█regularization_losses
▄	variables
▌	keras_api
V
▐trainable_variables
▀regularization_losses
р	variables
с	keras_api
Й
	тiter
уbeta_1
фbeta_2

хdecay
цlearning_rate0m▓1m│8m┤9m╡>m╢?m╖Hm╕Im╣Nm║Om╗Xm╝Ym╜^m╛_m┐hm└im┴nm┬om├xm─ym┼~m╞m╟	Мm╚	Нm╔	Тm╩	Уm╦	аm╠	бm═	жm╬	зm╧	┤m╨	╡m╤	║m╥	╗m╙	╚m╘	╔m╒	╬m╓	╧m╫	╘m╪	╒m┘0v┌1v█8v▄9v▌>v▐?v▀HvрIvсNvтOvуXvфYvх^vц_vчhvшivщnvъovыxvьyvэ~vюvя	МvЁ	Нvё	ТvЄ	Уvє	аvЇ	бvї	жvЎ	зvў	┤v°	╡v∙	║v·	╗v√	╚v№	╔v¤	╬v■	╧v 	╘vА	╒vБ
╚
00
11
82
93
>4
?5
H6
I7
N8
O9
X10
Y11
^12
_13
h14
i15
n16
o17
x18
y19
~20
21
М22
Н23
Т24
У25
а26
б27
ж28
з29
┤30
╡31
║32
╗33
╚34
╔35
╬36
╧37
╘38
╒39
 
╪
00
11
22
33
84
95
>6
?7
H8
I9
N10
O11
X12
Y13
^14
_15
h16
i17
n18
o19
x20
y21
~22
23
М24
Н25
Т26
У27
а28
б29
ж30
з31
┤32
╡33
║34
╗35
╚36
╔37
╬38
╧39
╘40
╒41
▓
чnon_trainable_variables
&trainable_variables
шmetrics
щlayer_metrics
ъlayers
'regularization_losses
(	variables
 ыlayer_regularization_losses
 
 
 
 
▓
ьnon_trainable_variables
+trainable_variables
эmetrics
юlayer_metrics
яlayers
,regularization_losses
-	variables
 Ёlayer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
22
33
▓
ёnon_trainable_variables
4trainable_variables
Єmetrics
єlayer_metrics
Їlayers
5regularization_losses
6	variables
 їlayer_regularization_losses
][
VARIABLE_VALUEconv2d_152/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_152/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
▓
Ўnon_trainable_variables
:trainable_variables
ўmetrics
°layer_metrics
∙layers
;regularization_losses
<	variables
 ·layer_regularization_losses
][
VARIABLE_VALUEconv2d_153/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_153/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
 

>0
?1
▓
√non_trainable_variables
@trainable_variables
№metrics
¤layer_metrics
■layers
Aregularization_losses
B	variables
  layer_regularization_losses
 
 
 
▓
Аnon_trainable_variables
Dtrainable_variables
Бmetrics
Вlayer_metrics
Гlayers
Eregularization_losses
F	variables
 Дlayer_regularization_losses
][
VARIABLE_VALUEconv2d_154/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_154/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
 

H0
I1
▓
Еnon_trainable_variables
Jtrainable_variables
Жmetrics
Зlayer_metrics
Иlayers
Kregularization_losses
L	variables
 Йlayer_regularization_losses
][
VARIABLE_VALUEconv2d_155/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_155/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1
 

N0
O1
▓
Кnon_trainable_variables
Ptrainable_variables
Лmetrics
Мlayer_metrics
Нlayers
Qregularization_losses
R	variables
 Оlayer_regularization_losses
 
 
 
▓
Пnon_trainable_variables
Ttrainable_variables
Рmetrics
Сlayer_metrics
Тlayers
Uregularization_losses
V	variables
 Уlayer_regularization_losses
][
VARIABLE_VALUEconv2d_156/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_156/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1
 

X0
Y1
▓
Фnon_trainable_variables
Ztrainable_variables
Хmetrics
Цlayer_metrics
Чlayers
[regularization_losses
\	variables
 Шlayer_regularization_losses
][
VARIABLE_VALUEconv2d_157/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_157/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1
 

^0
_1
▓
Щnon_trainable_variables
`trainable_variables
Ъmetrics
Ыlayer_metrics
Ьlayers
aregularization_losses
b	variables
 Эlayer_regularization_losses
 
 
 
▓
Юnon_trainable_variables
dtrainable_variables
Яmetrics
аlayer_metrics
бlayers
eregularization_losses
f	variables
 вlayer_regularization_losses
][
VARIABLE_VALUEconv2d_158/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_158/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

h0
i1
 

h0
i1
▓
гnon_trainable_variables
jtrainable_variables
дmetrics
еlayer_metrics
жlayers
kregularization_losses
l	variables
 зlayer_regularization_losses
][
VARIABLE_VALUEconv2d_159/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_159/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

n0
o1
 

n0
o1
▓
иnon_trainable_variables
ptrainable_variables
йmetrics
кlayer_metrics
лlayers
qregularization_losses
r	variables
 мlayer_regularization_losses
 
 
 
▓
нnon_trainable_variables
ttrainable_variables
оmetrics
пlayer_metrics
░layers
uregularization_losses
v	variables
 ▒layer_regularization_losses
][
VARIABLE_VALUEconv2d_160/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_160/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

x0
y1
 

x0
y1
▓
▓non_trainable_variables
ztrainable_variables
│metrics
┤layer_metrics
╡layers
{regularization_losses
|	variables
 ╢layer_regularization_losses
^\
VARIABLE_VALUEconv2d_161/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_161/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

~0
1
 

~0
1
╡
╖non_trainable_variables
Аtrainable_variables
╕metrics
╣layer_metrics
║layers
Бregularization_losses
В	variables
 ╗layer_regularization_losses
 
 
 
╡
╝non_trainable_variables
Дtrainable_variables
╜metrics
╛layer_metrics
┐layers
Еregularization_losses
Ж	variables
 └layer_regularization_losses
 
 
 
╡
┴non_trainable_variables
Иtrainable_variables
┬metrics
├layer_metrics
─layers
Йregularization_losses
К	variables
 ┼layer_regularization_losses
^\
VARIABLE_VALUEconv2d_162/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_162/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

М0
Н1
 

М0
Н1
╡
╞non_trainable_variables
Оtrainable_variables
╟metrics
╚layer_metrics
╔layers
Пregularization_losses
Р	variables
 ╩layer_regularization_losses
^\
VARIABLE_VALUEconv2d_163/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_163/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

Т0
У1
 

Т0
У1
╡
╦non_trainable_variables
Фtrainable_variables
╠metrics
═layer_metrics
╬layers
Хregularization_losses
Ц	variables
 ╧layer_regularization_losses
 
 
 
╡
╨non_trainable_variables
Шtrainable_variables
╤metrics
╥layer_metrics
╙layers
Щregularization_losses
Ъ	variables
 ╘layer_regularization_losses
 
 
 
╡
╒non_trainable_variables
Ьtrainable_variables
╓metrics
╫layer_metrics
╪layers
Эregularization_losses
Ю	variables
 ┘layer_regularization_losses
^\
VARIABLE_VALUEconv2d_164/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_164/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

а0
б1
 

а0
б1
╡
┌non_trainable_variables
вtrainable_variables
█metrics
▄layer_metrics
▌layers
гregularization_losses
д	variables
 ▐layer_regularization_losses
^\
VARIABLE_VALUEconv2d_165/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_165/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

ж0
з1
 

ж0
з1
╡
▀non_trainable_variables
иtrainable_variables
рmetrics
сlayer_metrics
тlayers
йregularization_losses
к	variables
 уlayer_regularization_losses
 
 
 
╡
фnon_trainable_variables
мtrainable_variables
хmetrics
цlayer_metrics
чlayers
нregularization_losses
о	variables
 шlayer_regularization_losses
 
 
 
╡
щnon_trainable_variables
░trainable_variables
ъmetrics
ыlayer_metrics
ьlayers
▒regularization_losses
▓	variables
 эlayer_regularization_losses
^\
VARIABLE_VALUEconv2d_166/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_166/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

┤0
╡1
 

┤0
╡1
╡
юnon_trainable_variables
╢trainable_variables
яmetrics
Ёlayer_metrics
ёlayers
╖regularization_losses
╕	variables
 Єlayer_regularization_losses
^\
VARIABLE_VALUEconv2d_167/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_167/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

║0
╗1
 

║0
╗1
╡
єnon_trainable_variables
╝trainable_variables
Їmetrics
їlayer_metrics
Ўlayers
╜regularization_losses
╛	variables
 ўlayer_regularization_losses
 
 
 
╡
°non_trainable_variables
└trainable_variables
∙metrics
·layer_metrics
√layers
┴regularization_losses
┬	variables
 №layer_regularization_losses
 
 
 
╡
¤non_trainable_variables
─trainable_variables
■metrics
 layer_metrics
Аlayers
┼regularization_losses
╞	variables
 Бlayer_regularization_losses
^\
VARIABLE_VALUEconv2d_168/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_168/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE

╚0
╔1
 

╚0
╔1
╡
Вnon_trainable_variables
╩trainable_variables
Гmetrics
Дlayer_metrics
Еlayers
╦regularization_losses
╠	variables
 Жlayer_regularization_losses
^\
VARIABLE_VALUEconv2d_169/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_169/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE

╬0
╧1
 

╬0
╧1
╡
Зnon_trainable_variables
╨trainable_variables
Иmetrics
Йlayer_metrics
Кlayers
╤regularization_losses
╥	variables
 Лlayer_regularization_losses
^\
VARIABLE_VALUEconv2d_170/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_170/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE

╘0
╒1
 

╘0
╒1
╡
Мnon_trainable_variables
╓trainable_variables
Нmetrics
Оlayer_metrics
Пlayers
╫regularization_losses
╪	variables
 Рlayer_regularization_losses
 
 
 
╡
Сnon_trainable_variables
┌trainable_variables
Тmetrics
Уlayer_metrics
Фlayers
█regularization_losses
▄	variables
 Хlayer_regularization_losses
 
 
 
╡
Цnon_trainable_variables
▐trainable_variables
Чmetrics
Шlayer_metrics
Щlayers
▀regularization_losses
р	variables
 Ъlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

20
31
 
Ы0
Ь1
Э2
Ю3
 
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
 
 
 
 
 
 

20
31
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Яtotal

аcount
б	variables
в	keras_api
I

гtotal

дcount
е
_fn_kwargs
ж	variables
з	keras_api
I

иtotal

йcount
к
_fn_kwargs
л	variables
м	keras_api
I

нtotal

оcount
п
_fn_kwargs
░	variables
▒	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Я0
а1

б	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

г0
д1

ж	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

и0
й1

л	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

н0
о1

░	variables
КЗ
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_152/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_152/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_153/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_153/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_154/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_154/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_155/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_155/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_156/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_156/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_157/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_157/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_158/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_158/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_159/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_159/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_160/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_160/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_161/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_161/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_162/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_162/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_163/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_163/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_164/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_164/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_165/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_165/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_166/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_166/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_167/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_167/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_168/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_168/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_169/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_169/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_170/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_170/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_152/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_152/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_153/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_153/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_154/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_154/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_155/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_155/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_156/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_156/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_157/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_157/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_158/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_158/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_159/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_159/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_160/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_160/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_161/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_161/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_162/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_162/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_163/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_163/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_164/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_164/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_165/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_165/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_166/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_166/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_167/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_167/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_168/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_168/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_169/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_169/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_170/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_170/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Р
serving_default_RGB_InputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
├	
StatefulPartitionedCallStatefulPartitionedCallserving_default_RGB_Inputbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_152/kernelconv2d_152/biasconv2d_153/kernelconv2d_153/biasconv2d_154/kernelconv2d_154/biasconv2d_155/kernelconv2d_155/biasconv2d_156/kernelconv2d_156/biasconv2d_157/kernelconv2d_157/biasconv2d_158/kernelconv2d_158/biasconv2d_159/kernelconv2d_159/biasconv2d_160/kernelconv2d_160/biasconv2d_161/kernelconv2d_161/biasconv2d_162/kernelconv2d_162/biasconv2d_163/kernelconv2d_163/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_166/kernelconv2d_166/biasconv2d_167/kernelconv2d_167/biasconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_35244
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц/
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp%conv2d_152/kernel/Read/ReadVariableOp#conv2d_152/bias/Read/ReadVariableOp%conv2d_153/kernel/Read/ReadVariableOp#conv2d_153/bias/Read/ReadVariableOp%conv2d_154/kernel/Read/ReadVariableOp#conv2d_154/bias/Read/ReadVariableOp%conv2d_155/kernel/Read/ReadVariableOp#conv2d_155/bias/Read/ReadVariableOp%conv2d_156/kernel/Read/ReadVariableOp#conv2d_156/bias/Read/ReadVariableOp%conv2d_157/kernel/Read/ReadVariableOp#conv2d_157/bias/Read/ReadVariableOp%conv2d_158/kernel/Read/ReadVariableOp#conv2d_158/bias/Read/ReadVariableOp%conv2d_159/kernel/Read/ReadVariableOp#conv2d_159/bias/Read/ReadVariableOp%conv2d_160/kernel/Read/ReadVariableOp#conv2d_160/bias/Read/ReadVariableOp%conv2d_161/kernel/Read/ReadVariableOp#conv2d_161/bias/Read/ReadVariableOp%conv2d_162/kernel/Read/ReadVariableOp#conv2d_162/bias/Read/ReadVariableOp%conv2d_163/kernel/Read/ReadVariableOp#conv2d_163/bias/Read/ReadVariableOp%conv2d_164/kernel/Read/ReadVariableOp#conv2d_164/bias/Read/ReadVariableOp%conv2d_165/kernel/Read/ReadVariableOp#conv2d_165/bias/Read/ReadVariableOp%conv2d_166/kernel/Read/ReadVariableOp#conv2d_166/bias/Read/ReadVariableOp%conv2d_167/kernel/Read/ReadVariableOp#conv2d_167/bias/Read/ReadVariableOp%conv2d_168/kernel/Read/ReadVariableOp#conv2d_168/bias/Read/ReadVariableOp%conv2d_169/kernel/Read/ReadVariableOp#conv2d_169/bias/Read/ReadVariableOp%conv2d_170/kernel/Read/ReadVariableOp#conv2d_170/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp,Adam/conv2d_152/kernel/m/Read/ReadVariableOp*Adam/conv2d_152/bias/m/Read/ReadVariableOp,Adam/conv2d_153/kernel/m/Read/ReadVariableOp*Adam/conv2d_153/bias/m/Read/ReadVariableOp,Adam/conv2d_154/kernel/m/Read/ReadVariableOp*Adam/conv2d_154/bias/m/Read/ReadVariableOp,Adam/conv2d_155/kernel/m/Read/ReadVariableOp*Adam/conv2d_155/bias/m/Read/ReadVariableOp,Adam/conv2d_156/kernel/m/Read/ReadVariableOp*Adam/conv2d_156/bias/m/Read/ReadVariableOp,Adam/conv2d_157/kernel/m/Read/ReadVariableOp*Adam/conv2d_157/bias/m/Read/ReadVariableOp,Adam/conv2d_158/kernel/m/Read/ReadVariableOp*Adam/conv2d_158/bias/m/Read/ReadVariableOp,Adam/conv2d_159/kernel/m/Read/ReadVariableOp*Adam/conv2d_159/bias/m/Read/ReadVariableOp,Adam/conv2d_160/kernel/m/Read/ReadVariableOp*Adam/conv2d_160/bias/m/Read/ReadVariableOp,Adam/conv2d_161/kernel/m/Read/ReadVariableOp*Adam/conv2d_161/bias/m/Read/ReadVariableOp,Adam/conv2d_162/kernel/m/Read/ReadVariableOp*Adam/conv2d_162/bias/m/Read/ReadVariableOp,Adam/conv2d_163/kernel/m/Read/ReadVariableOp*Adam/conv2d_163/bias/m/Read/ReadVariableOp,Adam/conv2d_164/kernel/m/Read/ReadVariableOp*Adam/conv2d_164/bias/m/Read/ReadVariableOp,Adam/conv2d_165/kernel/m/Read/ReadVariableOp*Adam/conv2d_165/bias/m/Read/ReadVariableOp,Adam/conv2d_166/kernel/m/Read/ReadVariableOp*Adam/conv2d_166/bias/m/Read/ReadVariableOp,Adam/conv2d_167/kernel/m/Read/ReadVariableOp*Adam/conv2d_167/bias/m/Read/ReadVariableOp,Adam/conv2d_168/kernel/m/Read/ReadVariableOp*Adam/conv2d_168/bias/m/Read/ReadVariableOp,Adam/conv2d_169/kernel/m/Read/ReadVariableOp*Adam/conv2d_169/bias/m/Read/ReadVariableOp,Adam/conv2d_170/kernel/m/Read/ReadVariableOp*Adam/conv2d_170/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp,Adam/conv2d_152/kernel/v/Read/ReadVariableOp*Adam/conv2d_152/bias/v/Read/ReadVariableOp,Adam/conv2d_153/kernel/v/Read/ReadVariableOp*Adam/conv2d_153/bias/v/Read/ReadVariableOp,Adam/conv2d_154/kernel/v/Read/ReadVariableOp*Adam/conv2d_154/bias/v/Read/ReadVariableOp,Adam/conv2d_155/kernel/v/Read/ReadVariableOp*Adam/conv2d_155/bias/v/Read/ReadVariableOp,Adam/conv2d_156/kernel/v/Read/ReadVariableOp*Adam/conv2d_156/bias/v/Read/ReadVariableOp,Adam/conv2d_157/kernel/v/Read/ReadVariableOp*Adam/conv2d_157/bias/v/Read/ReadVariableOp,Adam/conv2d_158/kernel/v/Read/ReadVariableOp*Adam/conv2d_158/bias/v/Read/ReadVariableOp,Adam/conv2d_159/kernel/v/Read/ReadVariableOp*Adam/conv2d_159/bias/v/Read/ReadVariableOp,Adam/conv2d_160/kernel/v/Read/ReadVariableOp*Adam/conv2d_160/bias/v/Read/ReadVariableOp,Adam/conv2d_161/kernel/v/Read/ReadVariableOp*Adam/conv2d_161/bias/v/Read/ReadVariableOp,Adam/conv2d_162/kernel/v/Read/ReadVariableOp*Adam/conv2d_162/bias/v/Read/ReadVariableOp,Adam/conv2d_163/kernel/v/Read/ReadVariableOp*Adam/conv2d_163/bias/v/Read/ReadVariableOp,Adam/conv2d_164/kernel/v/Read/ReadVariableOp*Adam/conv2d_164/bias/v/Read/ReadVariableOp,Adam/conv2d_165/kernel/v/Read/ReadVariableOp*Adam/conv2d_165/bias/v/Read/ReadVariableOp,Adam/conv2d_166/kernel/v/Read/ReadVariableOp*Adam/conv2d_166/bias/v/Read/ReadVariableOp,Adam/conv2d_167/kernel/v/Read/ReadVariableOp*Adam/conv2d_167/bias/v/Read/ReadVariableOp,Adam/conv2d_168/kernel/v/Read/ReadVariableOp*Adam/conv2d_168/bias/v/Read/ReadVariableOp,Adam/conv2d_169/kernel/v/Read/ReadVariableOp*Adam/conv2d_169/bias/v/Read/ReadVariableOp,Adam/conv2d_170/kernel/v/Read/ReadVariableOp*Adam/conv2d_170/bias/v/Read/ReadVariableOpConst*Ч
TinП
М2Й	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_36846
╒
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_152/kernelconv2d_152/biasconv2d_153/kernelconv2d_153/biasconv2d_154/kernelconv2d_154/biasconv2d_155/kernelconv2d_155/biasconv2d_156/kernelconv2d_156/biasconv2d_157/kernelconv2d_157/biasconv2d_158/kernelconv2d_158/biasconv2d_159/kernelconv2d_159/biasconv2d_160/kernelconv2d_160/biasconv2d_161/kernelconv2d_161/biasconv2d_162/kernelconv2d_162/biasconv2d_163/kernelconv2d_163/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_166/kernelconv2d_166/biasconv2d_167/kernelconv2d_167/biasconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/conv2d_152/kernel/mAdam/conv2d_152/bias/mAdam/conv2d_153/kernel/mAdam/conv2d_153/bias/mAdam/conv2d_154/kernel/mAdam/conv2d_154/bias/mAdam/conv2d_155/kernel/mAdam/conv2d_155/bias/mAdam/conv2d_156/kernel/mAdam/conv2d_156/bias/mAdam/conv2d_157/kernel/mAdam/conv2d_157/bias/mAdam/conv2d_158/kernel/mAdam/conv2d_158/bias/mAdam/conv2d_159/kernel/mAdam/conv2d_159/bias/mAdam/conv2d_160/kernel/mAdam/conv2d_160/bias/mAdam/conv2d_161/kernel/mAdam/conv2d_161/bias/mAdam/conv2d_162/kernel/mAdam/conv2d_162/bias/mAdam/conv2d_163/kernel/mAdam/conv2d_163/bias/mAdam/conv2d_164/kernel/mAdam/conv2d_164/bias/mAdam/conv2d_165/kernel/mAdam/conv2d_165/bias/mAdam/conv2d_166/kernel/mAdam/conv2d_166/bias/mAdam/conv2d_167/kernel/mAdam/conv2d_167/bias/mAdam/conv2d_168/kernel/mAdam/conv2d_168/bias/mAdam/conv2d_169/kernel/mAdam/conv2d_169/bias/mAdam/conv2d_170/kernel/mAdam/conv2d_170/bias/m"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/conv2d_152/kernel/vAdam/conv2d_152/bias/vAdam/conv2d_153/kernel/vAdam/conv2d_153/bias/vAdam/conv2d_154/kernel/vAdam/conv2d_154/bias/vAdam/conv2d_155/kernel/vAdam/conv2d_155/bias/vAdam/conv2d_156/kernel/vAdam/conv2d_156/bias/vAdam/conv2d_157/kernel/vAdam/conv2d_157/bias/vAdam/conv2d_158/kernel/vAdam/conv2d_158/bias/vAdam/conv2d_159/kernel/vAdam/conv2d_159/bias/vAdam/conv2d_160/kernel/vAdam/conv2d_160/bias/vAdam/conv2d_161/kernel/vAdam/conv2d_161/bias/vAdam/conv2d_162/kernel/vAdam/conv2d_162/bias/vAdam/conv2d_163/kernel/vAdam/conv2d_163/bias/vAdam/conv2d_164/kernel/vAdam/conv2d_164/bias/vAdam/conv2d_165/kernel/vAdam/conv2d_165/bias/vAdam/conv2d_166/kernel/vAdam/conv2d_166/bias/vAdam/conv2d_167/kernel/vAdam/conv2d_167/bias/vAdam/conv2d_168/kernel/vAdam/conv2d_168/bias/vAdam/conv2d_169/kernel/vAdam/conv2d_169/bias/vAdam/conv2d_170/kernel/vAdam/conv2d_170/bias/v*Ц
TinО
Л2И*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_37261№Ж
╪

▐
E__inference_conv2d_161_layer_call_and_return_conditional_losses_36177

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         00А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         00А
 
_user_specified_nameinputs
И
g
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_33832

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul╒
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborд
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й

*__inference_conv2d_152_layer_call_fn_36006

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_340202
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_157_layer_call_and_return_conditional_losses_34157

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
╬
Ў
'__inference_model_8_layer_call_fn_35145
	rgb_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCall	rgb_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_350582
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Б

*__inference_conv2d_159_layer_call_fn_36146

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_342122
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_164_layer_call_and_return_conditional_losses_34382

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:` *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└`
 
_user_specified_nameinputs
Й

*__inference_conv2d_165_layer_call_fn_36292

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_344092
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
Т
s
I__inference_concatenate_34_layer_call_and_return_conditional_losses_34433

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЙ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА02
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА02

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                            :         АА:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:YU
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╥

▐
E__inference_conv2d_162_layer_call_and_return_conditional_losses_34311

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:└@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ``└::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ``└
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35878

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_154_layer_call_and_return_conditional_losses_34075

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
тЮ
Ш
B__inference_model_8_layer_call_and_return_conditional_losses_35058

inputs
batch_normalization_8_34939
batch_normalization_8_34941
batch_normalization_8_34943
batch_normalization_8_34945
conv2d_152_34948
conv2d_152_34950
conv2d_153_34953
conv2d_153_34955
conv2d_154_34959
conv2d_154_34961
conv2d_155_34964
conv2d_155_34966
conv2d_156_34970
conv2d_156_34972
conv2d_157_34975
conv2d_157_34977
conv2d_158_34981
conv2d_158_34983
conv2d_159_34986
conv2d_159_34988
conv2d_160_34992
conv2d_160_34994
conv2d_161_34997
conv2d_161_34999
conv2d_162_35004
conv2d_162_35006
conv2d_163_35009
conv2d_163_35011
conv2d_164_35016
conv2d_164_35018
conv2d_165_35021
conv2d_165_35023
conv2d_166_35028
conv2d_166_35030
conv2d_167_35033
conv2d_167_35035
conv2d_168_35040
conv2d_168_35042
conv2d_169_35045
conv2d_169_35047
conv2d_170_35050
conv2d_170_35052
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCall°
 gaussian_noise_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339232"
 gaussian_noise_8/PartitionedCall└
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_8/PartitionedCall:output:0batch_normalization_8_34939batch_normalization_8_34941batch_normalization_8_34943batch_normalization_8_34945*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339732/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_34948conv2d_152_34950*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_340202$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_34953conv2d_153_34955*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_340472$
"conv2d_153/StatefulPartitionedCallЭ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_337582"
 max_pooling2d_32/PartitionedCall╦
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_34959conv2d_154_34961*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_340752$
"conv2d_154/StatefulPartitionedCall═
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_34964conv2d_155_34966*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_341022$
"conv2d_155/StatefulPartitionedCallЭ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_337702"
 max_pooling2d_33/PartitionedCall╦
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_34970conv2d_156_34972*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_341302$
"conv2d_156/StatefulPartitionedCall═
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_34975conv2d_157_34977*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_341572$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `` * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_337822"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_34981conv2d_158_34983*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_341852$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_34986conv2d_159_34988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_342122$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_337942"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_34992conv2d_160_34994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_342402$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_34997conv2d_161_34999*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_342672$
"conv2d_161/StatefulPartitionedCallо
 up_sampling2d_32/PartitionedCallPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_338132"
 up_sampling2d_32/PartitionedCall┬
concatenate_32/PartitionedCallPartitionedCall)up_sampling2d_32/PartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ``└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_342912 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_35004conv2d_162_35006*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_343112$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_35009conv2d_163_35011*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_343382$
"conv2d_163/StatefulPartitionedCallн
 up_sampling2d_33/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_338322"
 up_sampling2d_33/PartitionedCall├
concatenate_33/PartitionedCallPartitionedCall)up_sampling2d_33/PartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_343622 
concatenate_33/PartitionedCall╔
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_35016conv2d_164_35018*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_343822$
"conv2d_164/StatefulPartitionedCall═
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_35021conv2d_165_35023*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_344092$
"conv2d_165/StatefulPartitionedCallн
 up_sampling2d_34/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_338512"
 up_sampling2d_34/PartitionedCall├
concatenate_34/PartitionedCallPartitionedCall)up_sampling2d_34/PartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_344332 
concatenate_34/PartitionedCall╔
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_35028conv2d_166_35030*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_344532$
"conv2d_166/StatefulPartitionedCall═
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_35033conv2d_167_35035*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_344802$
"conv2d_167/StatefulPartitionedCallн
 up_sampling2d_35/PartitionedCallPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_338702"
 up_sampling2d_35/PartitionedCall├
concatenate_35/PartitionedCallPartitionedCall)up_sampling2d_35/PartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_345042 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_35040conv2d_168_35042*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_345242$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_35045conv2d_169_35047*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_345512$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_35050conv2d_170_35052*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_345782$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_338852
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_338982"
 zero_padding2d_8/PartitionedCallЎ
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2H
"conv2d_152/StatefulPartitionedCall"conv2d_152/StatefulPartitionedCall2H
"conv2d_153/StatefulPartitionedCall"conv2d_153/StatefulPartitionedCall2H
"conv2d_154/StatefulPartitionedCall"conv2d_154/StatefulPartitionedCall2H
"conv2d_155/StatefulPartitionedCall"conv2d_155/StatefulPartitionedCall2H
"conv2d_156/StatefulPartitionedCall"conv2d_156/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2H
"conv2d_162/StatefulPartitionedCall"conv2d_162/StatefulPartitionedCall2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2H
"conv2d_167/StatefulPartitionedCall"conv2d_167/StatefulPartitionedCall2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╪

▐
E__inference_conv2d_161_layer_call_and_return_conditional_losses_34267

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         00А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         00А
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_163_layer_call_and_return_conditional_losses_34338

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
╦
L
0__inference_gaussian_noise_8_layer_call_fn_35858

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339232
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_165_layer_call_and_return_conditional_losses_36283

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
Б

*__inference_conv2d_163_layer_call_fn_36239

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_343382
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Ю
и
5__inference_batch_normalization_8_layer_call_fn_35909

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_337102
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_153_layer_call_and_return_conditional_losses_34047

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_154_layer_call_fn_36046

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_340752
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_168_layer_call_and_return_conditional_losses_34524

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
√
g
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_33923

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_155_layer_call_and_return_conditional_losses_34102

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_158_layer_call_and_return_conditional_losses_34185

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `` ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `` 
 
_user_specified_nameinputs
√
g
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35848

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
А
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_33973

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_157_layer_call_and_return_conditional_losses_36097

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_156_layer_call_and_return_conditional_losses_36077

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└
 
_user_specified_nameinputs
А
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35960

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_166_layer_call_fn_36325

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_344532
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА0::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА0
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_169_layer_call_and_return_conditional_losses_34551

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┼
є
'__inference_model_8_layer_call_fn_35833

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_350582
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
А
Z
.__inference_concatenate_35_layer_call_fn_36358
inputs_0
inputs_1
identityс
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_345042
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
И
g
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_33851

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul╒
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborд
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_35_layer_call_fn_33800

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_337942
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_34_layer_call_fn_33788

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_337822
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_156_layer_call_and_return_conditional_losses_34130

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└
 
_user_specified_nameinputs
░
L
0__inference_up_sampling2d_33_layer_call_fn_33838

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_338322
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
g
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_33870

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul╒
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborд
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Г

*__inference_conv2d_160_layer_call_fn_36166

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_342402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_33741

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Б

*__inference_conv2d_158_layer_call_fn_36126

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_341852
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `` ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `` 
 
_user_specified_nameinputs
╒

▐
E__inference_conv2d_160_layer_call_and_return_conditional_losses_36157

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         00А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_33770

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
s
I__inference_concatenate_35_layer_call_and_return_conditional_losses_34504

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЙ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:YU
1
_output_shapes
:         АА
 
_user_specified_nameinputs
├
є
'__inference_model_8_layer_call_fn_35744

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_348462
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
О
s
I__inference_concatenate_32_layer_call_and_return_conditional_losses_34291

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisИ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         ``└2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         ``└2

Identity"
identityIdentity:output:0*\
_input_shapesK
I:,                           А:         ``@:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:WS
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
р
и
5__inference_batch_normalization_8_layer_call_fn_35986

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339732
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_168_layer_call_and_return_conditional_losses_36369

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_zero_padding2d_8_layer_call_fn_33904

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_338982
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐
и
5__inference_batch_normalization_8_layer_call_fn_35973

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339552
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_167_layer_call_fn_36345

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_344802
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_166_layer_call_and_return_conditional_losses_34453

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА0
 
_user_specified_nameinputs
╛

j
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35844

inputs
identityИD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
random_normal/stddev╪
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:         АА*
dtype0*
seed▒ х)*
seed2Х╕╜2$
"random_normal/RandomStandardNormal╡
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2
random_normal/mulХ
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2
random_normalj
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:         АА2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_154_layer_call_and_return_conditional_losses_36037

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_155_layer_call_fn_36066

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_341022
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_33_layer_call_fn_33776

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_337702
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_152_layer_call_and_return_conditional_losses_34020

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_157_layer_call_fn_36106

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_341572
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
Е

*__inference_conv2d_161_layer_call_fn_36186

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_342672
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         00А
 
_user_specified_nameinputs
Г

*__inference_conv2d_162_layer_call_fn_36219

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_343112
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ``└::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ``└
 
_user_specified_nameinputs
ю▓
╖
B__inference_model_8_layer_call_and_return_conditional_losses_35454

inputs1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_152_conv2d_readvariableop_resource.
*conv2d_152_biasadd_readvariableop_resource-
)conv2d_153_conv2d_readvariableop_resource.
*conv2d_153_biasadd_readvariableop_resource-
)conv2d_154_conv2d_readvariableop_resource.
*conv2d_154_biasadd_readvariableop_resource-
)conv2d_155_conv2d_readvariableop_resource.
*conv2d_155_biasadd_readvariableop_resource-
)conv2d_156_conv2d_readvariableop_resource.
*conv2d_156_biasadd_readvariableop_resource-
)conv2d_157_conv2d_readvariableop_resource.
*conv2d_157_biasadd_readvariableop_resource-
)conv2d_158_conv2d_readvariableop_resource.
*conv2d_158_biasadd_readvariableop_resource-
)conv2d_159_conv2d_readvariableop_resource.
*conv2d_159_biasadd_readvariableop_resource-
)conv2d_160_conv2d_readvariableop_resource.
*conv2d_160_biasadd_readvariableop_resource-
)conv2d_161_conv2d_readvariableop_resource.
*conv2d_161_biasadd_readvariableop_resource-
)conv2d_162_conv2d_readvariableop_resource.
*conv2d_162_biasadd_readvariableop_resource-
)conv2d_163_conv2d_readvariableop_resource.
*conv2d_163_biasadd_readvariableop_resource-
)conv2d_164_conv2d_readvariableop_resource.
*conv2d_164_biasadd_readvariableop_resource-
)conv2d_165_conv2d_readvariableop_resource.
*conv2d_165_biasadd_readvariableop_resource-
)conv2d_166_conv2d_readvariableop_resource.
*conv2d_166_biasadd_readvariableop_resource-
)conv2d_167_conv2d_readvariableop_resource.
*conv2d_167_biasadd_readvariableop_resource-
)conv2d_168_conv2d_readvariableop_resource.
*conv2d_168_biasadd_readvariableop_resource-
)conv2d_169_conv2d_readvariableop_resource.
*conv2d_169_biasadd_readvariableop_resource-
)conv2d_170_conv2d_readvariableop_resource.
*conv2d_170_biasadd_readvariableop_resource
identityИв$batch_normalization_8/AssignNewValueв&batch_normalization_8/AssignNewValue_1в5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в!conv2d_152/BiasAdd/ReadVariableOpв conv2d_152/Conv2D/ReadVariableOpв!conv2d_153/BiasAdd/ReadVariableOpв conv2d_153/Conv2D/ReadVariableOpв!conv2d_154/BiasAdd/ReadVariableOpв conv2d_154/Conv2D/ReadVariableOpв!conv2d_155/BiasAdd/ReadVariableOpв conv2d_155/Conv2D/ReadVariableOpв!conv2d_156/BiasAdd/ReadVariableOpв conv2d_156/Conv2D/ReadVariableOpв!conv2d_157/BiasAdd/ReadVariableOpв conv2d_157/Conv2D/ReadVariableOpв!conv2d_158/BiasAdd/ReadVariableOpв conv2d_158/Conv2D/ReadVariableOpв!conv2d_159/BiasAdd/ReadVariableOpв conv2d_159/Conv2D/ReadVariableOpв!conv2d_160/BiasAdd/ReadVariableOpв conv2d_160/Conv2D/ReadVariableOpв!conv2d_161/BiasAdd/ReadVariableOpв conv2d_161/Conv2D/ReadVariableOpв!conv2d_162/BiasAdd/ReadVariableOpв conv2d_162/Conv2D/ReadVariableOpв!conv2d_163/BiasAdd/ReadVariableOpв conv2d_163/Conv2D/ReadVariableOpв!conv2d_164/BiasAdd/ReadVariableOpв conv2d_164/Conv2D/ReadVariableOpв!conv2d_165/BiasAdd/ReadVariableOpв conv2d_165/Conv2D/ReadVariableOpв!conv2d_166/BiasAdd/ReadVariableOpв conv2d_166/Conv2D/ReadVariableOpв!conv2d_167/BiasAdd/ReadVariableOpв conv2d_167/Conv2D/ReadVariableOpв!conv2d_168/BiasAdd/ReadVariableOpв conv2d_168/Conv2D/ReadVariableOpв!conv2d_169/BiasAdd/ReadVariableOpв conv2d_169/Conv2D/ReadVariableOpв!conv2d_170/BiasAdd/ReadVariableOpв conv2d_170/Conv2D/ReadVariableOpf
gaussian_noise_8/ShapeShapeinputs*
T0*
_output_shapes
:2
gaussian_noise_8/ShapeП
#gaussian_noise_8/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#gaussian_noise_8/random_normal/meanУ
%gaussian_noise_8/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2'
%gaussian_noise_8/random_normal/stddevЛ
3gaussian_noise_8/random_normal/RandomStandardNormalRandomStandardNormalgaussian_noise_8/Shape:output:0*
T0*1
_output_shapes
:         АА*
dtype0*
seed▒ х)*
seed2СЕЮ25
3gaussian_noise_8/random_normal/RandomStandardNormal∙
"gaussian_noise_8/random_normal/mulMul<gaussian_noise_8/random_normal/RandomStandardNormal:output:0.gaussian_noise_8/random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2$
"gaussian_noise_8/random_normal/mul┘
gaussian_noise_8/random_normalAdd&gaussian_noise_8/random_normal/mul:z:0,gaussian_noise_8/random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2 
gaussian_noise_8/random_normalЭ
gaussian_noise_8/addAddV2inputs"gaussian_noise_8/random_normal:z:0*
T0*1
_output_shapes
:         АА2
gaussian_noise_8/add╢
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_8/ReadVariableOp╝
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_8/ReadVariableOp_1щ
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ё
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3gaussian_noise_8/add:z:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_8/FusedBatchNormV3▒
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValue┐
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_8/AssignNewValue_1╢
 conv2d_152/Conv2D/ReadVariableOpReadVariableOp)conv2d_152_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_152/Conv2D/ReadVariableOpъ
conv2d_152/Conv2DConv2D*batch_normalization_8/FusedBatchNormV3:y:0(conv2d_152/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_152/Conv2Dн
!conv2d_152/BiasAdd/ReadVariableOpReadVariableOp*conv2d_152_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_152/BiasAdd/ReadVariableOp╢
conv2d_152/BiasAddBiasAddconv2d_152/Conv2D:output:0)conv2d_152/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_152/BiasAddГ
conv2d_152/ReluReluconv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_152/Relu╢
 conv2d_153/Conv2D/ReadVariableOpReadVariableOp)conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_153/Conv2D/ReadVariableOp▌
conv2d_153/Conv2DConv2Dconv2d_152/Relu:activations:0(conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_153/Conv2Dн
!conv2d_153/BiasAdd/ReadVariableOpReadVariableOp*conv2d_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_153/BiasAdd/ReadVariableOp╢
conv2d_153/BiasAddBiasAddconv2d_153/Conv2D:output:0)conv2d_153/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_153/BiasAddГ
conv2d_153/ReluReluconv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_153/Relu═
max_pooling2d_32/MaxPoolMaxPoolconv2d_153/Relu:activations:0*1
_output_shapes
:         АА*
ksize
*
paddingVALID*
strides
2
max_pooling2d_32/MaxPool╢
 conv2d_154/Conv2D/ReadVariableOpReadVariableOp)conv2d_154_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_154/Conv2D/ReadVariableOpс
conv2d_154/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0(conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_154/Conv2Dн
!conv2d_154/BiasAdd/ReadVariableOpReadVariableOp*conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_154/BiasAdd/ReadVariableOp╢
conv2d_154/BiasAddBiasAddconv2d_154/Conv2D:output:0)conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_154/BiasAddГ
conv2d_154/ReluReluconv2d_154/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_154/Relu╢
 conv2d_155/Conv2D/ReadVariableOpReadVariableOp)conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_155/Conv2D/ReadVariableOp▌
conv2d_155/Conv2DConv2Dconv2d_154/Relu:activations:0(conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_155/Conv2Dн
!conv2d_155/BiasAdd/ReadVariableOpReadVariableOp*conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_155/BiasAdd/ReadVariableOp╢
conv2d_155/BiasAddBiasAddconv2d_155/Conv2D:output:0)conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_155/BiasAddГ
conv2d_155/ReluReluconv2d_155/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_155/Relu═
max_pooling2d_33/MaxPoolMaxPoolconv2d_155/Relu:activations:0*1
_output_shapes
:         └└*
ksize
*
paddingVALID*
strides
2
max_pooling2d_33/MaxPool╢
 conv2d_156/Conv2D/ReadVariableOpReadVariableOp)conv2d_156_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_156/Conv2D/ReadVariableOpс
conv2d_156/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0(conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_156/Conv2Dн
!conv2d_156/BiasAdd/ReadVariableOpReadVariableOp*conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_156/BiasAdd/ReadVariableOp╢
conv2d_156/BiasAddBiasAddconv2d_156/Conv2D:output:0)conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_156/BiasAddГ
conv2d_156/ReluReluconv2d_156/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_156/Relu╢
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_157/Conv2D/ReadVariableOp▌
conv2d_157/Conv2DConv2Dconv2d_156/Relu:activations:0(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_157/Conv2Dн
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_157/BiasAdd/ReadVariableOp╢
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_157/BiasAddГ
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_157/Relu╦
max_pooling2d_34/MaxPoolMaxPoolconv2d_157/Relu:activations:0*/
_output_shapes
:         `` *
ksize
*
paddingVALID*
strides
2
max_pooling2d_34/MaxPool╢
 conv2d_158/Conv2D/ReadVariableOpReadVariableOp)conv2d_158_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_158/Conv2D/ReadVariableOp▀
conv2d_158/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0(conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_158/Conv2Dн
!conv2d_158/BiasAdd/ReadVariableOpReadVariableOp*conv2d_158_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_158/BiasAdd/ReadVariableOp┤
conv2d_158/BiasAddBiasAddconv2d_158/Conv2D:output:0)conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_158/BiasAddБ
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_158/Relu╢
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_159/Conv2D/ReadVariableOp█
conv2d_159/Conv2DConv2Dconv2d_158/Relu:activations:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_159/Conv2Dн
!conv2d_159/BiasAdd/ReadVariableOpReadVariableOp*conv2d_159_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_159/BiasAdd/ReadVariableOp┤
conv2d_159/BiasAddBiasAddconv2d_159/Conv2D:output:0)conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_159/BiasAddБ
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_159/Relu╦
max_pooling2d_35/MaxPoolMaxPoolconv2d_159/Relu:activations:0*/
_output_shapes
:         00@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_35/MaxPool╖
 conv2d_160/Conv2D/ReadVariableOpReadVariableOp)conv2d_160_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02"
 conv2d_160/Conv2D/ReadVariableOpр
conv2d_160/Conv2DConv2D!max_pooling2d_35/MaxPool:output:0(conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
conv2d_160/Conv2Dо
!conv2d_160/BiasAdd/ReadVariableOpReadVariableOp*conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!conv2d_160/BiasAdd/ReadVariableOp╡
conv2d_160/BiasAddBiasAddconv2d_160/Conv2D:output:0)conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
conv2d_160/BiasAddВ
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
conv2d_160/Relu╕
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02"
 conv2d_161/Conv2D/ReadVariableOp▄
conv2d_161/Conv2DConv2Dconv2d_160/Relu:activations:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
conv2d_161/Conv2Dо
!conv2d_161/BiasAdd/ReadVariableOpReadVariableOp*conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!conv2d_161/BiasAdd/ReadVariableOp╡
conv2d_161/BiasAddBiasAddconv2d_161/Conv2D:output:0)conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
conv2d_161/BiasAddВ
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
conv2d_161/Relu}
up_sampling2d_32/ShapeShapeconv2d_161/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_32/ShapeЦ
$up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_32/strided_slice/stackЪ
&up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_1Ъ
&up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_2┤
up_sampling2d_32/strided_sliceStridedSliceup_sampling2d_32/Shape:output:0-up_sampling2d_32/strided_slice/stack:output:0/up_sampling2d_32/strided_slice/stack_1:output:0/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_32/strided_sliceБ
up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_32/Constв
up_sampling2d_32/mulMul'up_sampling2d_32/strided_slice:output:0up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_32/mulЕ
-up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_161/Relu:activations:0up_sampling2d_32/mul:z:0*
T0*0
_output_shapes
:         ``А*
half_pixel_centers(2/
-up_sampling2d_32/resize/ResizeNearestNeighborz
concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_32/concat/axisВ
concatenate_32/concatConcatV2>up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0conv2d_159/Relu:activations:0#concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         ``└2
concatenate_32/concat╖
 conv2d_162/Conv2D/ReadVariableOpReadVariableOp)conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:└@*
dtype02"
 conv2d_162/Conv2D/ReadVariableOp▄
conv2d_162/Conv2DConv2Dconcatenate_32/concat:output:0(conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_162/Conv2Dн
!conv2d_162/BiasAdd/ReadVariableOpReadVariableOp*conv2d_162_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_162/BiasAdd/ReadVariableOp┤
conv2d_162/BiasAddBiasAddconv2d_162/Conv2D:output:0)conv2d_162/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_162/BiasAddБ
conv2d_162/ReluReluconv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_162/Relu╢
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_163/Conv2D/ReadVariableOp█
conv2d_163/Conv2DConv2Dconv2d_162/Relu:activations:0(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_163/Conv2Dн
!conv2d_163/BiasAdd/ReadVariableOpReadVariableOp*conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_163/BiasAdd/ReadVariableOp┤
conv2d_163/BiasAddBiasAddconv2d_163/Conv2D:output:0)conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_163/BiasAddБ
conv2d_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_163/Relu}
up_sampling2d_33/ShapeShapeconv2d_163/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_33/ShapeЦ
$up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_33/strided_slice/stackЪ
&up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_1Ъ
&up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_2┤
up_sampling2d_33/strided_sliceStridedSliceup_sampling2d_33/Shape:output:0-up_sampling2d_33/strided_slice/stack:output:0/up_sampling2d_33/strided_slice/stack_1:output:0/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_33/strided_sliceБ
up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_33/Constв
up_sampling2d_33/mulMul'up_sampling2d_33/strided_slice:output:0up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_33/mulЖ
-up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_163/Relu:activations:0up_sampling2d_33/mul:z:0*
T0*1
_output_shapes
:         └└@*
half_pixel_centers(2/
-up_sampling2d_33/resize/ResizeNearestNeighborz
concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_33/concat/axisГ
concatenate_33/concatConcatV2>up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0conv2d_157/Relu:activations:0#concatenate_33/concat/axis:output:0*
N*
T0*1
_output_shapes
:         └└`2
concatenate_33/concat╢
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:` *
dtype02"
 conv2d_164/Conv2D/ReadVariableOp▐
conv2d_164/Conv2DConv2Dconcatenate_33/concat:output:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_164/Conv2Dн
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_164/BiasAdd/ReadVariableOp╢
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_164/BiasAddГ
conv2d_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_164/Relu╢
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_165/Conv2D/ReadVariableOp▌
conv2d_165/Conv2DConv2Dconv2d_164/Relu:activations:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_165/Conv2Dн
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_165/BiasAdd/ReadVariableOp╢
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_165/BiasAddГ
conv2d_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_165/Relu}
up_sampling2d_34/ShapeShapeconv2d_165/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_34/ShapeЦ
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_34/strided_slice/stackЪ
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_1Ъ
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_2┤
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_34/strided_sliceБ
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_34/Constв
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_34/mulЖ
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_165/Relu:activations:0up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:         АА *
half_pixel_centers(2/
-up_sampling2d_34/resize/ResizeNearestNeighborz
concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_34/concat/axisГ
concatenate_34/concatConcatV2>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0conv2d_155/Relu:activations:0#concatenate_34/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА02
concatenate_34/concat╢
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02"
 conv2d_166/Conv2D/ReadVariableOp▐
conv2d_166/Conv2DConv2Dconcatenate_34/concat:output:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_166/Conv2Dн
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_166/BiasAdd/ReadVariableOp╢
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_166/BiasAddГ
conv2d_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_166/Relu╢
 conv2d_167/Conv2D/ReadVariableOpReadVariableOp)conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_167/Conv2D/ReadVariableOp▌
conv2d_167/Conv2DConv2Dconv2d_166/Relu:activations:0(conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_167/Conv2Dн
!conv2d_167/BiasAdd/ReadVariableOpReadVariableOp*conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_167/BiasAdd/ReadVariableOp╢
conv2d_167/BiasAddBiasAddconv2d_167/Conv2D:output:0)conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_167/BiasAddГ
conv2d_167/ReluReluconv2d_167/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_167/Relu}
up_sampling2d_35/ShapeShapeconv2d_167/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_35/ShapeЦ
$up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_35/strided_slice/stackЪ
&up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_35/strided_slice/stack_1Ъ
&up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_35/strided_slice/stack_2┤
up_sampling2d_35/strided_sliceStridedSliceup_sampling2d_35/Shape:output:0-up_sampling2d_35/strided_slice/stack:output:0/up_sampling2d_35/strided_slice/stack_1:output:0/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_35/strided_sliceБ
up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_35/Constв
up_sampling2d_35/mulMul'up_sampling2d_35/strided_slice:output:0up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_35/mulЖ
-up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_167/Relu:activations:0up_sampling2d_35/mul:z:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(2/
-up_sampling2d_35/resize/ResizeNearestNeighborz
concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_35/concat/axisГ
concatenate_35/concatConcatV2>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0conv2d_153/Relu:activations:0#concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatenate_35/concat╢
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_168/Conv2D/ReadVariableOp▐
conv2d_168/Conv2DConv2Dconcatenate_35/concat:output:0(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_168/Conv2Dн
!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_168/BiasAdd/ReadVariableOp╢
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_168/BiasAddГ
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_168/Relu╢
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_169/Conv2D/ReadVariableOp▌
conv2d_169/Conv2DConv2Dconv2d_168/Relu:activations:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_169/Conv2Dн
!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_169/BiasAdd/ReadVariableOp╢
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_169/BiasAddГ
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_169/Relu╢
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_170/Conv2D/ReadVariableOp▐
conv2d_170/Conv2DConv2Dconv2d_169/Relu:activations:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingVALID*
strides
2
conv2d_170/Conv2Dн
!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_170/BiasAdd/ReadVariableOp╢
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_170/BiasAddМ
conv2d_170/SigmoidSigmoidconv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_170/SigmoidЭ
 cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"              2"
 cropping2d_8/strided_slice/stackб
"cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    Ё   Ё       2$
"cropping2d_8/strided_slice/stack_1б
"cropping2d_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2$
"cropping2d_8/strided_slice/stack_2╨
cropping2d_8/strided_sliceStridedSliceconv2d_170/Sigmoid:y:0)cropping2d_8/strided_slice/stack:output:0+cropping2d_8/strided_slice/stack_1:output:0+cropping2d_8/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:         рр*

begin_mask	*
end_mask	2
cropping2d_8/strided_sliceп
zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d_8/Pad/paddings╝
zero_padding2d_8/PadPad#cropping2d_8/strided_slice:output:0&zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
zero_padding2d_8/Pad╥
IdentityIdentityzero_padding2d_8/Pad:output:0%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1"^conv2d_152/BiasAdd/ReadVariableOp!^conv2d_152/Conv2D/ReadVariableOp"^conv2d_153/BiasAdd/ReadVariableOp!^conv2d_153/Conv2D/ReadVariableOp"^conv2d_154/BiasAdd/ReadVariableOp!^conv2d_154/Conv2D/ReadVariableOp"^conv2d_155/BiasAdd/ReadVariableOp!^conv2d_155/Conv2D/ReadVariableOp"^conv2d_156/BiasAdd/ReadVariableOp!^conv2d_156/Conv2D/ReadVariableOp"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp"^conv2d_162/BiasAdd/ReadVariableOp!^conv2d_162/Conv2D/ReadVariableOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp"^conv2d_167/BiasAdd/ReadVariableOp!^conv2d_167/Conv2D/ReadVariableOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12F
!conv2d_152/BiasAdd/ReadVariableOp!conv2d_152/BiasAdd/ReadVariableOp2D
 conv2d_152/Conv2D/ReadVariableOp conv2d_152/Conv2D/ReadVariableOp2F
!conv2d_153/BiasAdd/ReadVariableOp!conv2d_153/BiasAdd/ReadVariableOp2D
 conv2d_153/Conv2D/ReadVariableOp conv2d_153/Conv2D/ReadVariableOp2F
!conv2d_154/BiasAdd/ReadVariableOp!conv2d_154/BiasAdd/ReadVariableOp2D
 conv2d_154/Conv2D/ReadVariableOp conv2d_154/Conv2D/ReadVariableOp2F
!conv2d_155/BiasAdd/ReadVariableOp!conv2d_155/BiasAdd/ReadVariableOp2D
 conv2d_155/Conv2D/ReadVariableOp conv2d_155/Conv2D/ReadVariableOp2F
!conv2d_156/BiasAdd/ReadVariableOp!conv2d_156/BiasAdd/ReadVariableOp2D
 conv2d_156/Conv2D/ReadVariableOp conv2d_156/Conv2D/ReadVariableOp2F
!conv2d_157/BiasAdd/ReadVariableOp!conv2d_157/BiasAdd/ReadVariableOp2D
 conv2d_157/Conv2D/ReadVariableOp conv2d_157/Conv2D/ReadVariableOp2F
!conv2d_158/BiasAdd/ReadVariableOp!conv2d_158/BiasAdd/ReadVariableOp2D
 conv2d_158/Conv2D/ReadVariableOp conv2d_158/Conv2D/ReadVariableOp2F
!conv2d_159/BiasAdd/ReadVariableOp!conv2d_159/BiasAdd/ReadVariableOp2D
 conv2d_159/Conv2D/ReadVariableOp conv2d_159/Conv2D/ReadVariableOp2F
!conv2d_160/BiasAdd/ReadVariableOp!conv2d_160/BiasAdd/ReadVariableOp2D
 conv2d_160/Conv2D/ReadVariableOp conv2d_160/Conv2D/ReadVariableOp2F
!conv2d_161/BiasAdd/ReadVariableOp!conv2d_161/BiasAdd/ReadVariableOp2D
 conv2d_161/Conv2D/ReadVariableOp conv2d_161/Conv2D/ReadVariableOp2F
!conv2d_162/BiasAdd/ReadVariableOp!conv2d_162/BiasAdd/ReadVariableOp2D
 conv2d_162/Conv2D/ReadVariableOp conv2d_162/Conv2D/ReadVariableOp2F
!conv2d_163/BiasAdd/ReadVariableOp!conv2d_163/BiasAdd/ReadVariableOp2D
 conv2d_163/Conv2D/ReadVariableOp conv2d_163/Conv2D/ReadVariableOp2F
!conv2d_164/BiasAdd/ReadVariableOp!conv2d_164/BiasAdd/ReadVariableOp2D
 conv2d_164/Conv2D/ReadVariableOp conv2d_164/Conv2D/ReadVariableOp2F
!conv2d_165/BiasAdd/ReadVariableOp!conv2d_165/BiasAdd/ReadVariableOp2D
 conv2d_165/Conv2D/ReadVariableOp conv2d_165/Conv2D/ReadVariableOp2F
!conv2d_166/BiasAdd/ReadVariableOp!conv2d_166/BiasAdd/ReadVariableOp2D
 conv2d_166/Conv2D/ReadVariableOp conv2d_166/Conv2D/ReadVariableOp2F
!conv2d_167/BiasAdd/ReadVariableOp!conv2d_167/BiasAdd/ReadVariableOp2D
 conv2d_167/Conv2D/ReadVariableOp conv2d_167/Conv2D/ReadVariableOp2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ВЯ
ч
B__inference_model_8_layer_call_and_return_conditional_losses_35655

inputs1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_152_conv2d_readvariableop_resource.
*conv2d_152_biasadd_readvariableop_resource-
)conv2d_153_conv2d_readvariableop_resource.
*conv2d_153_biasadd_readvariableop_resource-
)conv2d_154_conv2d_readvariableop_resource.
*conv2d_154_biasadd_readvariableop_resource-
)conv2d_155_conv2d_readvariableop_resource.
*conv2d_155_biasadd_readvariableop_resource-
)conv2d_156_conv2d_readvariableop_resource.
*conv2d_156_biasadd_readvariableop_resource-
)conv2d_157_conv2d_readvariableop_resource.
*conv2d_157_biasadd_readvariableop_resource-
)conv2d_158_conv2d_readvariableop_resource.
*conv2d_158_biasadd_readvariableop_resource-
)conv2d_159_conv2d_readvariableop_resource.
*conv2d_159_biasadd_readvariableop_resource-
)conv2d_160_conv2d_readvariableop_resource.
*conv2d_160_biasadd_readvariableop_resource-
)conv2d_161_conv2d_readvariableop_resource.
*conv2d_161_biasadd_readvariableop_resource-
)conv2d_162_conv2d_readvariableop_resource.
*conv2d_162_biasadd_readvariableop_resource-
)conv2d_163_conv2d_readvariableop_resource.
*conv2d_163_biasadd_readvariableop_resource-
)conv2d_164_conv2d_readvariableop_resource.
*conv2d_164_biasadd_readvariableop_resource-
)conv2d_165_conv2d_readvariableop_resource.
*conv2d_165_biasadd_readvariableop_resource-
)conv2d_166_conv2d_readvariableop_resource.
*conv2d_166_biasadd_readvariableop_resource-
)conv2d_167_conv2d_readvariableop_resource.
*conv2d_167_biasadd_readvariableop_resource-
)conv2d_168_conv2d_readvariableop_resource.
*conv2d_168_biasadd_readvariableop_resource-
)conv2d_169_conv2d_readvariableop_resource.
*conv2d_169_biasadd_readvariableop_resource-
)conv2d_170_conv2d_readvariableop_resource.
*conv2d_170_biasadd_readvariableop_resource
identityИв5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в!conv2d_152/BiasAdd/ReadVariableOpв conv2d_152/Conv2D/ReadVariableOpв!conv2d_153/BiasAdd/ReadVariableOpв conv2d_153/Conv2D/ReadVariableOpв!conv2d_154/BiasAdd/ReadVariableOpв conv2d_154/Conv2D/ReadVariableOpв!conv2d_155/BiasAdd/ReadVariableOpв conv2d_155/Conv2D/ReadVariableOpв!conv2d_156/BiasAdd/ReadVariableOpв conv2d_156/Conv2D/ReadVariableOpв!conv2d_157/BiasAdd/ReadVariableOpв conv2d_157/Conv2D/ReadVariableOpв!conv2d_158/BiasAdd/ReadVariableOpв conv2d_158/Conv2D/ReadVariableOpв!conv2d_159/BiasAdd/ReadVariableOpв conv2d_159/Conv2D/ReadVariableOpв!conv2d_160/BiasAdd/ReadVariableOpв conv2d_160/Conv2D/ReadVariableOpв!conv2d_161/BiasAdd/ReadVariableOpв conv2d_161/Conv2D/ReadVariableOpв!conv2d_162/BiasAdd/ReadVariableOpв conv2d_162/Conv2D/ReadVariableOpв!conv2d_163/BiasAdd/ReadVariableOpв conv2d_163/Conv2D/ReadVariableOpв!conv2d_164/BiasAdd/ReadVariableOpв conv2d_164/Conv2D/ReadVariableOpв!conv2d_165/BiasAdd/ReadVariableOpв conv2d_165/Conv2D/ReadVariableOpв!conv2d_166/BiasAdd/ReadVariableOpв conv2d_166/Conv2D/ReadVariableOpв!conv2d_167/BiasAdd/ReadVariableOpв conv2d_167/Conv2D/ReadVariableOpв!conv2d_168/BiasAdd/ReadVariableOpв conv2d_168/Conv2D/ReadVariableOpв!conv2d_169/BiasAdd/ReadVariableOpв conv2d_169/Conv2D/ReadVariableOpв!conv2d_170/BiasAdd/ReadVariableOpв conv2d_170/Conv2D/ReadVariableOp╢
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_8/ReadVariableOp╝
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_8/ReadVariableOp_1щ
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1╨
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
is_training( 2(
&batch_normalization_8/FusedBatchNormV3╢
 conv2d_152/Conv2D/ReadVariableOpReadVariableOp)conv2d_152_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_152/Conv2D/ReadVariableOpъ
conv2d_152/Conv2DConv2D*batch_normalization_8/FusedBatchNormV3:y:0(conv2d_152/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_152/Conv2Dн
!conv2d_152/BiasAdd/ReadVariableOpReadVariableOp*conv2d_152_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_152/BiasAdd/ReadVariableOp╢
conv2d_152/BiasAddBiasAddconv2d_152/Conv2D:output:0)conv2d_152/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_152/BiasAddГ
conv2d_152/ReluReluconv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_152/Relu╢
 conv2d_153/Conv2D/ReadVariableOpReadVariableOp)conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_153/Conv2D/ReadVariableOp▌
conv2d_153/Conv2DConv2Dconv2d_152/Relu:activations:0(conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_153/Conv2Dн
!conv2d_153/BiasAdd/ReadVariableOpReadVariableOp*conv2d_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_153/BiasAdd/ReadVariableOp╢
conv2d_153/BiasAddBiasAddconv2d_153/Conv2D:output:0)conv2d_153/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_153/BiasAddГ
conv2d_153/ReluReluconv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_153/Relu═
max_pooling2d_32/MaxPoolMaxPoolconv2d_153/Relu:activations:0*1
_output_shapes
:         АА*
ksize
*
paddingVALID*
strides
2
max_pooling2d_32/MaxPool╢
 conv2d_154/Conv2D/ReadVariableOpReadVariableOp)conv2d_154_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_154/Conv2D/ReadVariableOpс
conv2d_154/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0(conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_154/Conv2Dн
!conv2d_154/BiasAdd/ReadVariableOpReadVariableOp*conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_154/BiasAdd/ReadVariableOp╢
conv2d_154/BiasAddBiasAddconv2d_154/Conv2D:output:0)conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_154/BiasAddГ
conv2d_154/ReluReluconv2d_154/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_154/Relu╢
 conv2d_155/Conv2D/ReadVariableOpReadVariableOp)conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_155/Conv2D/ReadVariableOp▌
conv2d_155/Conv2DConv2Dconv2d_154/Relu:activations:0(conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_155/Conv2Dн
!conv2d_155/BiasAdd/ReadVariableOpReadVariableOp*conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_155/BiasAdd/ReadVariableOp╢
conv2d_155/BiasAddBiasAddconv2d_155/Conv2D:output:0)conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_155/BiasAddГ
conv2d_155/ReluReluconv2d_155/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_155/Relu═
max_pooling2d_33/MaxPoolMaxPoolconv2d_155/Relu:activations:0*1
_output_shapes
:         └└*
ksize
*
paddingVALID*
strides
2
max_pooling2d_33/MaxPool╢
 conv2d_156/Conv2D/ReadVariableOpReadVariableOp)conv2d_156_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_156/Conv2D/ReadVariableOpс
conv2d_156/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0(conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_156/Conv2Dн
!conv2d_156/BiasAdd/ReadVariableOpReadVariableOp*conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_156/BiasAdd/ReadVariableOp╢
conv2d_156/BiasAddBiasAddconv2d_156/Conv2D:output:0)conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_156/BiasAddГ
conv2d_156/ReluReluconv2d_156/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_156/Relu╢
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_157/Conv2D/ReadVariableOp▌
conv2d_157/Conv2DConv2Dconv2d_156/Relu:activations:0(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_157/Conv2Dн
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_157/BiasAdd/ReadVariableOp╢
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_157/BiasAddГ
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_157/Relu╦
max_pooling2d_34/MaxPoolMaxPoolconv2d_157/Relu:activations:0*/
_output_shapes
:         `` *
ksize
*
paddingVALID*
strides
2
max_pooling2d_34/MaxPool╢
 conv2d_158/Conv2D/ReadVariableOpReadVariableOp)conv2d_158_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_158/Conv2D/ReadVariableOp▀
conv2d_158/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0(conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_158/Conv2Dн
!conv2d_158/BiasAdd/ReadVariableOpReadVariableOp*conv2d_158_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_158/BiasAdd/ReadVariableOp┤
conv2d_158/BiasAddBiasAddconv2d_158/Conv2D:output:0)conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_158/BiasAddБ
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_158/Relu╢
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_159/Conv2D/ReadVariableOp█
conv2d_159/Conv2DConv2Dconv2d_158/Relu:activations:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_159/Conv2Dн
!conv2d_159/BiasAdd/ReadVariableOpReadVariableOp*conv2d_159_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_159/BiasAdd/ReadVariableOp┤
conv2d_159/BiasAddBiasAddconv2d_159/Conv2D:output:0)conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_159/BiasAddБ
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_159/Relu╦
max_pooling2d_35/MaxPoolMaxPoolconv2d_159/Relu:activations:0*/
_output_shapes
:         00@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_35/MaxPool╖
 conv2d_160/Conv2D/ReadVariableOpReadVariableOp)conv2d_160_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02"
 conv2d_160/Conv2D/ReadVariableOpр
conv2d_160/Conv2DConv2D!max_pooling2d_35/MaxPool:output:0(conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
conv2d_160/Conv2Dо
!conv2d_160/BiasAdd/ReadVariableOpReadVariableOp*conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!conv2d_160/BiasAdd/ReadVariableOp╡
conv2d_160/BiasAddBiasAddconv2d_160/Conv2D:output:0)conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
conv2d_160/BiasAddВ
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
conv2d_160/Relu╕
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02"
 conv2d_161/Conv2D/ReadVariableOp▄
conv2d_161/Conv2DConv2Dconv2d_160/Relu:activations:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
conv2d_161/Conv2Dо
!conv2d_161/BiasAdd/ReadVariableOpReadVariableOp*conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!conv2d_161/BiasAdd/ReadVariableOp╡
conv2d_161/BiasAddBiasAddconv2d_161/Conv2D:output:0)conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
conv2d_161/BiasAddВ
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
conv2d_161/Relu}
up_sampling2d_32/ShapeShapeconv2d_161/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_32/ShapeЦ
$up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_32/strided_slice/stackЪ
&up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_1Ъ
&up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_2┤
up_sampling2d_32/strided_sliceStridedSliceup_sampling2d_32/Shape:output:0-up_sampling2d_32/strided_slice/stack:output:0/up_sampling2d_32/strided_slice/stack_1:output:0/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_32/strided_sliceБ
up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_32/Constв
up_sampling2d_32/mulMul'up_sampling2d_32/strided_slice:output:0up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_32/mulЕ
-up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_161/Relu:activations:0up_sampling2d_32/mul:z:0*
T0*0
_output_shapes
:         ``А*
half_pixel_centers(2/
-up_sampling2d_32/resize/ResizeNearestNeighborz
concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_32/concat/axisВ
concatenate_32/concatConcatV2>up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0conv2d_159/Relu:activations:0#concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         ``└2
concatenate_32/concat╖
 conv2d_162/Conv2D/ReadVariableOpReadVariableOp)conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:└@*
dtype02"
 conv2d_162/Conv2D/ReadVariableOp▄
conv2d_162/Conv2DConv2Dconcatenate_32/concat:output:0(conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_162/Conv2Dн
!conv2d_162/BiasAdd/ReadVariableOpReadVariableOp*conv2d_162_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_162/BiasAdd/ReadVariableOp┤
conv2d_162/BiasAddBiasAddconv2d_162/Conv2D:output:0)conv2d_162/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_162/BiasAddБ
conv2d_162/ReluReluconv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_162/Relu╢
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_163/Conv2D/ReadVariableOp█
conv2d_163/Conv2DConv2Dconv2d_162/Relu:activations:0(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
conv2d_163/Conv2Dн
!conv2d_163/BiasAdd/ReadVariableOpReadVariableOp*conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_163/BiasAdd/ReadVariableOp┤
conv2d_163/BiasAddBiasAddconv2d_163/Conv2D:output:0)conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
conv2d_163/BiasAddБ
conv2d_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
conv2d_163/Relu}
up_sampling2d_33/ShapeShapeconv2d_163/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_33/ShapeЦ
$up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_33/strided_slice/stackЪ
&up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_1Ъ
&up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_2┤
up_sampling2d_33/strided_sliceStridedSliceup_sampling2d_33/Shape:output:0-up_sampling2d_33/strided_slice/stack:output:0/up_sampling2d_33/strided_slice/stack_1:output:0/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_33/strided_sliceБ
up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_33/Constв
up_sampling2d_33/mulMul'up_sampling2d_33/strided_slice:output:0up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_33/mulЖ
-up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_163/Relu:activations:0up_sampling2d_33/mul:z:0*
T0*1
_output_shapes
:         └└@*
half_pixel_centers(2/
-up_sampling2d_33/resize/ResizeNearestNeighborz
concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_33/concat/axisГ
concatenate_33/concatConcatV2>up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0conv2d_157/Relu:activations:0#concatenate_33/concat/axis:output:0*
N*
T0*1
_output_shapes
:         └└`2
concatenate_33/concat╢
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:` *
dtype02"
 conv2d_164/Conv2D/ReadVariableOp▐
conv2d_164/Conv2DConv2Dconcatenate_33/concat:output:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_164/Conv2Dн
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_164/BiasAdd/ReadVariableOp╢
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_164/BiasAddГ
conv2d_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_164/Relu╢
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_165/Conv2D/ReadVariableOp▌
conv2d_165/Conv2DConv2Dconv2d_164/Relu:activations:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
conv2d_165/Conv2Dн
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_165/BiasAdd/ReadVariableOp╢
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
conv2d_165/BiasAddГ
conv2d_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
conv2d_165/Relu}
up_sampling2d_34/ShapeShapeconv2d_165/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_34/ShapeЦ
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_34/strided_slice/stackЪ
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_1Ъ
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_2┤
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_34/strided_sliceБ
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_34/Constв
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_34/mulЖ
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_165/Relu:activations:0up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:         АА *
half_pixel_centers(2/
-up_sampling2d_34/resize/ResizeNearestNeighborz
concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_34/concat/axisГ
concatenate_34/concatConcatV2>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0conv2d_155/Relu:activations:0#concatenate_34/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА02
concatenate_34/concat╢
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02"
 conv2d_166/Conv2D/ReadVariableOp▐
conv2d_166/Conv2DConv2Dconcatenate_34/concat:output:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_166/Conv2Dн
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_166/BiasAdd/ReadVariableOp╢
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_166/BiasAddГ
conv2d_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_166/Relu╢
 conv2d_167/Conv2D/ReadVariableOpReadVariableOp)conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_167/Conv2D/ReadVariableOp▌
conv2d_167/Conv2DConv2Dconv2d_166/Relu:activations:0(conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_167/Conv2Dн
!conv2d_167/BiasAdd/ReadVariableOpReadVariableOp*conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_167/BiasAdd/ReadVariableOp╢
conv2d_167/BiasAddBiasAddconv2d_167/Conv2D:output:0)conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_167/BiasAddГ
conv2d_167/ReluReluconv2d_167/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_167/Relu}
up_sampling2d_35/ShapeShapeconv2d_167/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_35/ShapeЦ
$up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_35/strided_slice/stackЪ
&up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_35/strided_slice/stack_1Ъ
&up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_35/strided_slice/stack_2┤
up_sampling2d_35/strided_sliceStridedSliceup_sampling2d_35/Shape:output:0-up_sampling2d_35/strided_slice/stack:output:0/up_sampling2d_35/strided_slice/stack_1:output:0/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_35/strided_sliceБ
up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_35/Constв
up_sampling2d_35/mulMul'up_sampling2d_35/strided_slice:output:0up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_35/mulЖ
-up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_167/Relu:activations:0up_sampling2d_35/mul:z:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(2/
-up_sampling2d_35/resize/ResizeNearestNeighborz
concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_35/concat/axisГ
concatenate_35/concatConcatV2>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0conv2d_153/Relu:activations:0#concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatenate_35/concat╢
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_168/Conv2D/ReadVariableOp▐
conv2d_168/Conv2DConv2Dconcatenate_35/concat:output:0(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_168/Conv2Dн
!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_168/BiasAdd/ReadVariableOp╢
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_168/BiasAddГ
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_168/Relu╢
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_169/Conv2D/ReadVariableOp▌
conv2d_169/Conv2DConv2Dconv2d_168/Relu:activations:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
conv2d_169/Conv2Dн
!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_169/BiasAdd/ReadVariableOp╢
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_169/BiasAddГ
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_169/Relu╢
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_170/Conv2D/ReadVariableOp▐
conv2d_170/Conv2DConv2Dconv2d_169/Relu:activations:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingVALID*
strides
2
conv2d_170/Conv2Dн
!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_170/BiasAdd/ReadVariableOp╢
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_170/BiasAddМ
conv2d_170/SigmoidSigmoidconv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_170/SigmoidЭ
 cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"              2"
 cropping2d_8/strided_slice/stackб
"cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    Ё   Ё       2$
"cropping2d_8/strided_slice/stack_1б
"cropping2d_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2$
"cropping2d_8/strided_slice/stack_2╨
cropping2d_8/strided_sliceStridedSliceconv2d_170/Sigmoid:y:0)cropping2d_8/strided_slice/stack:output:0+cropping2d_8/strided_slice/stack_1:output:0+cropping2d_8/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:         рр*

begin_mask	*
end_mask	2
cropping2d_8/strided_sliceп
zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d_8/Pad/paddings╝
zero_padding2d_8/PadPad#cropping2d_8/strided_slice:output:0&zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
zero_padding2d_8/PadВ
IdentityIdentityzero_padding2d_8/Pad:output:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1"^conv2d_152/BiasAdd/ReadVariableOp!^conv2d_152/Conv2D/ReadVariableOp"^conv2d_153/BiasAdd/ReadVariableOp!^conv2d_153/Conv2D/ReadVariableOp"^conv2d_154/BiasAdd/ReadVariableOp!^conv2d_154/Conv2D/ReadVariableOp"^conv2d_155/BiasAdd/ReadVariableOp!^conv2d_155/Conv2D/ReadVariableOp"^conv2d_156/BiasAdd/ReadVariableOp!^conv2d_156/Conv2D/ReadVariableOp"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp"^conv2d_162/BiasAdd/ReadVariableOp!^conv2d_162/Conv2D/ReadVariableOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp"^conv2d_167/BiasAdd/ReadVariableOp!^conv2d_167/Conv2D/ReadVariableOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12F
!conv2d_152/BiasAdd/ReadVariableOp!conv2d_152/BiasAdd/ReadVariableOp2D
 conv2d_152/Conv2D/ReadVariableOp conv2d_152/Conv2D/ReadVariableOp2F
!conv2d_153/BiasAdd/ReadVariableOp!conv2d_153/BiasAdd/ReadVariableOp2D
 conv2d_153/Conv2D/ReadVariableOp conv2d_153/Conv2D/ReadVariableOp2F
!conv2d_154/BiasAdd/ReadVariableOp!conv2d_154/BiasAdd/ReadVariableOp2D
 conv2d_154/Conv2D/ReadVariableOp conv2d_154/Conv2D/ReadVariableOp2F
!conv2d_155/BiasAdd/ReadVariableOp!conv2d_155/BiasAdd/ReadVariableOp2D
 conv2d_155/Conv2D/ReadVariableOp conv2d_155/Conv2D/ReadVariableOp2F
!conv2d_156/BiasAdd/ReadVariableOp!conv2d_156/BiasAdd/ReadVariableOp2D
 conv2d_156/Conv2D/ReadVariableOp conv2d_156/Conv2D/ReadVariableOp2F
!conv2d_157/BiasAdd/ReadVariableOp!conv2d_157/BiasAdd/ReadVariableOp2D
 conv2d_157/Conv2D/ReadVariableOp conv2d_157/Conv2D/ReadVariableOp2F
!conv2d_158/BiasAdd/ReadVariableOp!conv2d_158/BiasAdd/ReadVariableOp2D
 conv2d_158/Conv2D/ReadVariableOp conv2d_158/Conv2D/ReadVariableOp2F
!conv2d_159/BiasAdd/ReadVariableOp!conv2d_159/BiasAdd/ReadVariableOp2D
 conv2d_159/Conv2D/ReadVariableOp conv2d_159/Conv2D/ReadVariableOp2F
!conv2d_160/BiasAdd/ReadVariableOp!conv2d_160/BiasAdd/ReadVariableOp2D
 conv2d_160/Conv2D/ReadVariableOp conv2d_160/Conv2D/ReadVariableOp2F
!conv2d_161/BiasAdd/ReadVariableOp!conv2d_161/BiasAdd/ReadVariableOp2D
 conv2d_161/Conv2D/ReadVariableOp conv2d_161/Conv2D/ReadVariableOp2F
!conv2d_162/BiasAdd/ReadVariableOp!conv2d_162/BiasAdd/ReadVariableOp2D
 conv2d_162/Conv2D/ReadVariableOp conv2d_162/Conv2D/ReadVariableOp2F
!conv2d_163/BiasAdd/ReadVariableOp!conv2d_163/BiasAdd/ReadVariableOp2D
 conv2d_163/Conv2D/ReadVariableOp conv2d_163/Conv2D/ReadVariableOp2F
!conv2d_164/BiasAdd/ReadVariableOp!conv2d_164/BiasAdd/ReadVariableOp2D
 conv2d_164/Conv2D/ReadVariableOp conv2d_164/Conv2D/ReadVariableOp2F
!conv2d_165/BiasAdd/ReadVariableOp!conv2d_165/BiasAdd/ReadVariableOp2D
 conv2d_165/Conv2D/ReadVariableOp conv2d_165/Conv2D/ReadVariableOp2F
!conv2d_166/BiasAdd/ReadVariableOp!conv2d_166/BiasAdd/ReadVariableOp2D
 conv2d_166/Conv2D/ReadVariableOp conv2d_166/Conv2D/ReadVariableOp2F
!conv2d_167/BiasAdd/ReadVariableOp!conv2d_167/BiasAdd/ReadVariableOp2D
 conv2d_167/Conv2D/ReadVariableOp conv2d_167/Conv2D/ReadVariableOp2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
А
Z
.__inference_concatenate_34_layer_call_fn_36305
inputs_0
inputs_1
identityс
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_344332
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА02

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                            :         АА:k g
A
_output_shapes/
-:+                            
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
╧

▐
E__inference_conv2d_159_layer_call_and_return_conditional_losses_34212

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
Ъ
u
I__inference_concatenate_33_layer_call_and_return_conditional_losses_36246
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЛ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         └└`2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         └└`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           @:         └└ :k g
A
_output_shapes/
-:+                           @
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         └└ 
"
_user_specified_name
inputs/1
╫
i
0__inference_gaussian_noise_8_layer_call_fn_35853

inputs
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339192
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Т
s
I__inference_concatenate_33_layer_call_and_return_conditional_losses_34362

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЙ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         └└`2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         └└`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           @:         └└ :i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:YU
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_152_layer_call_and_return_conditional_losses_35997

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_158_layer_call_and_return_conditional_losses_36117

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `` ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `` 
 
_user_specified_nameinputs
Й

*__inference_conv2d_164_layer_call_fn_36272

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_343822
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└`::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         └└`
 
_user_specified_nameinputs
╡а
╞
B__inference_model_8_layer_call_and_return_conditional_losses_34597
	rgb_input
batch_normalization_8_34000
batch_normalization_8_34002
batch_normalization_8_34004
batch_normalization_8_34006
conv2d_152_34031
conv2d_152_34033
conv2d_153_34058
conv2d_153_34060
conv2d_154_34086
conv2d_154_34088
conv2d_155_34113
conv2d_155_34115
conv2d_156_34141
conv2d_156_34143
conv2d_157_34168
conv2d_157_34170
conv2d_158_34196
conv2d_158_34198
conv2d_159_34223
conv2d_159_34225
conv2d_160_34251
conv2d_160_34253
conv2d_161_34278
conv2d_161_34280
conv2d_162_34322
conv2d_162_34324
conv2d_163_34349
conv2d_163_34351
conv2d_164_34393
conv2d_164_34395
conv2d_165_34420
conv2d_165_34422
conv2d_166_34464
conv2d_166_34466
conv2d_167_34491
conv2d_167_34493
conv2d_168_34535
conv2d_168_34537
conv2d_169_34562
conv2d_169_34564
conv2d_170_34589
conv2d_170_34591
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв(gaussian_noise_8/StatefulPartitionedCallУ
(gaussian_noise_8/StatefulPartitionedCallStatefulPartitionedCall	rgb_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339192*
(gaussian_noise_8/StatefulPartitionedCall╞
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_8/StatefulPartitionedCall:output:0batch_normalization_8_34000batch_normalization_8_34002batch_normalization_8_34004batch_normalization_8_34006*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339552/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_34031conv2d_152_34033*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_340202$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_34058conv2d_153_34060*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_340472$
"conv2d_153/StatefulPartitionedCallЭ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_337582"
 max_pooling2d_32/PartitionedCall╦
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_34086conv2d_154_34088*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_340752$
"conv2d_154/StatefulPartitionedCall═
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_34113conv2d_155_34115*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_341022$
"conv2d_155/StatefulPartitionedCallЭ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_337702"
 max_pooling2d_33/PartitionedCall╦
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_34141conv2d_156_34143*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_341302$
"conv2d_156/StatefulPartitionedCall═
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_34168conv2d_157_34170*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_341572$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `` * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_337822"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_34196conv2d_158_34198*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_341852$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_34223conv2d_159_34225*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_342122$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_337942"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_34251conv2d_160_34253*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_342402$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_34278conv2d_161_34280*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_342672$
"conv2d_161/StatefulPartitionedCallо
 up_sampling2d_32/PartitionedCallPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_338132"
 up_sampling2d_32/PartitionedCall┬
concatenate_32/PartitionedCallPartitionedCall)up_sampling2d_32/PartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ``└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_342912 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_34322conv2d_162_34324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_343112$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_34349conv2d_163_34351*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_343382$
"conv2d_163/StatefulPartitionedCallн
 up_sampling2d_33/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_338322"
 up_sampling2d_33/PartitionedCall├
concatenate_33/PartitionedCallPartitionedCall)up_sampling2d_33/PartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_343622 
concatenate_33/PartitionedCall╔
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_34393conv2d_164_34395*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_343822$
"conv2d_164/StatefulPartitionedCall═
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_34420conv2d_165_34422*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_344092$
"conv2d_165/StatefulPartitionedCallн
 up_sampling2d_34/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_338512"
 up_sampling2d_34/PartitionedCall├
concatenate_34/PartitionedCallPartitionedCall)up_sampling2d_34/PartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_344332 
concatenate_34/PartitionedCall╔
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_34464conv2d_166_34466*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_344532$
"conv2d_166/StatefulPartitionedCall═
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_34491conv2d_167_34493*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_344802$
"conv2d_167/StatefulPartitionedCallн
 up_sampling2d_35/PartitionedCallPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_338702"
 up_sampling2d_35/PartitionedCall├
concatenate_35/PartitionedCallPartitionedCall)up_sampling2d_35/PartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_345042 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_34535conv2d_168_34537*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_345242$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_34562conv2d_169_34564*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_345512$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_34589conv2d_170_34591*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_345782$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_338852
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_338982"
 zero_padding2d_8/PartitionedCallб
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall)^gaussian_noise_8/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2H
"conv2d_152/StatefulPartitionedCall"conv2d_152/StatefulPartitionedCall2H
"conv2d_153/StatefulPartitionedCall"conv2d_153/StatefulPartitionedCall2H
"conv2d_154/StatefulPartitionedCall"conv2d_154/StatefulPartitionedCall2H
"conv2d_155/StatefulPartitionedCall"conv2d_155/StatefulPartitionedCall2H
"conv2d_156/StatefulPartitionedCall"conv2d_156/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2H
"conv2d_162/StatefulPartitionedCall"conv2d_162/StatefulPartitionedCall2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2H
"conv2d_167/StatefulPartitionedCall"conv2d_167/StatefulPartitionedCall2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2T
(gaussian_noise_8/StatefulPartitionedCall(gaussian_noise_8/StatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
░
L
0__inference_up_sampling2d_34_layer_call_fn_33857

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_338512
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й

*__inference_conv2d_153_layer_call_fn_36026

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_340472
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_166_layer_call_and_return_conditional_losses_36316

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА0
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_163_layer_call_and_return_conditional_losses_36230

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
И	
c
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_33885

inputs
identityГ
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"              2
strided_slice/stackЗ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    Ё   Ё       2
strided_slice/stack_1З
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2
strided_slice/stack_2Ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*J
_output_shapes8
6:4                                    *

begin_mask	*
end_mask	2
strided_sliceН
IdentityIdentitystrided_slice:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_169_layer_call_and_return_conditional_losses_36389

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
М
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35942

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ъ
u
I__inference_concatenate_34_layer_call_and_return_conditional_losses_36299
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЛ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА02
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА02

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                            :         АА:k g
A
_output_shapes/
-:+                            
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
█

▐
E__inference_conv2d_167_layer_call_and_return_conditional_losses_34480

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
х
g
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_33898

inputs
identityН
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddingsЕ
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4                                    2
PadГ
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_33794

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
Z
.__inference_concatenate_33_layer_call_fn_36252
inputs_0
inputs_1
identityс
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_343622
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         └└`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           @:         └└ :k g
A
_output_shapes/
-:+                           @
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         └└ 
"
_user_specified_name
inputs/1
и
H
,__inference_cropping2d_8_layer_call_fn_33891

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_338852
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й

*__inference_conv2d_169_layer_call_fn_36398

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_345512
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_170_layer_call_fn_36418

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_345782
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_159_layer_call_and_return_conditional_losses_36137

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ``@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ``@
 
_user_specified_nameinputs
╛

j
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_33919

inputs
identityИD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
random_normal/stddev╪
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:         АА*
dtype0*
seed▒ х)*
seed2·я╤2$
"random_normal/RandomStandardNormal╡
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2
random_normal/mulХ
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2
random_normalj
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:         АА2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф╣
ыH
!__inference__traced_restore_37261
file_prefix0
,assignvariableop_batch_normalization_8_gamma1
-assignvariableop_1_batch_normalization_8_beta8
4assignvariableop_2_batch_normalization_8_moving_mean<
8assignvariableop_3_batch_normalization_8_moving_variance(
$assignvariableop_4_conv2d_152_kernel&
"assignvariableop_5_conv2d_152_bias(
$assignvariableop_6_conv2d_153_kernel&
"assignvariableop_7_conv2d_153_bias(
$assignvariableop_8_conv2d_154_kernel&
"assignvariableop_9_conv2d_154_bias)
%assignvariableop_10_conv2d_155_kernel'
#assignvariableop_11_conv2d_155_bias)
%assignvariableop_12_conv2d_156_kernel'
#assignvariableop_13_conv2d_156_bias)
%assignvariableop_14_conv2d_157_kernel'
#assignvariableop_15_conv2d_157_bias)
%assignvariableop_16_conv2d_158_kernel'
#assignvariableop_17_conv2d_158_bias)
%assignvariableop_18_conv2d_159_kernel'
#assignvariableop_19_conv2d_159_bias)
%assignvariableop_20_conv2d_160_kernel'
#assignvariableop_21_conv2d_160_bias)
%assignvariableop_22_conv2d_161_kernel'
#assignvariableop_23_conv2d_161_bias)
%assignvariableop_24_conv2d_162_kernel'
#assignvariableop_25_conv2d_162_bias)
%assignvariableop_26_conv2d_163_kernel'
#assignvariableop_27_conv2d_163_bias)
%assignvariableop_28_conv2d_164_kernel'
#assignvariableop_29_conv2d_164_bias)
%assignvariableop_30_conv2d_165_kernel'
#assignvariableop_31_conv2d_165_bias)
%assignvariableop_32_conv2d_166_kernel'
#assignvariableop_33_conv2d_166_bias)
%assignvariableop_34_conv2d_167_kernel'
#assignvariableop_35_conv2d_167_bias)
%assignvariableop_36_conv2d_168_kernel'
#assignvariableop_37_conv2d_168_bias)
%assignvariableop_38_conv2d_169_kernel'
#assignvariableop_39_conv2d_169_bias)
%assignvariableop_40_conv2d_170_kernel'
#assignvariableop_41_conv2d_170_bias!
assignvariableop_42_adam_iter#
assignvariableop_43_adam_beta_1#
assignvariableop_44_adam_beta_2"
assignvariableop_45_adam_decay*
&assignvariableop_46_adam_learning_rate
assignvariableop_47_total
assignvariableop_48_count
assignvariableop_49_total_1
assignvariableop_50_count_1
assignvariableop_51_total_2
assignvariableop_52_count_2
assignvariableop_53_total_3
assignvariableop_54_count_3:
6assignvariableop_55_adam_batch_normalization_8_gamma_m9
5assignvariableop_56_adam_batch_normalization_8_beta_m0
,assignvariableop_57_adam_conv2d_152_kernel_m.
*assignvariableop_58_adam_conv2d_152_bias_m0
,assignvariableop_59_adam_conv2d_153_kernel_m.
*assignvariableop_60_adam_conv2d_153_bias_m0
,assignvariableop_61_adam_conv2d_154_kernel_m.
*assignvariableop_62_adam_conv2d_154_bias_m0
,assignvariableop_63_adam_conv2d_155_kernel_m.
*assignvariableop_64_adam_conv2d_155_bias_m0
,assignvariableop_65_adam_conv2d_156_kernel_m.
*assignvariableop_66_adam_conv2d_156_bias_m0
,assignvariableop_67_adam_conv2d_157_kernel_m.
*assignvariableop_68_adam_conv2d_157_bias_m0
,assignvariableop_69_adam_conv2d_158_kernel_m.
*assignvariableop_70_adam_conv2d_158_bias_m0
,assignvariableop_71_adam_conv2d_159_kernel_m.
*assignvariableop_72_adam_conv2d_159_bias_m0
,assignvariableop_73_adam_conv2d_160_kernel_m.
*assignvariableop_74_adam_conv2d_160_bias_m0
,assignvariableop_75_adam_conv2d_161_kernel_m.
*assignvariableop_76_adam_conv2d_161_bias_m0
,assignvariableop_77_adam_conv2d_162_kernel_m.
*assignvariableop_78_adam_conv2d_162_bias_m0
,assignvariableop_79_adam_conv2d_163_kernel_m.
*assignvariableop_80_adam_conv2d_163_bias_m0
,assignvariableop_81_adam_conv2d_164_kernel_m.
*assignvariableop_82_adam_conv2d_164_bias_m0
,assignvariableop_83_adam_conv2d_165_kernel_m.
*assignvariableop_84_adam_conv2d_165_bias_m0
,assignvariableop_85_adam_conv2d_166_kernel_m.
*assignvariableop_86_adam_conv2d_166_bias_m0
,assignvariableop_87_adam_conv2d_167_kernel_m.
*assignvariableop_88_adam_conv2d_167_bias_m0
,assignvariableop_89_adam_conv2d_168_kernel_m.
*assignvariableop_90_adam_conv2d_168_bias_m0
,assignvariableop_91_adam_conv2d_169_kernel_m.
*assignvariableop_92_adam_conv2d_169_bias_m0
,assignvariableop_93_adam_conv2d_170_kernel_m.
*assignvariableop_94_adam_conv2d_170_bias_m:
6assignvariableop_95_adam_batch_normalization_8_gamma_v9
5assignvariableop_96_adam_batch_normalization_8_beta_v0
,assignvariableop_97_adam_conv2d_152_kernel_v.
*assignvariableop_98_adam_conv2d_152_bias_v0
,assignvariableop_99_adam_conv2d_153_kernel_v/
+assignvariableop_100_adam_conv2d_153_bias_v1
-assignvariableop_101_adam_conv2d_154_kernel_v/
+assignvariableop_102_adam_conv2d_154_bias_v1
-assignvariableop_103_adam_conv2d_155_kernel_v/
+assignvariableop_104_adam_conv2d_155_bias_v1
-assignvariableop_105_adam_conv2d_156_kernel_v/
+assignvariableop_106_adam_conv2d_156_bias_v1
-assignvariableop_107_adam_conv2d_157_kernel_v/
+assignvariableop_108_adam_conv2d_157_bias_v1
-assignvariableop_109_adam_conv2d_158_kernel_v/
+assignvariableop_110_adam_conv2d_158_bias_v1
-assignvariableop_111_adam_conv2d_159_kernel_v/
+assignvariableop_112_adam_conv2d_159_bias_v1
-assignvariableop_113_adam_conv2d_160_kernel_v/
+assignvariableop_114_adam_conv2d_160_bias_v1
-assignvariableop_115_adam_conv2d_161_kernel_v/
+assignvariableop_116_adam_conv2d_161_bias_v1
-assignvariableop_117_adam_conv2d_162_kernel_v/
+assignvariableop_118_adam_conv2d_162_bias_v1
-assignvariableop_119_adam_conv2d_163_kernel_v/
+assignvariableop_120_adam_conv2d_163_bias_v1
-assignvariableop_121_adam_conv2d_164_kernel_v/
+assignvariableop_122_adam_conv2d_164_bias_v1
-assignvariableop_123_adam_conv2d_165_kernel_v/
+assignvariableop_124_adam_conv2d_165_bias_v1
-assignvariableop_125_adam_conv2d_166_kernel_v/
+assignvariableop_126_adam_conv2d_166_bias_v1
-assignvariableop_127_adam_conv2d_167_kernel_v/
+assignvariableop_128_adam_conv2d_167_bias_v1
-assignvariableop_129_adam_conv2d_168_kernel_v/
+assignvariableop_130_adam_conv2d_168_bias_v1
-assignvariableop_131_adam_conv2d_169_kernel_v/
+assignvariableop_132_adam_conv2d_169_bias_v1
-assignvariableop_133_adam_conv2d_170_kernel_v/
+assignvariableop_134_adam_conv2d_170_bias_v
identity_136ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_113вAssignVariableOp_114вAssignVariableOp_115вAssignVariableOp_116вAssignVariableOp_117вAssignVariableOp_118вAssignVariableOp_119вAssignVariableOp_12вAssignVariableOp_120вAssignVariableOp_121вAssignVariableOp_122вAssignVariableOp_123вAssignVariableOp_124вAssignVariableOp_125вAssignVariableOp_126вAssignVariableOp_127вAssignVariableOp_128вAssignVariableOp_129вAssignVariableOp_13вAssignVariableOp_130вAssignVariableOp_131вAssignVariableOp_132вAssignVariableOp_133вAssignVariableOp_134вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99¤L
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:И*
dtype0*ИL
value■KB√KИB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesг
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:И*
dtype0*ж
valueЬBЩИB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Щ
dtypesО
Л2И	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityл
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_8_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1▓
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_8_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2╣
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_8_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3╜
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_8_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_152_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_152_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_153_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_153_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8й
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_154_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9з
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_154_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv2d_155_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_155_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_156_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_156_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv2d_157_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv2d_157_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv2d_158_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv2d_158_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_159_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_159_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20н
AssignVariableOp_20AssignVariableOp%assignvariableop_20_conv2d_160_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21л
AssignVariableOp_21AssignVariableOp#assignvariableop_21_conv2d_160_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22н
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv2d_161_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23л
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv2d_161_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24н
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_162_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25л
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_162_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26н
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv2d_163_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27л
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv2d_163_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28н
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv2d_164_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29л
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv2d_164_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30н
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_165_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31л
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_165_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32н
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv2d_166_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33л
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv2d_166_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34н
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv2d_167_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35л
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv2d_167_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36н
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv2d_168_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37л
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv2d_168_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38н
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv2d_169_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39л
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv2d_169_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40н
AssignVariableOp_40AssignVariableOp%assignvariableop_40_conv2d_170_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41л
AssignVariableOp_41AssignVariableOp#assignvariableop_41_conv2d_170_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_42е
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_iterIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43з
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_beta_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44з
AssignVariableOp_44AssignVariableOpassignvariableop_44_adam_beta_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ж
AssignVariableOp_45AssignVariableOpassignvariableop_45_adam_decayIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46о
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_learning_rateIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47б
AssignVariableOp_47AssignVariableOpassignvariableop_47_totalIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48б
AssignVariableOp_48AssignVariableOpassignvariableop_48_countIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49г
AssignVariableOp_49AssignVariableOpassignvariableop_49_total_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50г
AssignVariableOp_50AssignVariableOpassignvariableop_50_count_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51г
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_2Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52г
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53г
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_3Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54г
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_3Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55╛
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_8_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56╜
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_8_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57┤
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_conv2d_152_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58▓
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_152_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59┤
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_conv2d_153_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60▓
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_153_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61┤
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_conv2d_154_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62▓
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_154_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63┤
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_conv2d_155_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64▓
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_conv2d_155_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65┤
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_conv2d_156_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66▓
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_conv2d_156_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67┤
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_conv2d_157_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68▓
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_conv2d_157_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69┤
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_158_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70▓
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_158_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71┤
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv2d_159_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72▓
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv2d_159_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73┤
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv2d_160_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74▓
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv2d_160_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75┤
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv2d_161_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76▓
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv2d_161_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77┤
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv2d_162_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78▓
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv2d_162_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79┤
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv2d_163_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80▓
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv2d_163_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81┤
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv2d_164_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82▓
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv2d_164_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83┤
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv2d_165_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84▓
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv2d_165_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85┤
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv2d_166_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86▓
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv2d_166_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87┤
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv2d_167_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88▓
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv2d_167_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89┤
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv2d_168_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90▓
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv2d_168_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91┤
AssignVariableOp_91AssignVariableOp,assignvariableop_91_adam_conv2d_169_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92▓
AssignVariableOp_92AssignVariableOp*assignvariableop_92_adam_conv2d_169_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93┤
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv2d_170_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94▓
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv2d_170_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95╛
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_batch_normalization_8_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96╜
AssignVariableOp_96AssignVariableOp5assignvariableop_96_adam_batch_normalization_8_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97┤
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv2d_152_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98▓
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv2d_152_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99┤
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv2d_153_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100╢
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv2d_153_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101╕
AssignVariableOp_101AssignVariableOp-assignvariableop_101_adam_conv2d_154_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102╢
AssignVariableOp_102AssignVariableOp+assignvariableop_102_adam_conv2d_154_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103╕
AssignVariableOp_103AssignVariableOp-assignvariableop_103_adam_conv2d_155_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104╢
AssignVariableOp_104AssignVariableOp+assignvariableop_104_adam_conv2d_155_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105╕
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv2d_156_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106╢
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv2d_156_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107╕
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv2d_157_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108╢
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv2d_157_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109╕
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv2d_158_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110╢
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv2d_158_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111╕
AssignVariableOp_111AssignVariableOp-assignvariableop_111_adam_conv2d_159_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112╢
AssignVariableOp_112AssignVariableOp+assignvariableop_112_adam_conv2d_159_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113╕
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv2d_160_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114╢
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv2d_160_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115╕
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv2d_161_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116╢
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv2d_161_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117╕
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv2d_162_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118╢
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv2d_162_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119╕
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv2d_163_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120╢
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv2d_163_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121╕
AssignVariableOp_121AssignVariableOp-assignvariableop_121_adam_conv2d_164_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122╢
AssignVariableOp_122AssignVariableOp+assignvariableop_122_adam_conv2d_164_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123╕
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv2d_165_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124╢
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv2d_165_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125╕
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv2d_166_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126╢
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv2d_166_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127╕
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv2d_167_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128╢
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv2d_167_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129╕
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv2d_168_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130╢
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv2d_168_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131╕
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv2d_169_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132╢
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv2d_169_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133╕
AssignVariableOp_133AssignVariableOp-assignvariableop_133_adam_conv2d_170_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134╢
AssignVariableOp_134AssignVariableOp+assignvariableop_134_adam_conv2d_170_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЭ
Identity_135Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_135С
Identity_136IdentityIdentity_135:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_136"%
identity_136Identity_136:output:0*│
_input_shapesб
Ю: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Б
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_33758

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ма
├
B__inference_model_8_layer_call_and_return_conditional_losses_34846

inputs
batch_normalization_8_34727
batch_normalization_8_34729
batch_normalization_8_34731
batch_normalization_8_34733
conv2d_152_34736
conv2d_152_34738
conv2d_153_34741
conv2d_153_34743
conv2d_154_34747
conv2d_154_34749
conv2d_155_34752
conv2d_155_34754
conv2d_156_34758
conv2d_156_34760
conv2d_157_34763
conv2d_157_34765
conv2d_158_34769
conv2d_158_34771
conv2d_159_34774
conv2d_159_34776
conv2d_160_34780
conv2d_160_34782
conv2d_161_34785
conv2d_161_34787
conv2d_162_34792
conv2d_162_34794
conv2d_163_34797
conv2d_163_34799
conv2d_164_34804
conv2d_164_34806
conv2d_165_34809
conv2d_165_34811
conv2d_166_34816
conv2d_166_34818
conv2d_167_34821
conv2d_167_34823
conv2d_168_34828
conv2d_168_34830
conv2d_169_34833
conv2d_169_34835
conv2d_170_34838
conv2d_170_34840
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв(gaussian_noise_8/StatefulPartitionedCallР
(gaussian_noise_8/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339192*
(gaussian_noise_8/StatefulPartitionedCall╞
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_8/StatefulPartitionedCall:output:0batch_normalization_8_34727batch_normalization_8_34729batch_normalization_8_34731batch_normalization_8_34733*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339552/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_34736conv2d_152_34738*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_340202$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_34741conv2d_153_34743*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_340472$
"conv2d_153/StatefulPartitionedCallЭ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_337582"
 max_pooling2d_32/PartitionedCall╦
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_34747conv2d_154_34749*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_340752$
"conv2d_154/StatefulPartitionedCall═
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_34752conv2d_155_34754*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_341022$
"conv2d_155/StatefulPartitionedCallЭ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_337702"
 max_pooling2d_33/PartitionedCall╦
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_34758conv2d_156_34760*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_341302$
"conv2d_156/StatefulPartitionedCall═
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_34763conv2d_157_34765*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_341572$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `` * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_337822"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_34769conv2d_158_34771*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_341852$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_34774conv2d_159_34776*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_342122$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_337942"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_34780conv2d_160_34782*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_342402$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_34785conv2d_161_34787*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_342672$
"conv2d_161/StatefulPartitionedCallо
 up_sampling2d_32/PartitionedCallPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_338132"
 up_sampling2d_32/PartitionedCall┬
concatenate_32/PartitionedCallPartitionedCall)up_sampling2d_32/PartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ``└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_342912 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_34792conv2d_162_34794*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_343112$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_34797conv2d_163_34799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_343382$
"conv2d_163/StatefulPartitionedCallн
 up_sampling2d_33/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_338322"
 up_sampling2d_33/PartitionedCall├
concatenate_33/PartitionedCallPartitionedCall)up_sampling2d_33/PartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_343622 
concatenate_33/PartitionedCall╔
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_34804conv2d_164_34806*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_343822$
"conv2d_164/StatefulPartitionedCall═
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_34809conv2d_165_34811*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_344092$
"conv2d_165/StatefulPartitionedCallн
 up_sampling2d_34/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_338512"
 up_sampling2d_34/PartitionedCall├
concatenate_34/PartitionedCallPartitionedCall)up_sampling2d_34/PartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_344332 
concatenate_34/PartitionedCall╔
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_34816conv2d_166_34818*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_344532$
"conv2d_166/StatefulPartitionedCall═
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_34821conv2d_167_34823*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_344802$
"conv2d_167/StatefulPartitionedCallн
 up_sampling2d_35/PartitionedCallPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_338702"
 up_sampling2d_35/PartitionedCall├
concatenate_35/PartitionedCallPartitionedCall)up_sampling2d_35/PartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_345042 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_34828conv2d_168_34830*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_345242$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_34833conv2d_169_34835*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_345512$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_34838conv2d_170_34840*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_345782$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_338852
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_338982"
 zero_padding2d_8/PartitionedCallб
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall)^gaussian_noise_8/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2H
"conv2d_152/StatefulPartitionedCall"conv2d_152/StatefulPartitionedCall2H
"conv2d_153/StatefulPartitionedCall"conv2d_153/StatefulPartitionedCall2H
"conv2d_154/StatefulPartitionedCall"conv2d_154/StatefulPartitionedCall2H
"conv2d_155/StatefulPartitionedCall"conv2d_155/StatefulPartitionedCall2H
"conv2d_156/StatefulPartitionedCall"conv2d_156/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2H
"conv2d_162/StatefulPartitionedCall"conv2d_162/StatefulPartitionedCall2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2H
"conv2d_167/StatefulPartitionedCall"conv2d_167/StatefulPartitionedCall2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2T
(gaussian_noise_8/StatefulPartitionedCall(gaussian_noise_8/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_167_layer_call_and_return_conditional_losses_36336

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
М
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_33955

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_up_sampling2d_35_layer_call_fn_33876

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_338702
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
и
Є
#__inference_signature_wrapper_35244
	rgb_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCall	rgb_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_336482
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Б
g
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_33782

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й

*__inference_conv2d_156_layer_call_fn_36086

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_341302
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         └└
 
_user_specified_nameinputs
И
g
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_33813

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul╒
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborд
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й

*__inference_conv2d_168_layer_call_fn_36378

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_345242
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
в╦
ш!
 __inference__wrapped_model_33648
	rgb_input9
5model_8_batch_normalization_8_readvariableop_resource;
7model_8_batch_normalization_8_readvariableop_1_resourceJ
Fmodel_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceL
Hmodel_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource5
1model_8_conv2d_152_conv2d_readvariableop_resource6
2model_8_conv2d_152_biasadd_readvariableop_resource5
1model_8_conv2d_153_conv2d_readvariableop_resource6
2model_8_conv2d_153_biasadd_readvariableop_resource5
1model_8_conv2d_154_conv2d_readvariableop_resource6
2model_8_conv2d_154_biasadd_readvariableop_resource5
1model_8_conv2d_155_conv2d_readvariableop_resource6
2model_8_conv2d_155_biasadd_readvariableop_resource5
1model_8_conv2d_156_conv2d_readvariableop_resource6
2model_8_conv2d_156_biasadd_readvariableop_resource5
1model_8_conv2d_157_conv2d_readvariableop_resource6
2model_8_conv2d_157_biasadd_readvariableop_resource5
1model_8_conv2d_158_conv2d_readvariableop_resource6
2model_8_conv2d_158_biasadd_readvariableop_resource5
1model_8_conv2d_159_conv2d_readvariableop_resource6
2model_8_conv2d_159_biasadd_readvariableop_resource5
1model_8_conv2d_160_conv2d_readvariableop_resource6
2model_8_conv2d_160_biasadd_readvariableop_resource5
1model_8_conv2d_161_conv2d_readvariableop_resource6
2model_8_conv2d_161_biasadd_readvariableop_resource5
1model_8_conv2d_162_conv2d_readvariableop_resource6
2model_8_conv2d_162_biasadd_readvariableop_resource5
1model_8_conv2d_163_conv2d_readvariableop_resource6
2model_8_conv2d_163_biasadd_readvariableop_resource5
1model_8_conv2d_164_conv2d_readvariableop_resource6
2model_8_conv2d_164_biasadd_readvariableop_resource5
1model_8_conv2d_165_conv2d_readvariableop_resource6
2model_8_conv2d_165_biasadd_readvariableop_resource5
1model_8_conv2d_166_conv2d_readvariableop_resource6
2model_8_conv2d_166_biasadd_readvariableop_resource5
1model_8_conv2d_167_conv2d_readvariableop_resource6
2model_8_conv2d_167_biasadd_readvariableop_resource5
1model_8_conv2d_168_conv2d_readvariableop_resource6
2model_8_conv2d_168_biasadd_readvariableop_resource5
1model_8_conv2d_169_conv2d_readvariableop_resource6
2model_8_conv2d_169_biasadd_readvariableop_resource5
1model_8_conv2d_170_conv2d_readvariableop_resource6
2model_8_conv2d_170_biasadd_readvariableop_resource
identityИв=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpв?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в,model_8/batch_normalization_8/ReadVariableOpв.model_8/batch_normalization_8/ReadVariableOp_1в)model_8/conv2d_152/BiasAdd/ReadVariableOpв(model_8/conv2d_152/Conv2D/ReadVariableOpв)model_8/conv2d_153/BiasAdd/ReadVariableOpв(model_8/conv2d_153/Conv2D/ReadVariableOpв)model_8/conv2d_154/BiasAdd/ReadVariableOpв(model_8/conv2d_154/Conv2D/ReadVariableOpв)model_8/conv2d_155/BiasAdd/ReadVariableOpв(model_8/conv2d_155/Conv2D/ReadVariableOpв)model_8/conv2d_156/BiasAdd/ReadVariableOpв(model_8/conv2d_156/Conv2D/ReadVariableOpв)model_8/conv2d_157/BiasAdd/ReadVariableOpв(model_8/conv2d_157/Conv2D/ReadVariableOpв)model_8/conv2d_158/BiasAdd/ReadVariableOpв(model_8/conv2d_158/Conv2D/ReadVariableOpв)model_8/conv2d_159/BiasAdd/ReadVariableOpв(model_8/conv2d_159/Conv2D/ReadVariableOpв)model_8/conv2d_160/BiasAdd/ReadVariableOpв(model_8/conv2d_160/Conv2D/ReadVariableOpв)model_8/conv2d_161/BiasAdd/ReadVariableOpв(model_8/conv2d_161/Conv2D/ReadVariableOpв)model_8/conv2d_162/BiasAdd/ReadVariableOpв(model_8/conv2d_162/Conv2D/ReadVariableOpв)model_8/conv2d_163/BiasAdd/ReadVariableOpв(model_8/conv2d_163/Conv2D/ReadVariableOpв)model_8/conv2d_164/BiasAdd/ReadVariableOpв(model_8/conv2d_164/Conv2D/ReadVariableOpв)model_8/conv2d_165/BiasAdd/ReadVariableOpв(model_8/conv2d_165/Conv2D/ReadVariableOpв)model_8/conv2d_166/BiasAdd/ReadVariableOpв(model_8/conv2d_166/Conv2D/ReadVariableOpв)model_8/conv2d_167/BiasAdd/ReadVariableOpв(model_8/conv2d_167/Conv2D/ReadVariableOpв)model_8/conv2d_168/BiasAdd/ReadVariableOpв(model_8/conv2d_168/Conv2D/ReadVariableOpв)model_8/conv2d_169/BiasAdd/ReadVariableOpв(model_8/conv2d_169/Conv2D/ReadVariableOpв)model_8/conv2d_170/BiasAdd/ReadVariableOpв(model_8/conv2d_170/Conv2D/ReadVariableOp╬
,model_8/batch_normalization_8/ReadVariableOpReadVariableOp5model_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_8/batch_normalization_8/ReadVariableOp╘
.model_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp7model_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype020
.model_8/batch_normalization_8/ReadVariableOp_1Б
=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpЗ
?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02A
?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Г
.model_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3	rgb_input4model_8/batch_normalization_8/ReadVariableOp:value:06model_8/batch_normalization_8/ReadVariableOp_1:value:0Emodel_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         АА:::::*
epsilon%oГ:*
is_training( 20
.model_8/batch_normalization_8/FusedBatchNormV3╬
(model_8/conv2d_152/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_152_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_152/Conv2D/ReadVariableOpК
model_8/conv2d_152/Conv2DConv2D2model_8/batch_normalization_8/FusedBatchNormV3:y:00model_8/conv2d_152/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_152/Conv2D┼
)model_8/conv2d_152/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_152_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_152/BiasAdd/ReadVariableOp╓
model_8/conv2d_152/BiasAddBiasAdd"model_8/conv2d_152/Conv2D:output:01model_8/conv2d_152/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_152/BiasAddЫ
model_8/conv2d_152/ReluRelu#model_8/conv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_152/Relu╬
(model_8/conv2d_153/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_153/Conv2D/ReadVariableOp¤
model_8/conv2d_153/Conv2DConv2D%model_8/conv2d_152/Relu:activations:00model_8/conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_153/Conv2D┼
)model_8/conv2d_153/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_153/BiasAdd/ReadVariableOp╓
model_8/conv2d_153/BiasAddBiasAdd"model_8/conv2d_153/Conv2D:output:01model_8/conv2d_153/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_153/BiasAddЫ
model_8/conv2d_153/ReluRelu#model_8/conv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_153/Reluх
 model_8/max_pooling2d_32/MaxPoolMaxPool%model_8/conv2d_153/Relu:activations:0*1
_output_shapes
:         АА*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_32/MaxPool╬
(model_8/conv2d_154/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_154_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_154/Conv2D/ReadVariableOpБ
model_8/conv2d_154/Conv2DConv2D)model_8/max_pooling2d_32/MaxPool:output:00model_8/conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_154/Conv2D┼
)model_8/conv2d_154/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_154/BiasAdd/ReadVariableOp╓
model_8/conv2d_154/BiasAddBiasAdd"model_8/conv2d_154/Conv2D:output:01model_8/conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_154/BiasAddЫ
model_8/conv2d_154/ReluRelu#model_8/conv2d_154/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_154/Relu╬
(model_8/conv2d_155/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_155/Conv2D/ReadVariableOp¤
model_8/conv2d_155/Conv2DConv2D%model_8/conv2d_154/Relu:activations:00model_8/conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_155/Conv2D┼
)model_8/conv2d_155/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_155/BiasAdd/ReadVariableOp╓
model_8/conv2d_155/BiasAddBiasAdd"model_8/conv2d_155/Conv2D:output:01model_8/conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_155/BiasAddЫ
model_8/conv2d_155/ReluRelu#model_8/conv2d_155/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_155/Reluх
 model_8/max_pooling2d_33/MaxPoolMaxPool%model_8/conv2d_155/Relu:activations:0*1
_output_shapes
:         └└*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_33/MaxPool╬
(model_8/conv2d_156/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_156_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02*
(model_8/conv2d_156/Conv2D/ReadVariableOpБ
model_8/conv2d_156/Conv2DConv2D)model_8/max_pooling2d_33/MaxPool:output:00model_8/conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
model_8/conv2d_156/Conv2D┼
)model_8/conv2d_156/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_156/BiasAdd/ReadVariableOp╓
model_8/conv2d_156/BiasAddBiasAdd"model_8/conv2d_156/Conv2D:output:01model_8/conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_156/BiasAddЫ
model_8/conv2d_156/ReluRelu#model_8/conv2d_156/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_156/Relu╬
(model_8/conv2d_157/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02*
(model_8/conv2d_157/Conv2D/ReadVariableOp¤
model_8/conv2d_157/Conv2DConv2D%model_8/conv2d_156/Relu:activations:00model_8/conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
model_8/conv2d_157/Conv2D┼
)model_8/conv2d_157/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_157/BiasAdd/ReadVariableOp╓
model_8/conv2d_157/BiasAddBiasAdd"model_8/conv2d_157/Conv2D:output:01model_8/conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_157/BiasAddЫ
model_8/conv2d_157/ReluRelu#model_8/conv2d_157/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_157/Reluу
 model_8/max_pooling2d_34/MaxPoolMaxPool%model_8/conv2d_157/Relu:activations:0*/
_output_shapes
:         `` *
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_34/MaxPool╬
(model_8/conv2d_158/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_158_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02*
(model_8/conv2d_158/Conv2D/ReadVariableOp 
model_8/conv2d_158/Conv2DConv2D)model_8/max_pooling2d_34/MaxPool:output:00model_8/conv2d_158/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
model_8/conv2d_158/Conv2D┼
)model_8/conv2d_158/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_158_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model_8/conv2d_158/BiasAdd/ReadVariableOp╘
model_8/conv2d_158/BiasAddBiasAdd"model_8/conv2d_158/Conv2D:output:01model_8/conv2d_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_158/BiasAddЩ
model_8/conv2d_158/ReluRelu#model_8/conv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_158/Relu╬
(model_8/conv2d_159/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(model_8/conv2d_159/Conv2D/ReadVariableOp√
model_8/conv2d_159/Conv2DConv2D%model_8/conv2d_158/Relu:activations:00model_8/conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
model_8/conv2d_159/Conv2D┼
)model_8/conv2d_159/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_159_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model_8/conv2d_159/BiasAdd/ReadVariableOp╘
model_8/conv2d_159/BiasAddBiasAdd"model_8/conv2d_159/Conv2D:output:01model_8/conv2d_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_159/BiasAddЩ
model_8/conv2d_159/ReluRelu#model_8/conv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_159/Reluу
 model_8/max_pooling2d_35/MaxPoolMaxPool%model_8/conv2d_159/Relu:activations:0*/
_output_shapes
:         00@*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_35/MaxPool╧
(model_8/conv2d_160/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_160_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02*
(model_8/conv2d_160/Conv2D/ReadVariableOpА
model_8/conv2d_160/Conv2DConv2D)model_8/max_pooling2d_35/MaxPool:output:00model_8/conv2d_160/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
model_8/conv2d_160/Conv2D╞
)model_8/conv2d_160/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_160_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)model_8/conv2d_160/BiasAdd/ReadVariableOp╒
model_8/conv2d_160/BiasAddBiasAdd"model_8/conv2d_160/Conv2D:output:01model_8/conv2d_160/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
model_8/conv2d_160/BiasAddЪ
model_8/conv2d_160/ReluRelu#model_8/conv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
model_8/conv2d_160/Relu╨
(model_8/conv2d_161/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(model_8/conv2d_161/Conv2D/ReadVariableOp№
model_8/conv2d_161/Conv2DConv2D%model_8/conv2d_160/Relu:activations:00model_8/conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
model_8/conv2d_161/Conv2D╞
)model_8/conv2d_161/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_161_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)model_8/conv2d_161/BiasAdd/ReadVariableOp╒
model_8/conv2d_161/BiasAddBiasAdd"model_8/conv2d_161/Conv2D:output:01model_8/conv2d_161/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2
model_8/conv2d_161/BiasAddЪ
model_8/conv2d_161/ReluRelu#model_8/conv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         00А2
model_8/conv2d_161/ReluХ
model_8/up_sampling2d_32/ShapeShape%model_8/conv2d_161/Relu:activations:0*
T0*
_output_shapes
:2 
model_8/up_sampling2d_32/Shapeж
,model_8/up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model_8/up_sampling2d_32/strided_slice/stackк
.model_8/up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_32/strided_slice/stack_1к
.model_8/up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_32/strided_slice/stack_2ф
&model_8/up_sampling2d_32/strided_sliceStridedSlice'model_8/up_sampling2d_32/Shape:output:05model_8/up_sampling2d_32/strided_slice/stack:output:07model_8/up_sampling2d_32/strided_slice/stack_1:output:07model_8/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&model_8/up_sampling2d_32/strided_sliceС
model_8/up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
model_8/up_sampling2d_32/Const┬
model_8/up_sampling2d_32/mulMul/model_8/up_sampling2d_32/strided_slice:output:0'model_8/up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2
model_8/up_sampling2d_32/mulе
5model_8/up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighbor%model_8/conv2d_161/Relu:activations:0 model_8/up_sampling2d_32/mul:z:0*
T0*0
_output_shapes
:         ``А*
half_pixel_centers(27
5model_8/up_sampling2d_32/resize/ResizeNearestNeighborК
"model_8/concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_32/concat/axisк
model_8/concatenate_32/concatConcatV2Fmodel_8/up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0%model_8/conv2d_159/Relu:activations:0+model_8/concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         ``└2
model_8/concatenate_32/concat╧
(model_8/conv2d_162/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:└@*
dtype02*
(model_8/conv2d_162/Conv2D/ReadVariableOp№
model_8/conv2d_162/Conv2DConv2D&model_8/concatenate_32/concat:output:00model_8/conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
model_8/conv2d_162/Conv2D┼
)model_8/conv2d_162/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_162_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model_8/conv2d_162/BiasAdd/ReadVariableOp╘
model_8/conv2d_162/BiasAddBiasAdd"model_8/conv2d_162/Conv2D:output:01model_8/conv2d_162/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_162/BiasAddЩ
model_8/conv2d_162/ReluRelu#model_8/conv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_162/Relu╬
(model_8/conv2d_163/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(model_8/conv2d_163/Conv2D/ReadVariableOp√
model_8/conv2d_163/Conv2DConv2D%model_8/conv2d_162/Relu:activations:00model_8/conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
model_8/conv2d_163/Conv2D┼
)model_8/conv2d_163/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model_8/conv2d_163/BiasAdd/ReadVariableOp╘
model_8/conv2d_163/BiasAddBiasAdd"model_8/conv2d_163/Conv2D:output:01model_8/conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_163/BiasAddЩ
model_8/conv2d_163/ReluRelu#model_8/conv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
model_8/conv2d_163/ReluХ
model_8/up_sampling2d_33/ShapeShape%model_8/conv2d_163/Relu:activations:0*
T0*
_output_shapes
:2 
model_8/up_sampling2d_33/Shapeж
,model_8/up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model_8/up_sampling2d_33/strided_slice/stackк
.model_8/up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_33/strided_slice/stack_1к
.model_8/up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_33/strided_slice/stack_2ф
&model_8/up_sampling2d_33/strided_sliceStridedSlice'model_8/up_sampling2d_33/Shape:output:05model_8/up_sampling2d_33/strided_slice/stack:output:07model_8/up_sampling2d_33/strided_slice/stack_1:output:07model_8/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&model_8/up_sampling2d_33/strided_sliceС
model_8/up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
model_8/up_sampling2d_33/Const┬
model_8/up_sampling2d_33/mulMul/model_8/up_sampling2d_33/strided_slice:output:0'model_8/up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2
model_8/up_sampling2d_33/mulж
5model_8/up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighbor%model_8/conv2d_163/Relu:activations:0 model_8/up_sampling2d_33/mul:z:0*
T0*1
_output_shapes
:         └└@*
half_pixel_centers(27
5model_8/up_sampling2d_33/resize/ResizeNearestNeighborК
"model_8/concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_33/concat/axisл
model_8/concatenate_33/concatConcatV2Fmodel_8/up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0%model_8/conv2d_157/Relu:activations:0+model_8/concatenate_33/concat/axis:output:0*
N*
T0*1
_output_shapes
:         └└`2
model_8/concatenate_33/concat╬
(model_8/conv2d_164/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:` *
dtype02*
(model_8/conv2d_164/Conv2D/ReadVariableOp■
model_8/conv2d_164/Conv2DConv2D&model_8/concatenate_33/concat:output:00model_8/conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
model_8/conv2d_164/Conv2D┼
)model_8/conv2d_164/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_164/BiasAdd/ReadVariableOp╓
model_8/conv2d_164/BiasAddBiasAdd"model_8/conv2d_164/Conv2D:output:01model_8/conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_164/BiasAddЫ
model_8/conv2d_164/ReluRelu#model_8/conv2d_164/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_164/Relu╬
(model_8/conv2d_165/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02*
(model_8/conv2d_165/Conv2D/ReadVariableOp¤
model_8/conv2d_165/Conv2DConv2D%model_8/conv2d_164/Relu:activations:00model_8/conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
model_8/conv2d_165/Conv2D┼
)model_8/conv2d_165/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_165/BiasAdd/ReadVariableOp╓
model_8/conv2d_165/BiasAddBiasAdd"model_8/conv2d_165/Conv2D:output:01model_8/conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_165/BiasAddЫ
model_8/conv2d_165/ReluRelu#model_8/conv2d_165/BiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
model_8/conv2d_165/ReluХ
model_8/up_sampling2d_34/ShapeShape%model_8/conv2d_165/Relu:activations:0*
T0*
_output_shapes
:2 
model_8/up_sampling2d_34/Shapeж
,model_8/up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model_8/up_sampling2d_34/strided_slice/stackк
.model_8/up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_34/strided_slice/stack_1к
.model_8/up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_34/strided_slice/stack_2ф
&model_8/up_sampling2d_34/strided_sliceStridedSlice'model_8/up_sampling2d_34/Shape:output:05model_8/up_sampling2d_34/strided_slice/stack:output:07model_8/up_sampling2d_34/strided_slice/stack_1:output:07model_8/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&model_8/up_sampling2d_34/strided_sliceС
model_8/up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
model_8/up_sampling2d_34/Const┬
model_8/up_sampling2d_34/mulMul/model_8/up_sampling2d_34/strided_slice:output:0'model_8/up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2
model_8/up_sampling2d_34/mulж
5model_8/up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbor%model_8/conv2d_165/Relu:activations:0 model_8/up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:         АА *
half_pixel_centers(27
5model_8/up_sampling2d_34/resize/ResizeNearestNeighborК
"model_8/concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_34/concat/axisл
model_8/concatenate_34/concatConcatV2Fmodel_8/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0%model_8/conv2d_155/Relu:activations:0+model_8/concatenate_34/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА02
model_8/concatenate_34/concat╬
(model_8/conv2d_166/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02*
(model_8/conv2d_166/Conv2D/ReadVariableOp■
model_8/conv2d_166/Conv2DConv2D&model_8/concatenate_34/concat:output:00model_8/conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_166/Conv2D┼
)model_8/conv2d_166/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_166/BiasAdd/ReadVariableOp╓
model_8/conv2d_166/BiasAddBiasAdd"model_8/conv2d_166/Conv2D:output:01model_8/conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_166/BiasAddЫ
model_8/conv2d_166/ReluRelu#model_8/conv2d_166/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_166/Relu╬
(model_8/conv2d_167/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_167/Conv2D/ReadVariableOp¤
model_8/conv2d_167/Conv2DConv2D%model_8/conv2d_166/Relu:activations:00model_8/conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_167/Conv2D┼
)model_8/conv2d_167/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_167/BiasAdd/ReadVariableOp╓
model_8/conv2d_167/BiasAddBiasAdd"model_8/conv2d_167/Conv2D:output:01model_8/conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_167/BiasAddЫ
model_8/conv2d_167/ReluRelu#model_8/conv2d_167/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_167/ReluХ
model_8/up_sampling2d_35/ShapeShape%model_8/conv2d_167/Relu:activations:0*
T0*
_output_shapes
:2 
model_8/up_sampling2d_35/Shapeж
,model_8/up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model_8/up_sampling2d_35/strided_slice/stackк
.model_8/up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_35/strided_slice/stack_1к
.model_8/up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_8/up_sampling2d_35/strided_slice/stack_2ф
&model_8/up_sampling2d_35/strided_sliceStridedSlice'model_8/up_sampling2d_35/Shape:output:05model_8/up_sampling2d_35/strided_slice/stack:output:07model_8/up_sampling2d_35/strided_slice/stack_1:output:07model_8/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&model_8/up_sampling2d_35/strided_sliceС
model_8/up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
model_8/up_sampling2d_35/Const┬
model_8/up_sampling2d_35/mulMul/model_8/up_sampling2d_35/strided_slice:output:0'model_8/up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:2
model_8/up_sampling2d_35/mulж
5model_8/up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighbor%model_8/conv2d_167/Relu:activations:0 model_8/up_sampling2d_35/mul:z:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(27
5model_8/up_sampling2d_35/resize/ResizeNearestNeighborК
"model_8/concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_35/concat/axisл
model_8/concatenate_35/concatConcatV2Fmodel_8/up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0%model_8/conv2d_153/Relu:activations:0+model_8/concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
model_8/concatenate_35/concat╬
(model_8/conv2d_168/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_168/Conv2D/ReadVariableOp■
model_8/conv2d_168/Conv2DConv2D&model_8/concatenate_35/concat:output:00model_8/conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_168/Conv2D┼
)model_8/conv2d_168/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_168/BiasAdd/ReadVariableOp╓
model_8/conv2d_168/BiasAddBiasAdd"model_8/conv2d_168/Conv2D:output:01model_8/conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_168/BiasAddЫ
model_8/conv2d_168/ReluRelu#model_8/conv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_168/Relu╬
(model_8/conv2d_169/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_169/Conv2D/ReadVariableOp¤
model_8/conv2d_169/Conv2DConv2D%model_8/conv2d_168/Relu:activations:00model_8/conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
model_8/conv2d_169/Conv2D┼
)model_8/conv2d_169/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_169/BiasAdd/ReadVariableOp╓
model_8/conv2d_169/BiasAddBiasAdd"model_8/conv2d_169/Conv2D:output:01model_8/conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_169/BiasAddЫ
model_8/conv2d_169/ReluRelu#model_8/conv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_169/Relu╬
(model_8/conv2d_170/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_170/Conv2D/ReadVariableOp■
model_8/conv2d_170/Conv2DConv2D%model_8/conv2d_169/Relu:activations:00model_8/conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingVALID*
strides
2
model_8/conv2d_170/Conv2D┼
)model_8/conv2d_170/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_170/BiasAdd/ReadVariableOp╓
model_8/conv2d_170/BiasAddBiasAdd"model_8/conv2d_170/Conv2D:output:01model_8/conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_170/BiasAddд
model_8/conv2d_170/SigmoidSigmoid#model_8/conv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_170/Sigmoidн
(model_8/cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"              2*
(model_8/cropping2d_8/strided_slice/stack▒
*model_8/cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    Ё   Ё       2,
*model_8/cropping2d_8/strided_slice/stack_1▒
*model_8/cropping2d_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2,
*model_8/cropping2d_8/strided_slice/stack_2А
"model_8/cropping2d_8/strided_sliceStridedSlicemodel_8/conv2d_170/Sigmoid:y:01model_8/cropping2d_8/strided_slice/stack:output:03model_8/cropping2d_8/strided_slice/stack_1:output:03model_8/cropping2d_8/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:         рр*

begin_mask	*
end_mask	2$
"model_8/cropping2d_8/strided_slice┐
%model_8/zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2'
%model_8/zero_padding2d_8/Pad/paddings▄
model_8/zero_padding2d_8/PadPad+model_8/cropping2d_8/strided_slice:output:0.model_8/zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
model_8/zero_padding2d_8/Pad┌
IdentityIdentity%model_8/zero_padding2d_8/Pad:output:0>^model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp@^model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1-^model_8/batch_normalization_8/ReadVariableOp/^model_8/batch_normalization_8/ReadVariableOp_1*^model_8/conv2d_152/BiasAdd/ReadVariableOp)^model_8/conv2d_152/Conv2D/ReadVariableOp*^model_8/conv2d_153/BiasAdd/ReadVariableOp)^model_8/conv2d_153/Conv2D/ReadVariableOp*^model_8/conv2d_154/BiasAdd/ReadVariableOp)^model_8/conv2d_154/Conv2D/ReadVariableOp*^model_8/conv2d_155/BiasAdd/ReadVariableOp)^model_8/conv2d_155/Conv2D/ReadVariableOp*^model_8/conv2d_156/BiasAdd/ReadVariableOp)^model_8/conv2d_156/Conv2D/ReadVariableOp*^model_8/conv2d_157/BiasAdd/ReadVariableOp)^model_8/conv2d_157/Conv2D/ReadVariableOp*^model_8/conv2d_158/BiasAdd/ReadVariableOp)^model_8/conv2d_158/Conv2D/ReadVariableOp*^model_8/conv2d_159/BiasAdd/ReadVariableOp)^model_8/conv2d_159/Conv2D/ReadVariableOp*^model_8/conv2d_160/BiasAdd/ReadVariableOp)^model_8/conv2d_160/Conv2D/ReadVariableOp*^model_8/conv2d_161/BiasAdd/ReadVariableOp)^model_8/conv2d_161/Conv2D/ReadVariableOp*^model_8/conv2d_162/BiasAdd/ReadVariableOp)^model_8/conv2d_162/Conv2D/ReadVariableOp*^model_8/conv2d_163/BiasAdd/ReadVariableOp)^model_8/conv2d_163/Conv2D/ReadVariableOp*^model_8/conv2d_164/BiasAdd/ReadVariableOp)^model_8/conv2d_164/Conv2D/ReadVariableOp*^model_8/conv2d_165/BiasAdd/ReadVariableOp)^model_8/conv2d_165/Conv2D/ReadVariableOp*^model_8/conv2d_166/BiasAdd/ReadVariableOp)^model_8/conv2d_166/Conv2D/ReadVariableOp*^model_8/conv2d_167/BiasAdd/ReadVariableOp)^model_8/conv2d_167/Conv2D/ReadVariableOp*^model_8/conv2d_168/BiasAdd/ReadVariableOp)^model_8/conv2d_168/Conv2D/ReadVariableOp*^model_8/conv2d_169/BiasAdd/ReadVariableOp)^model_8/conv2d_169/Conv2D/ReadVariableOp*^model_8/conv2d_170/BiasAdd/ReadVariableOp)^model_8/conv2d_170/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2~
=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2В
?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12\
,model_8/batch_normalization_8/ReadVariableOp,model_8/batch_normalization_8/ReadVariableOp2`
.model_8/batch_normalization_8/ReadVariableOp_1.model_8/batch_normalization_8/ReadVariableOp_12V
)model_8/conv2d_152/BiasAdd/ReadVariableOp)model_8/conv2d_152/BiasAdd/ReadVariableOp2T
(model_8/conv2d_152/Conv2D/ReadVariableOp(model_8/conv2d_152/Conv2D/ReadVariableOp2V
)model_8/conv2d_153/BiasAdd/ReadVariableOp)model_8/conv2d_153/BiasAdd/ReadVariableOp2T
(model_8/conv2d_153/Conv2D/ReadVariableOp(model_8/conv2d_153/Conv2D/ReadVariableOp2V
)model_8/conv2d_154/BiasAdd/ReadVariableOp)model_8/conv2d_154/BiasAdd/ReadVariableOp2T
(model_8/conv2d_154/Conv2D/ReadVariableOp(model_8/conv2d_154/Conv2D/ReadVariableOp2V
)model_8/conv2d_155/BiasAdd/ReadVariableOp)model_8/conv2d_155/BiasAdd/ReadVariableOp2T
(model_8/conv2d_155/Conv2D/ReadVariableOp(model_8/conv2d_155/Conv2D/ReadVariableOp2V
)model_8/conv2d_156/BiasAdd/ReadVariableOp)model_8/conv2d_156/BiasAdd/ReadVariableOp2T
(model_8/conv2d_156/Conv2D/ReadVariableOp(model_8/conv2d_156/Conv2D/ReadVariableOp2V
)model_8/conv2d_157/BiasAdd/ReadVariableOp)model_8/conv2d_157/BiasAdd/ReadVariableOp2T
(model_8/conv2d_157/Conv2D/ReadVariableOp(model_8/conv2d_157/Conv2D/ReadVariableOp2V
)model_8/conv2d_158/BiasAdd/ReadVariableOp)model_8/conv2d_158/BiasAdd/ReadVariableOp2T
(model_8/conv2d_158/Conv2D/ReadVariableOp(model_8/conv2d_158/Conv2D/ReadVariableOp2V
)model_8/conv2d_159/BiasAdd/ReadVariableOp)model_8/conv2d_159/BiasAdd/ReadVariableOp2T
(model_8/conv2d_159/Conv2D/ReadVariableOp(model_8/conv2d_159/Conv2D/ReadVariableOp2V
)model_8/conv2d_160/BiasAdd/ReadVariableOp)model_8/conv2d_160/BiasAdd/ReadVariableOp2T
(model_8/conv2d_160/Conv2D/ReadVariableOp(model_8/conv2d_160/Conv2D/ReadVariableOp2V
)model_8/conv2d_161/BiasAdd/ReadVariableOp)model_8/conv2d_161/BiasAdd/ReadVariableOp2T
(model_8/conv2d_161/Conv2D/ReadVariableOp(model_8/conv2d_161/Conv2D/ReadVariableOp2V
)model_8/conv2d_162/BiasAdd/ReadVariableOp)model_8/conv2d_162/BiasAdd/ReadVariableOp2T
(model_8/conv2d_162/Conv2D/ReadVariableOp(model_8/conv2d_162/Conv2D/ReadVariableOp2V
)model_8/conv2d_163/BiasAdd/ReadVariableOp)model_8/conv2d_163/BiasAdd/ReadVariableOp2T
(model_8/conv2d_163/Conv2D/ReadVariableOp(model_8/conv2d_163/Conv2D/ReadVariableOp2V
)model_8/conv2d_164/BiasAdd/ReadVariableOp)model_8/conv2d_164/BiasAdd/ReadVariableOp2T
(model_8/conv2d_164/Conv2D/ReadVariableOp(model_8/conv2d_164/Conv2D/ReadVariableOp2V
)model_8/conv2d_165/BiasAdd/ReadVariableOp)model_8/conv2d_165/BiasAdd/ReadVariableOp2T
(model_8/conv2d_165/Conv2D/ReadVariableOp(model_8/conv2d_165/Conv2D/ReadVariableOp2V
)model_8/conv2d_166/BiasAdd/ReadVariableOp)model_8/conv2d_166/BiasAdd/ReadVariableOp2T
(model_8/conv2d_166/Conv2D/ReadVariableOp(model_8/conv2d_166/Conv2D/ReadVariableOp2V
)model_8/conv2d_167/BiasAdd/ReadVariableOp)model_8/conv2d_167/BiasAdd/ReadVariableOp2T
(model_8/conv2d_167/Conv2D/ReadVariableOp(model_8/conv2d_167/Conv2D/ReadVariableOp2V
)model_8/conv2d_168/BiasAdd/ReadVariableOp)model_8/conv2d_168/BiasAdd/ReadVariableOp2T
(model_8/conv2d_168/Conv2D/ReadVariableOp(model_8/conv2d_168/Conv2D/ReadVariableOp2V
)model_8/conv2d_169/BiasAdd/ReadVariableOp)model_8/conv2d_169/BiasAdd/ReadVariableOp2T
(model_8/conv2d_169/Conv2D/ReadVariableOp(model_8/conv2d_169/Conv2D/ReadVariableOp2V
)model_8/conv2d_170/BiasAdd/ReadVariableOp)model_8/conv2d_170/BiasAdd/ReadVariableOp2T
(model_8/conv2d_170/Conv2D/ReadVariableOp(model_8/conv2d_170/Conv2D/ReadVariableOp:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
╒

▐
E__inference_conv2d_160_layer_call_and_return_conditional_losses_34240

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         00А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         00А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         00А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
ыЮ
Ы
B__inference_model_8_layer_call_and_return_conditional_losses_34720
	rgb_input
batch_normalization_8_34601
batch_normalization_8_34603
batch_normalization_8_34605
batch_normalization_8_34607
conv2d_152_34610
conv2d_152_34612
conv2d_153_34615
conv2d_153_34617
conv2d_154_34621
conv2d_154_34623
conv2d_155_34626
conv2d_155_34628
conv2d_156_34632
conv2d_156_34634
conv2d_157_34637
conv2d_157_34639
conv2d_158_34643
conv2d_158_34645
conv2d_159_34648
conv2d_159_34650
conv2d_160_34654
conv2d_160_34656
conv2d_161_34659
conv2d_161_34661
conv2d_162_34666
conv2d_162_34668
conv2d_163_34671
conv2d_163_34673
conv2d_164_34678
conv2d_164_34680
conv2d_165_34683
conv2d_165_34685
conv2d_166_34690
conv2d_166_34692
conv2d_167_34695
conv2d_167_34697
conv2d_168_34702
conv2d_168_34704
conv2d_169_34707
conv2d_169_34709
conv2d_170_34712
conv2d_170_34714
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCall√
 gaussian_noise_8/PartitionedCallPartitionedCall	rgb_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_339232"
 gaussian_noise_8/PartitionedCall└
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_8/PartitionedCall:output:0batch_normalization_8_34601batch_normalization_8_34603batch_normalization_8_34605batch_normalization_8_34607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_339732/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_34610conv2d_152_34612*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_340202$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_34615conv2d_153_34617*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_340472$
"conv2d_153/StatefulPartitionedCallЭ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_337582"
 max_pooling2d_32/PartitionedCall╦
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_34621conv2d_154_34623*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_340752$
"conv2d_154/StatefulPartitionedCall═
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_34626conv2d_155_34628*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_341022$
"conv2d_155/StatefulPartitionedCallЭ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_337702"
 max_pooling2d_33/PartitionedCall╦
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_34632conv2d_156_34634*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_341302$
"conv2d_156/StatefulPartitionedCall═
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_34637conv2d_157_34639*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_341572$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `` * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_337822"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_34643conv2d_158_34645*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_341852$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_34648conv2d_159_34650*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_342122$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_337942"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_34654conv2d_160_34656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_342402$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_34659conv2d_161_34661*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_342672$
"conv2d_161/StatefulPartitionedCallо
 up_sampling2d_32/PartitionedCallPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_338132"
 up_sampling2d_32/PartitionedCall┬
concatenate_32/PartitionedCallPartitionedCall)up_sampling2d_32/PartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ``└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_342912 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_34666conv2d_162_34668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_343112$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_34671conv2d_163_34673*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_343382$
"conv2d_163/StatefulPartitionedCallн
 up_sampling2d_33/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_338322"
 up_sampling2d_33/PartitionedCall├
concatenate_33/PartitionedCallPartitionedCall)up_sampling2d_33/PartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_343622 
concatenate_33/PartitionedCall╔
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_34678conv2d_164_34680*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_343822$
"conv2d_164/StatefulPartitionedCall═
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_34683conv2d_165_34685*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         └└ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_344092$
"conv2d_165/StatefulPartitionedCallн
 up_sampling2d_34/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_338512"
 up_sampling2d_34/PartitionedCall├
concatenate_34/PartitionedCallPartitionedCall)up_sampling2d_34/PartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_344332 
concatenate_34/PartitionedCall╔
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_34690conv2d_166_34692*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_344532$
"conv2d_166/StatefulPartitionedCall═
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_34695conv2d_167_34697*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_344802$
"conv2d_167/StatefulPartitionedCallн
 up_sampling2d_35/PartitionedCallPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_338702"
 up_sampling2d_35/PartitionedCall├
concatenate_35/PartitionedCallPartitionedCall)up_sampling2d_35/PartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_345042 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_34702conv2d_168_34704*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_345242$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_34707conv2d_169_34709*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_345512$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_34712conv2d_170_34714*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_345782$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_338852
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_338982"
 zero_padding2d_8/PartitionedCallЎ
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2H
"conv2d_152/StatefulPartitionedCall"conv2d_152/StatefulPartitionedCall2H
"conv2d_153/StatefulPartitionedCall"conv2d_153/StatefulPartitionedCall2H
"conv2d_154/StatefulPartitionedCall"conv2d_154/StatefulPartitionedCall2H
"conv2d_155/StatefulPartitionedCall"conv2d_155/StatefulPartitionedCall2H
"conv2d_156/StatefulPartitionedCall"conv2d_156/StatefulPartitionedCall2H
"conv2d_157/StatefulPartitionedCall"conv2d_157/StatefulPartitionedCall2H
"conv2d_158/StatefulPartitionedCall"conv2d_158/StatefulPartitionedCall2H
"conv2d_159/StatefulPartitionedCall"conv2d_159/StatefulPartitionedCall2H
"conv2d_160/StatefulPartitionedCall"conv2d_160/StatefulPartitionedCall2H
"conv2d_161/StatefulPartitionedCall"conv2d_161/StatefulPartitionedCall2H
"conv2d_162/StatefulPartitionedCall"conv2d_162/StatefulPartitionedCall2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2H
"conv2d_167/StatefulPartitionedCall"conv2d_167/StatefulPartitionedCall2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
▐

▐
E__inference_conv2d_170_layer_call_and_return_conditional_losses_36409

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         АА2	
SigmoidЪ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_153_layer_call_and_return_conditional_losses_36017

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35896

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ц
u
I__inference_concatenate_32_layer_call_and_return_conditional_losses_36193
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         ``└2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         ``└2

Identity"
identityIdentity:output:0*\
_input_shapesK
I:,                           А:         ``@:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         ``@
"
_user_specified_name
inputs/1
█

▐
E__inference_conv2d_155_layer_call_and_return_conditional_losses_36057

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_32_layer_call_fn_33764

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_337582
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╠
Ў
'__inference_model_8_layer_call_fn_34933
	rgb_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCall	rgb_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_348462
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*┌
_input_shapes╚
┼:         АА::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Ъ
u
I__inference_concatenate_35_layer_call_and_return_conditional_losses_36352
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЛ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
■Б
Ў8
__inference__traced_save_36846
file_prefix:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop0
,savev2_conv2d_152_kernel_read_readvariableop.
*savev2_conv2d_152_bias_read_readvariableop0
,savev2_conv2d_153_kernel_read_readvariableop.
*savev2_conv2d_153_bias_read_readvariableop0
,savev2_conv2d_154_kernel_read_readvariableop.
*savev2_conv2d_154_bias_read_readvariableop0
,savev2_conv2d_155_kernel_read_readvariableop.
*savev2_conv2d_155_bias_read_readvariableop0
,savev2_conv2d_156_kernel_read_readvariableop.
*savev2_conv2d_156_bias_read_readvariableop0
,savev2_conv2d_157_kernel_read_readvariableop.
*savev2_conv2d_157_bias_read_readvariableop0
,savev2_conv2d_158_kernel_read_readvariableop.
*savev2_conv2d_158_bias_read_readvariableop0
,savev2_conv2d_159_kernel_read_readvariableop.
*savev2_conv2d_159_bias_read_readvariableop0
,savev2_conv2d_160_kernel_read_readvariableop.
*savev2_conv2d_160_bias_read_readvariableop0
,savev2_conv2d_161_kernel_read_readvariableop.
*savev2_conv2d_161_bias_read_readvariableop0
,savev2_conv2d_162_kernel_read_readvariableop.
*savev2_conv2d_162_bias_read_readvariableop0
,savev2_conv2d_163_kernel_read_readvariableop.
*savev2_conv2d_163_bias_read_readvariableop0
,savev2_conv2d_164_kernel_read_readvariableop.
*savev2_conv2d_164_bias_read_readvariableop0
,savev2_conv2d_165_kernel_read_readvariableop.
*savev2_conv2d_165_bias_read_readvariableop0
,savev2_conv2d_166_kernel_read_readvariableop.
*savev2_conv2d_166_bias_read_readvariableop0
,savev2_conv2d_167_kernel_read_readvariableop.
*savev2_conv2d_167_bias_read_readvariableop0
,savev2_conv2d_168_kernel_read_readvariableop.
*savev2_conv2d_168_bias_read_readvariableop0
,savev2_conv2d_169_kernel_read_readvariableop.
*savev2_conv2d_169_bias_read_readvariableop0
,savev2_conv2d_170_kernel_read_readvariableop.
*savev2_conv2d_170_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop7
3savev2_adam_conv2d_152_kernel_m_read_readvariableop5
1savev2_adam_conv2d_152_bias_m_read_readvariableop7
3savev2_adam_conv2d_153_kernel_m_read_readvariableop5
1savev2_adam_conv2d_153_bias_m_read_readvariableop7
3savev2_adam_conv2d_154_kernel_m_read_readvariableop5
1savev2_adam_conv2d_154_bias_m_read_readvariableop7
3savev2_adam_conv2d_155_kernel_m_read_readvariableop5
1savev2_adam_conv2d_155_bias_m_read_readvariableop7
3savev2_adam_conv2d_156_kernel_m_read_readvariableop5
1savev2_adam_conv2d_156_bias_m_read_readvariableop7
3savev2_adam_conv2d_157_kernel_m_read_readvariableop5
1savev2_adam_conv2d_157_bias_m_read_readvariableop7
3savev2_adam_conv2d_158_kernel_m_read_readvariableop5
1savev2_adam_conv2d_158_bias_m_read_readvariableop7
3savev2_adam_conv2d_159_kernel_m_read_readvariableop5
1savev2_adam_conv2d_159_bias_m_read_readvariableop7
3savev2_adam_conv2d_160_kernel_m_read_readvariableop5
1savev2_adam_conv2d_160_bias_m_read_readvariableop7
3savev2_adam_conv2d_161_kernel_m_read_readvariableop5
1savev2_adam_conv2d_161_bias_m_read_readvariableop7
3savev2_adam_conv2d_162_kernel_m_read_readvariableop5
1savev2_adam_conv2d_162_bias_m_read_readvariableop7
3savev2_adam_conv2d_163_kernel_m_read_readvariableop5
1savev2_adam_conv2d_163_bias_m_read_readvariableop7
3savev2_adam_conv2d_164_kernel_m_read_readvariableop5
1savev2_adam_conv2d_164_bias_m_read_readvariableop7
3savev2_adam_conv2d_165_kernel_m_read_readvariableop5
1savev2_adam_conv2d_165_bias_m_read_readvariableop7
3savev2_adam_conv2d_166_kernel_m_read_readvariableop5
1savev2_adam_conv2d_166_bias_m_read_readvariableop7
3savev2_adam_conv2d_167_kernel_m_read_readvariableop5
1savev2_adam_conv2d_167_bias_m_read_readvariableop7
3savev2_adam_conv2d_168_kernel_m_read_readvariableop5
1savev2_adam_conv2d_168_bias_m_read_readvariableop7
3savev2_adam_conv2d_169_kernel_m_read_readvariableop5
1savev2_adam_conv2d_169_bias_m_read_readvariableop7
3savev2_adam_conv2d_170_kernel_m_read_readvariableop5
1savev2_adam_conv2d_170_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop7
3savev2_adam_conv2d_152_kernel_v_read_readvariableop5
1savev2_adam_conv2d_152_bias_v_read_readvariableop7
3savev2_adam_conv2d_153_kernel_v_read_readvariableop5
1savev2_adam_conv2d_153_bias_v_read_readvariableop7
3savev2_adam_conv2d_154_kernel_v_read_readvariableop5
1savev2_adam_conv2d_154_bias_v_read_readvariableop7
3savev2_adam_conv2d_155_kernel_v_read_readvariableop5
1savev2_adam_conv2d_155_bias_v_read_readvariableop7
3savev2_adam_conv2d_156_kernel_v_read_readvariableop5
1savev2_adam_conv2d_156_bias_v_read_readvariableop7
3savev2_adam_conv2d_157_kernel_v_read_readvariableop5
1savev2_adam_conv2d_157_bias_v_read_readvariableop7
3savev2_adam_conv2d_158_kernel_v_read_readvariableop5
1savev2_adam_conv2d_158_bias_v_read_readvariableop7
3savev2_adam_conv2d_159_kernel_v_read_readvariableop5
1savev2_adam_conv2d_159_bias_v_read_readvariableop7
3savev2_adam_conv2d_160_kernel_v_read_readvariableop5
1savev2_adam_conv2d_160_bias_v_read_readvariableop7
3savev2_adam_conv2d_161_kernel_v_read_readvariableop5
1savev2_adam_conv2d_161_bias_v_read_readvariableop7
3savev2_adam_conv2d_162_kernel_v_read_readvariableop5
1savev2_adam_conv2d_162_bias_v_read_readvariableop7
3savev2_adam_conv2d_163_kernel_v_read_readvariableop5
1savev2_adam_conv2d_163_bias_v_read_readvariableop7
3savev2_adam_conv2d_164_kernel_v_read_readvariableop5
1savev2_adam_conv2d_164_bias_v_read_readvariableop7
3savev2_adam_conv2d_165_kernel_v_read_readvariableop5
1savev2_adam_conv2d_165_bias_v_read_readvariableop7
3savev2_adam_conv2d_166_kernel_v_read_readvariableop5
1savev2_adam_conv2d_166_bias_v_read_readvariableop7
3savev2_adam_conv2d_167_kernel_v_read_readvariableop5
1savev2_adam_conv2d_167_bias_v_read_readvariableop7
3savev2_adam_conv2d_168_kernel_v_read_readvariableop5
1savev2_adam_conv2d_168_bias_v_read_readvariableop7
3savev2_adam_conv2d_169_kernel_v_read_readvariableop5
1savev2_adam_conv2d_169_bias_v_read_readvariableop7
3savev2_adam_conv2d_170_kernel_v_read_readvariableop5
1savev2_adam_conv2d_170_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameўL
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:И*
dtype0*ИL
value■KB√KИB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЭ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:И*
dtype0*ж
valueЬBЩИB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices┤6
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop,savev2_conv2d_152_kernel_read_readvariableop*savev2_conv2d_152_bias_read_readvariableop,savev2_conv2d_153_kernel_read_readvariableop*savev2_conv2d_153_bias_read_readvariableop,savev2_conv2d_154_kernel_read_readvariableop*savev2_conv2d_154_bias_read_readvariableop,savev2_conv2d_155_kernel_read_readvariableop*savev2_conv2d_155_bias_read_readvariableop,savev2_conv2d_156_kernel_read_readvariableop*savev2_conv2d_156_bias_read_readvariableop,savev2_conv2d_157_kernel_read_readvariableop*savev2_conv2d_157_bias_read_readvariableop,savev2_conv2d_158_kernel_read_readvariableop*savev2_conv2d_158_bias_read_readvariableop,savev2_conv2d_159_kernel_read_readvariableop*savev2_conv2d_159_bias_read_readvariableop,savev2_conv2d_160_kernel_read_readvariableop*savev2_conv2d_160_bias_read_readvariableop,savev2_conv2d_161_kernel_read_readvariableop*savev2_conv2d_161_bias_read_readvariableop,savev2_conv2d_162_kernel_read_readvariableop*savev2_conv2d_162_bias_read_readvariableop,savev2_conv2d_163_kernel_read_readvariableop*savev2_conv2d_163_bias_read_readvariableop,savev2_conv2d_164_kernel_read_readvariableop*savev2_conv2d_164_bias_read_readvariableop,savev2_conv2d_165_kernel_read_readvariableop*savev2_conv2d_165_bias_read_readvariableop,savev2_conv2d_166_kernel_read_readvariableop*savev2_conv2d_166_bias_read_readvariableop,savev2_conv2d_167_kernel_read_readvariableop*savev2_conv2d_167_bias_read_readvariableop,savev2_conv2d_168_kernel_read_readvariableop*savev2_conv2d_168_bias_read_readvariableop,savev2_conv2d_169_kernel_read_readvariableop*savev2_conv2d_169_bias_read_readvariableop,savev2_conv2d_170_kernel_read_readvariableop*savev2_conv2d_170_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop3savev2_adam_conv2d_152_kernel_m_read_readvariableop1savev2_adam_conv2d_152_bias_m_read_readvariableop3savev2_adam_conv2d_153_kernel_m_read_readvariableop1savev2_adam_conv2d_153_bias_m_read_readvariableop3savev2_adam_conv2d_154_kernel_m_read_readvariableop1savev2_adam_conv2d_154_bias_m_read_readvariableop3savev2_adam_conv2d_155_kernel_m_read_readvariableop1savev2_adam_conv2d_155_bias_m_read_readvariableop3savev2_adam_conv2d_156_kernel_m_read_readvariableop1savev2_adam_conv2d_156_bias_m_read_readvariableop3savev2_adam_conv2d_157_kernel_m_read_readvariableop1savev2_adam_conv2d_157_bias_m_read_readvariableop3savev2_adam_conv2d_158_kernel_m_read_readvariableop1savev2_adam_conv2d_158_bias_m_read_readvariableop3savev2_adam_conv2d_159_kernel_m_read_readvariableop1savev2_adam_conv2d_159_bias_m_read_readvariableop3savev2_adam_conv2d_160_kernel_m_read_readvariableop1savev2_adam_conv2d_160_bias_m_read_readvariableop3savev2_adam_conv2d_161_kernel_m_read_readvariableop1savev2_adam_conv2d_161_bias_m_read_readvariableop3savev2_adam_conv2d_162_kernel_m_read_readvariableop1savev2_adam_conv2d_162_bias_m_read_readvariableop3savev2_adam_conv2d_163_kernel_m_read_readvariableop1savev2_adam_conv2d_163_bias_m_read_readvariableop3savev2_adam_conv2d_164_kernel_m_read_readvariableop1savev2_adam_conv2d_164_bias_m_read_readvariableop3savev2_adam_conv2d_165_kernel_m_read_readvariableop1savev2_adam_conv2d_165_bias_m_read_readvariableop3savev2_adam_conv2d_166_kernel_m_read_readvariableop1savev2_adam_conv2d_166_bias_m_read_readvariableop3savev2_adam_conv2d_167_kernel_m_read_readvariableop1savev2_adam_conv2d_167_bias_m_read_readvariableop3savev2_adam_conv2d_168_kernel_m_read_readvariableop1savev2_adam_conv2d_168_bias_m_read_readvariableop3savev2_adam_conv2d_169_kernel_m_read_readvariableop1savev2_adam_conv2d_169_bias_m_read_readvariableop3savev2_adam_conv2d_170_kernel_m_read_readvariableop1savev2_adam_conv2d_170_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop3savev2_adam_conv2d_152_kernel_v_read_readvariableop1savev2_adam_conv2d_152_bias_v_read_readvariableop3savev2_adam_conv2d_153_kernel_v_read_readvariableop1savev2_adam_conv2d_153_bias_v_read_readvariableop3savev2_adam_conv2d_154_kernel_v_read_readvariableop1savev2_adam_conv2d_154_bias_v_read_readvariableop3savev2_adam_conv2d_155_kernel_v_read_readvariableop1savev2_adam_conv2d_155_bias_v_read_readvariableop3savev2_adam_conv2d_156_kernel_v_read_readvariableop1savev2_adam_conv2d_156_bias_v_read_readvariableop3savev2_adam_conv2d_157_kernel_v_read_readvariableop1savev2_adam_conv2d_157_bias_v_read_readvariableop3savev2_adam_conv2d_158_kernel_v_read_readvariableop1savev2_adam_conv2d_158_bias_v_read_readvariableop3savev2_adam_conv2d_159_kernel_v_read_readvariableop1savev2_adam_conv2d_159_bias_v_read_readvariableop3savev2_adam_conv2d_160_kernel_v_read_readvariableop1savev2_adam_conv2d_160_bias_v_read_readvariableop3savev2_adam_conv2d_161_kernel_v_read_readvariableop1savev2_adam_conv2d_161_bias_v_read_readvariableop3savev2_adam_conv2d_162_kernel_v_read_readvariableop1savev2_adam_conv2d_162_bias_v_read_readvariableop3savev2_adam_conv2d_163_kernel_v_read_readvariableop1savev2_adam_conv2d_163_bias_v_read_readvariableop3savev2_adam_conv2d_164_kernel_v_read_readvariableop1savev2_adam_conv2d_164_bias_v_read_readvariableop3savev2_adam_conv2d_165_kernel_v_read_readvariableop1savev2_adam_conv2d_165_bias_v_read_readvariableop3savev2_adam_conv2d_166_kernel_v_read_readvariableop1savev2_adam_conv2d_166_bias_v_read_readvariableop3savev2_adam_conv2d_167_kernel_v_read_readvariableop1savev2_adam_conv2d_167_bias_v_read_readvariableop3savev2_adam_conv2d_168_kernel_v_read_readvariableop1savev2_adam_conv2d_168_bias_v_read_readvariableop3savev2_adam_conv2d_169_kernel_v_read_readvariableop1savev2_adam_conv2d_169_bias_v_read_readvariableop3savev2_adam_conv2d_170_kernel_v_read_readvariableop1savev2_adam_conv2d_170_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Щ
dtypesО
Л2И	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*═
_input_shapes╗
╕: ::::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:└@:@:@@:@:` : :  : :0:::::::::: : : : : : : : : : : : : ::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:└@:@:@@:@:` : :  : :0:::::::::::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:└@:@:@@:@:` : :  : :0:::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:-)
'
_output_shapes
:└@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:` : 

_output_shapes
: :,(
&
_output_shapes
:  :  

_output_shapes
: :,!(
&
_output_shapes
:0: "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
:: &

_output_shapes
::,'(
&
_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
:: *

_output_shapes
::+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: : 8

_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
:  : E

_output_shapes
: :,F(
&
_output_shapes
: @: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@:-J)
'
_output_shapes
:@А:!K

_output_shapes	
:А:.L*
(
_output_shapes
:АА:!M

_output_shapes	
:А:-N)
'
_output_shapes
:└@: O

_output_shapes
:@:,P(
&
_output_shapes
:@@: Q

_output_shapes
:@:,R(
&
_output_shapes
:` : S

_output_shapes
: :,T(
&
_output_shapes
:  : U

_output_shapes
: :,V(
&
_output_shapes
:0: W

_output_shapes
::,X(
&
_output_shapes
:: Y

_output_shapes
::,Z(
&
_output_shapes
:: [

_output_shapes
::,\(
&
_output_shapes
:: ]

_output_shapes
::,^(
&
_output_shapes
:: _

_output_shapes
:: `

_output_shapes
:: a

_output_shapes
::,b(
&
_output_shapes
:: c

_output_shapes
::,d(
&
_output_shapes
:: e

_output_shapes
::,f(
&
_output_shapes
:: g

_output_shapes
::,h(
&
_output_shapes
:: i

_output_shapes
::,j(
&
_output_shapes
: : k

_output_shapes
: :,l(
&
_output_shapes
:  : m

_output_shapes
: :,n(
&
_output_shapes
: @: o

_output_shapes
:@:,p(
&
_output_shapes
:@@: q

_output_shapes
:@:-r)
'
_output_shapes
:@А:!s

_output_shapes	
:А:.t*
(
_output_shapes
:АА:!u

_output_shapes	
:А:-v)
'
_output_shapes
:└@: w

_output_shapes
:@:,x(
&
_output_shapes
:@@: y

_output_shapes
:@:,z(
&
_output_shapes
:` : {

_output_shapes
: :,|(
&
_output_shapes
:  : }

_output_shapes
: :,~(
&
_output_shapes
:0: 

_output_shapes
::-А(
&
_output_shapes
::!Б

_output_shapes
::-В(
&
_output_shapes
::!Г

_output_shapes
::-Д(
&
_output_shapes
::!Е

_output_shapes
::-Ж(
&
_output_shapes
::!З

_output_shapes
::И

_output_shapes
: 
█

▐
E__inference_conv2d_164_layer_call_and_return_conditional_losses_36263

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:` *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└`
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_165_layer_call_and_return_conditional_losses_34409

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         └└ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         └└ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         └└ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         └└ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         └└ 
 
_user_specified_nameinputs
№
Z
.__inference_concatenate_32_layer_call_fn_36199
inputs_0
inputs_1
identityр
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ``└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_342912
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ``└2

Identity"
identityIdentity:output:0*\
_input_shapesK
I:,                           А:         ``@:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         ``@
"
_user_specified_name
inputs/1
а
и
5__inference_batch_normalization_8_layer_call_fn_35922

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_337412
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
░
L
0__inference_up_sampling2d_32_layer_call_fn_33819

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_338132
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╥

▐
E__inference_conv2d_162_layer_call_and_return_conditional_losses_36210

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:└@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ``@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ``@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ``@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ``└::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ``└
 
_user_specified_nameinputs
▐

▐
E__inference_conv2d_170_layer_call_and_return_conditional_losses_34578

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         АА2	
SigmoidЪ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_33710

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╦
serving_default╖
I
	RGB_Input<
serving_default_RGB_Input:0         ААN
zero_padding2d_8:
StatefulPartitionedCall:0         ААtensorflow/serving/predict:Нё
у╞
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer-21
layer-22
layer_with_weights-13
layer-23
layer_with_weights-14
layer-24
layer-25
layer-26
layer_with_weights-15
layer-27
layer_with_weights-16
layer-28
layer-29
layer-30
 layer_with_weights-17
 layer-31
!layer_with_weights-18
!layer-32
"layer_with_weights-19
"layer-33
#layer-34
$layer-35
%	optimizer
&trainable_variables
'regularization_losses
(	variables
)	keras_api
*
signatures
+В&call_and_return_all_conditional_losses
Г__call__
Д_default_save_signature"Ф╜
_tf_keras_networkў╝{"class_name": "Functional", "name": "model_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 768, 768, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}, "name": "RGB_Input", "inbound_nodes": []}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}, "name": "gaussian_noise_8", "inbound_nodes": [[["RGB_Input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["gaussian_noise_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_152", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_153", "inbound_nodes": [[["conv2d_152", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_154", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_155", "inbound_nodes": [[["conv2d_154", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_33", "inbound_nodes": [[["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_156", "inbound_nodes": [[["max_pooling2d_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_157", "inbound_nodes": [[["conv2d_156", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_34", "inbound_nodes": [[["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_158", "inbound_nodes": [[["max_pooling2d_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_159", "inbound_nodes": [[["conv2d_158", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_35", "inbound_nodes": [[["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_160", "inbound_nodes": [[["max_pooling2d_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_161", "inbound_nodes": [[["conv2d_160", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_32", "inbound_nodes": [[["conv2d_161", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_32", "inbound_nodes": [[["up_sampling2d_32", 0, 0, {}], ["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_162", "inbound_nodes": [[["concatenate_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_163", "inbound_nodes": [[["conv2d_162", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_33", "inbound_nodes": [[["conv2d_163", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_33", "inbound_nodes": [[["up_sampling2d_33", 0, 0, {}], ["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_164", "inbound_nodes": [[["concatenate_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_165", "inbound_nodes": [[["conv2d_164", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_34", "inbound_nodes": [[["conv2d_165", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_34", "inbound_nodes": [[["up_sampling2d_34", 0, 0, {}], ["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_166", "inbound_nodes": [[["concatenate_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_167", "inbound_nodes": [[["conv2d_166", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_35", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_35", "inbound_nodes": [[["conv2d_167", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_35", "inbound_nodes": [[["up_sampling2d_35", 0, 0, {}], ["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_168", "inbound_nodes": [[["concatenate_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_169", "inbound_nodes": [[["conv2d_168", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_170", "inbound_nodes": [[["conv2d_169", 0, 0, {}]]]}, {"class_name": "Cropping2D", "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "name": "cropping2d_8", "inbound_nodes": [[["conv2d_170", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "name": "zero_padding2d_8", "inbound_nodes": [[["cropping2d_8", 0, 0, {}]]]}], "input_layers": [["RGB_Input", 0, 0]], "output_layers": [["zero_padding2d_8", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 768, 768, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 768, 768, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}, "name": "RGB_Input", "inbound_nodes": []}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}, "name": "gaussian_noise_8", "inbound_nodes": [[["RGB_Input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["gaussian_noise_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_152", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_153", "inbound_nodes": [[["conv2d_152", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_154", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_155", "inbound_nodes": [[["conv2d_154", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_33", "inbound_nodes": [[["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_156", "inbound_nodes": [[["max_pooling2d_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_157", "inbound_nodes": [[["conv2d_156", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_34", "inbound_nodes": [[["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_158", "inbound_nodes": [[["max_pooling2d_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_159", "inbound_nodes": [[["conv2d_158", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_35", "inbound_nodes": [[["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_160", "inbound_nodes": [[["max_pooling2d_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_161", "inbound_nodes": [[["conv2d_160", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_32", "inbound_nodes": [[["conv2d_161", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_32", "inbound_nodes": [[["up_sampling2d_32", 0, 0, {}], ["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_162", "inbound_nodes": [[["concatenate_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_163", "inbound_nodes": [[["conv2d_162", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_33", "inbound_nodes": [[["conv2d_163", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_33", "inbound_nodes": [[["up_sampling2d_33", 0, 0, {}], ["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_164", "inbound_nodes": [[["concatenate_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_165", "inbound_nodes": [[["conv2d_164", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_34", "inbound_nodes": [[["conv2d_165", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_34", "inbound_nodes": [[["up_sampling2d_34", 0, 0, {}], ["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_166", "inbound_nodes": [[["concatenate_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_167", "inbound_nodes": [[["conv2d_166", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_35", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_35", "inbound_nodes": [[["conv2d_167", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_35", "inbound_nodes": [[["up_sampling2d_35", 0, 0, {}], ["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_168", "inbound_nodes": [[["concatenate_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_169", "inbound_nodes": [[["conv2d_168", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_170", "inbound_nodes": [[["conv2d_169", 0, 0, {}]]]}, {"class_name": "Cropping2D", "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "name": "cropping2d_8", "inbound_nodes": [[["conv2d_170", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "name": "zero_padding2d_8", "inbound_nodes": [[["cropping2d_8", 0, 0, {}]]]}], "input_layers": [["RGB_Input", 0, 0]], "output_layers": [["zero_padding2d_8", 0, 0]]}}, "training_config": {"loss": "dice_p_bce", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "dice_coef", "dtype": "float32", "fn": "dice_coef"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "true_positive_rate", "dtype": "float32", "fn": "true_positive_rate"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 9.999999974752427e-07, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Б"■
_tf_keras_input_layer▐{"class_name": "InputLayer", "name": "RGB_Input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 768, 768, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 768, 768, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}}
┌
+trainable_variables
,regularization_losses
-	variables
.	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"╔
_tf_keras_layerп{"class_name": "GaussianNoise", "name": "gaussian_noise_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}}
╝	
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4trainable_variables
5regularization_losses
6	variables
7	keras_api
+З&call_and_return_all_conditional_losses
И__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 3]}}
ў	

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_152", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 3]}}
ў	

>kernel
?bias
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_153", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 8]}}
Г
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
°	

Hkernel
Ibias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
+П&call_and_return_all_conditional_losses
Р__call__"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_154", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 8]}}
·	

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
+С&call_and_return_all_conditional_losses
Т__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_155", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 16]}}
Г
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
+У&call_and_return_all_conditional_losses
Ф__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
·	

Xkernel
Ybias
Ztrainable_variables
[regularization_losses
\	variables
]	keras_api
+Х&call_and_return_all_conditional_losses
Ц__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_156", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 16]}}
·	

^kernel
_bias
`trainable_variables
aregularization_losses
b	variables
c	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_157", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 32]}}
Г
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
°	

hkernel
ibias
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_158", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 32]}}
°	

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_159", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 64]}}
Г
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
+Я&call_and_return_all_conditional_losses
а__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
∙	

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
+б&call_and_return_all_conditional_losses
в__call__"╥
_tf_keras_layer╕{"class_name": "Conv2D", "name": "conv2d_160", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
 	

~kernel
bias
Аtrainable_variables
Бregularization_losses
В	variables
Г	keras_api
+г&call_and_return_all_conditional_losses
д__call__"╘
_tf_keras_layer║{"class_name": "Conv2D", "name": "conv2d_161", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 128]}}
╤
Дtrainable_variables
Еregularization_losses
Ж	variables
З	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"╝
_tf_keras_layerв{"class_name": "UpSampling2D", "name": "up_sampling2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ц
Иtrainable_variables
Йregularization_losses
К	variables
Л	keras_api
+з&call_and_return_all_conditional_losses
и__call__"╤
_tf_keras_layer╖{"class_name": "Concatenate", "name": "concatenate_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 96, 96, 128]}, {"class_name": "TensorShape", "items": [null, 96, 96, 64]}]}
А

Мkernel
	Нbias
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api
+й&call_and_return_all_conditional_losses
к__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_162", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 192}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 192]}}
■	
Тkernel
	Уbias
Фtrainable_variables
Хregularization_losses
Ц	variables
Ч	keras_api
+л&call_and_return_all_conditional_losses
м__call__"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_163", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 64]}}
╤
Шtrainable_variables
Щregularization_losses
Ъ	variables
Ы	keras_api
+н&call_and_return_all_conditional_losses
о__call__"╝
_tf_keras_layerв{"class_name": "UpSampling2D", "name": "up_sampling2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
щ
Ьtrainable_variables
Эregularization_losses
Ю	variables
Я	keras_api
+п&call_and_return_all_conditional_losses
░__call__"╘
_tf_keras_layer║{"class_name": "Concatenate", "name": "concatenate_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 192, 192, 64]}, {"class_name": "TensorShape", "items": [null, 192, 192, 32]}]}
А

аkernel
	бbias
вtrainable_variables
гregularization_losses
д	variables
е	keras_api
+▒&call_and_return_all_conditional_losses
▓__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_164", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 96]}}
А

жkernel
	зbias
иtrainable_variables
йregularization_losses
к	variables
л	keras_api
+│&call_and_return_all_conditional_losses
┤__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_165", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 32]}}
╤
мtrainable_variables
нregularization_losses
о	variables
п	keras_api
+╡&call_and_return_all_conditional_losses
╢__call__"╝
_tf_keras_layerв{"class_name": "UpSampling2D", "name": "up_sampling2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
щ
░trainable_variables
▒regularization_losses
▓	variables
│	keras_api
+╖&call_and_return_all_conditional_losses
╕__call__"╘
_tf_keras_layer║{"class_name": "Concatenate", "name": "concatenate_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 384, 384, 32]}, {"class_name": "TensorShape", "items": [null, 384, 384, 16]}]}
А

┤kernel
	╡bias
╢trainable_variables
╖regularization_losses
╕	variables
╣	keras_api
+╣&call_and_return_all_conditional_losses
║__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_166", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 48]}}
А

║kernel
	╗bias
╝trainable_variables
╜regularization_losses
╛	variables
┐	keras_api
+╗&call_and_return_all_conditional_losses
╝__call__"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_167", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 16]}}
╤
└trainable_variables
┴regularization_losses
┬	variables
├	keras_api
+╜&call_and_return_all_conditional_losses
╛__call__"╝
_tf_keras_layerв{"class_name": "UpSampling2D", "name": "up_sampling2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_35", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ч
─trainable_variables
┼regularization_losses
╞	variables
╟	keras_api
+┐&call_and_return_all_conditional_losses
└__call__"╥
_tf_keras_layer╕{"class_name": "Concatenate", "name": "concatenate_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 768, 768, 16]}, {"class_name": "TensorShape", "items": [null, 768, 768, 8]}]}
 	
╚kernel
	╔bias
╩trainable_variables
╦regularization_losses
╠	variables
═	keras_api
+┴&call_and_return_all_conditional_losses
┬__call__"╥
_tf_keras_layer╕{"class_name": "Conv2D", "name": "conv2d_168", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 24]}}
¤	
╬kernel
	╧bias
╨trainable_variables
╤regularization_losses
╥	variables
╙	keras_api
+├&call_and_return_all_conditional_losses
─__call__"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_169", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 8]}}
Б

╘kernel
	╒bias
╓trainable_variables
╫regularization_losses
╪	variables
┘	keras_api
+┼&call_and_return_all_conditional_losses
╞__call__"╘
_tf_keras_layer║{"class_name": "Conv2D", "name": "conv2d_170", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768, 768, 8]}}
Й
┌trainable_variables
█regularization_losses
▄	variables
▌	keras_api
+╟&call_and_return_all_conditional_losses
╚__call__"Ї
_tf_keras_layer┌{"class_name": "Cropping2D", "name": "cropping2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
У
▐trainable_variables
▀regularization_losses
р	variables
с	keras_api
+╔&call_and_return_all_conditional_losses
╩__call__"■
_tf_keras_layerф{"class_name": "ZeroPadding2D", "name": "zero_padding2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [16, 16]}, {"class_name": "__tuple__", "items": [16, 16]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ь
	тiter
уbeta_1
фbeta_2

хdecay
цlearning_rate0m▓1m│8m┤9m╡>m╢?m╖Hm╕Im╣Nm║Om╗Xm╝Ym╜^m╛_m┐hm└im┴nm┬om├xm─ym┼~m╞m╟	Мm╚	Нm╔	Тm╩	Уm╦	аm╠	бm═	жm╬	зm╧	┤m╨	╡m╤	║m╥	╗m╙	╚m╘	╔m╒	╬m╓	╧m╫	╘m╪	╒m┘0v┌1v█8v▄9v▌>v▐?v▀HvрIvсNvтOvуXvфYvх^vц_vчhvшivщnvъovыxvьyvэ~vюvя	МvЁ	Нvё	ТvЄ	Уvє	аvЇ	бvї	жvЎ	зvў	┤v°	╡v∙	║v·	╗v√	╚v№	╔v¤	╬v■	╧v 	╘vА	╒vБ"
	optimizer
ш
00
11
82
93
>4
?5
H6
I7
N8
O9
X10
Y11
^12
_13
h14
i15
n16
o17
x18
y19
~20
21
М22
Н23
Т24
У25
а26
б27
ж28
з29
┤30
╡31
║32
╗33
╚34
╔35
╬36
╧37
╘38
╒39"
trackable_list_wrapper
 "
trackable_list_wrapper
°
00
11
22
33
84
95
>6
?7
H8
I9
N10
O11
X12
Y13
^14
_15
h16
i17
n18
o19
x20
y21
~22
23
М24
Н25
Т26
У27
а28
б29
ж30
з31
┤32
╡33
║34
╗35
╚36
╔37
╬38
╧39
╘40
╒41"
trackable_list_wrapper
╙
чnon_trainable_variables
&trainable_variables
шmetrics
щlayer_metrics
ъlayers
'regularization_losses
(	variables
 ыlayer_regularization_losses
Г__call__
Д_default_save_signature
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
-
╦serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
ьnon_trainable_variables
+trainable_variables
эmetrics
юlayer_metrics
яlayers
,regularization_losses
-	variables
 Ёlayer_regularization_losses
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_8/gamma
(:&2batch_normalization_8/beta
1:/ (2!batch_normalization_8/moving_mean
5:3 (2%batch_normalization_8/moving_variance
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
╡
ёnon_trainable_variables
4trainable_variables
Єmetrics
єlayer_metrics
Їlayers
5regularization_losses
6	variables
 їlayer_regularization_losses
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_152/kernel
:2conv2d_152/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
╡
Ўnon_trainable_variables
:trainable_variables
ўmetrics
°layer_metrics
∙layers
;regularization_losses
<	variables
 ·layer_regularization_losses
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_153/kernel
:2conv2d_153/bias
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
╡
√non_trainable_variables
@trainable_variables
№metrics
¤layer_metrics
■layers
Aregularization_losses
B	variables
  layer_regularization_losses
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Аnon_trainable_variables
Dtrainable_variables
Бmetrics
Вlayer_metrics
Гlayers
Eregularization_losses
F	variables
 Дlayer_regularization_losses
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_154/kernel
:2conv2d_154/bias
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
╡
Еnon_trainable_variables
Jtrainable_variables
Жmetrics
Зlayer_metrics
Иlayers
Kregularization_losses
L	variables
 Йlayer_regularization_losses
Р__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_155/kernel
:2conv2d_155/bias
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
╡
Кnon_trainable_variables
Ptrainable_variables
Лmetrics
Мlayer_metrics
Нlayers
Qregularization_losses
R	variables
 Оlayer_regularization_losses
Т__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Пnon_trainable_variables
Ttrainable_variables
Рmetrics
Сlayer_metrics
Тlayers
Uregularization_losses
V	variables
 Уlayer_regularization_losses
Ф__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_156/kernel
: 2conv2d_156/bias
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
╡
Фnon_trainable_variables
Ztrainable_variables
Хmetrics
Цlayer_metrics
Чlayers
[regularization_losses
\	variables
 Шlayer_regularization_losses
Ц__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_157/kernel
: 2conv2d_157/bias
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
╡
Щnon_trainable_variables
`trainable_variables
Ъmetrics
Ыlayer_metrics
Ьlayers
aregularization_losses
b	variables
 Эlayer_regularization_losses
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Юnon_trainable_variables
dtrainable_variables
Яmetrics
аlayer_metrics
бlayers
eregularization_losses
f	variables
 вlayer_regularization_losses
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_158/kernel
:@2conv2d_158/bias
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
╡
гnon_trainable_variables
jtrainable_variables
дmetrics
еlayer_metrics
жlayers
kregularization_losses
l	variables
 зlayer_regularization_losses
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_159/kernel
:@2conv2d_159/bias
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
╡
иnon_trainable_variables
ptrainable_variables
йmetrics
кlayer_metrics
лlayers
qregularization_losses
r	variables
 мlayer_regularization_losses
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
нnon_trainable_variables
ttrainable_variables
оmetrics
пlayer_metrics
░layers
uregularization_losses
v	variables
 ▒layer_regularization_losses
а__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
,:*@А2conv2d_160/kernel
:А2conv2d_160/bias
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
╡
▓non_trainable_variables
ztrainable_variables
│metrics
┤layer_metrics
╡layers
{regularization_losses
|	variables
 ╢layer_regularization_losses
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
-:+АА2conv2d_161/kernel
:А2conv2d_161/bias
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
╕
╖non_trainable_variables
Аtrainable_variables
╕metrics
╣layer_metrics
║layers
Бregularization_losses
В	variables
 ╗layer_regularization_losses
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╝non_trainable_variables
Дtrainable_variables
╜metrics
╛layer_metrics
┐layers
Еregularization_losses
Ж	variables
 └layer_regularization_losses
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
Иtrainable_variables
┬metrics
├layer_metrics
─layers
Йregularization_losses
К	variables
 ┼layer_regularization_losses
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
,:*└@2conv2d_162/kernel
:@2conv2d_162/bias
0
М0
Н1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
╕
╞non_trainable_variables
Оtrainable_variables
╟metrics
╚layer_metrics
╔layers
Пregularization_losses
Р	variables
 ╩layer_regularization_losses
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_163/kernel
:@2conv2d_163/bias
0
Т0
У1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
╕
╦non_trainable_variables
Фtrainable_variables
╠metrics
═layer_metrics
╬layers
Хregularization_losses
Ц	variables
 ╧layer_regularization_losses
м__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╨non_trainable_variables
Шtrainable_variables
╤metrics
╥layer_metrics
╙layers
Щregularization_losses
Ъ	variables
 ╘layer_regularization_losses
о__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╒non_trainable_variables
Ьtrainable_variables
╓metrics
╫layer_metrics
╪layers
Эregularization_losses
Ю	variables
 ┘layer_regularization_losses
░__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
+:)` 2conv2d_164/kernel
: 2conv2d_164/bias
0
а0
б1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
а0
б1"
trackable_list_wrapper
╕
┌non_trainable_variables
вtrainable_variables
█metrics
▄layer_metrics
▌layers
гregularization_losses
д	variables
 ▐layer_regularization_losses
▓__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_165/kernel
: 2conv2d_165/bias
0
ж0
з1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
╕
▀non_trainable_variables
иtrainable_variables
рmetrics
сlayer_metrics
тlayers
йregularization_losses
к	variables
 уlayer_regularization_losses
┤__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
мtrainable_variables
хmetrics
цlayer_metrics
чlayers
нregularization_losses
о	variables
 шlayer_regularization_losses
╢__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
щnon_trainable_variables
░trainable_variables
ъmetrics
ыlayer_metrics
ьlayers
▒regularization_losses
▓	variables
 эlayer_regularization_losses
╕__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
+:)02conv2d_166/kernel
:2conv2d_166/bias
0
┤0
╡1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
┤0
╡1"
trackable_list_wrapper
╕
юnon_trainable_variables
╢trainable_variables
яmetrics
Ёlayer_metrics
ёlayers
╖regularization_losses
╕	variables
 Єlayer_regularization_losses
║__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_167/kernel
:2conv2d_167/bias
0
║0
╗1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
║0
╗1"
trackable_list_wrapper
╕
єnon_trainable_variables
╝trainable_variables
Їmetrics
їlayer_metrics
Ўlayers
╜regularization_losses
╛	variables
 ўlayer_regularization_losses
╝__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
°non_trainable_variables
└trainable_variables
∙metrics
·layer_metrics
√layers
┴regularization_losses
┬	variables
 №layer_regularization_losses
╛__call__
+╜&call_and_return_all_conditional_losses
'╜"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
¤non_trainable_variables
─trainable_variables
■metrics
 layer_metrics
Аlayers
┼regularization_losses
╞	variables
 Бlayer_regularization_losses
└__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_168/kernel
:2conv2d_168/bias
0
╚0
╔1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
╚0
╔1"
trackable_list_wrapper
╕
Вnon_trainable_variables
╩trainable_variables
Гmetrics
Дlayer_metrics
Еlayers
╦regularization_losses
╠	variables
 Жlayer_regularization_losses
┬__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_169/kernel
:2conv2d_169/bias
0
╬0
╧1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
╬0
╧1"
trackable_list_wrapper
╕
Зnon_trainable_variables
╨trainable_variables
Иmetrics
Йlayer_metrics
Кlayers
╤regularization_losses
╥	variables
 Лlayer_regularization_losses
─__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_170/kernel
:2conv2d_170/bias
0
╘0
╒1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
╘0
╒1"
trackable_list_wrapper
╕
Мnon_trainable_variables
╓trainable_variables
Нmetrics
Оlayer_metrics
Пlayers
╫regularization_losses
╪	variables
 Рlayer_regularization_losses
╞__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
┌trainable_variables
Тmetrics
Уlayer_metrics
Фlayers
█regularization_losses
▄	variables
 Хlayer_regularization_losses
╚__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
▐trainable_variables
Чmetrics
Шlayer_metrics
Щlayers
▀regularization_losses
р	variables
 Ъlayer_regularization_losses
╩__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
20
31"
trackable_list_wrapper
@
Ы0
Ь1
Э2
Ю3"
trackable_list_wrapper
 "
trackable_dict_wrapper
╢
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐

Яtotal

аcount
б	variables
в	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
√

гtotal

дcount
е
_fn_kwargs
ж	variables
з	keras_api"п
_tf_keras_metricФ{"class_name": "MeanMetricWrapper", "name": "dice_coef", "dtype": "float32", "config": {"name": "dice_coef", "dtype": "float32", "fn": "dice_coef"}}
Н

иtotal

йcount
к
_fn_kwargs
л	variables
м	keras_api"┴
_tf_keras_metricж{"class_name": "MeanMetricWrapper", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
Ц

нtotal

оcount
п
_fn_kwargs
░	variables
▒	keras_api"╩
_tf_keras_metricп{"class_name": "MeanMetricWrapper", "name": "true_positive_rate", "dtype": "float32", "config": {"name": "true_positive_rate", "dtype": "float32", "fn": "true_positive_rate"}}
:  (2total
:  (2count
0
Я0
а1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
г0
д1"
trackable_list_wrapper
.
ж	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
и0
й1"
trackable_list_wrapper
.
л	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
н0
о1"
trackable_list_wrapper
.
░	variables"
_generic_user_object
.:,2"Adam/batch_normalization_8/gamma/m
-:+2!Adam/batch_normalization_8/beta/m
0:.2Adam/conv2d_152/kernel/m
": 2Adam/conv2d_152/bias/m
0:.2Adam/conv2d_153/kernel/m
": 2Adam/conv2d_153/bias/m
0:.2Adam/conv2d_154/kernel/m
": 2Adam/conv2d_154/bias/m
0:.2Adam/conv2d_155/kernel/m
": 2Adam/conv2d_155/bias/m
0:. 2Adam/conv2d_156/kernel/m
":  2Adam/conv2d_156/bias/m
0:.  2Adam/conv2d_157/kernel/m
":  2Adam/conv2d_157/bias/m
0:. @2Adam/conv2d_158/kernel/m
": @2Adam/conv2d_158/bias/m
0:.@@2Adam/conv2d_159/kernel/m
": @2Adam/conv2d_159/bias/m
1:/@А2Adam/conv2d_160/kernel/m
#:!А2Adam/conv2d_160/bias/m
2:0АА2Adam/conv2d_161/kernel/m
#:!А2Adam/conv2d_161/bias/m
1:/└@2Adam/conv2d_162/kernel/m
": @2Adam/conv2d_162/bias/m
0:.@@2Adam/conv2d_163/kernel/m
": @2Adam/conv2d_163/bias/m
0:.` 2Adam/conv2d_164/kernel/m
":  2Adam/conv2d_164/bias/m
0:.  2Adam/conv2d_165/kernel/m
":  2Adam/conv2d_165/bias/m
0:.02Adam/conv2d_166/kernel/m
": 2Adam/conv2d_166/bias/m
0:.2Adam/conv2d_167/kernel/m
": 2Adam/conv2d_167/bias/m
0:.2Adam/conv2d_168/kernel/m
": 2Adam/conv2d_168/bias/m
0:.2Adam/conv2d_169/kernel/m
": 2Adam/conv2d_169/bias/m
0:.2Adam/conv2d_170/kernel/m
": 2Adam/conv2d_170/bias/m
.:,2"Adam/batch_normalization_8/gamma/v
-:+2!Adam/batch_normalization_8/beta/v
0:.2Adam/conv2d_152/kernel/v
": 2Adam/conv2d_152/bias/v
0:.2Adam/conv2d_153/kernel/v
": 2Adam/conv2d_153/bias/v
0:.2Adam/conv2d_154/kernel/v
": 2Adam/conv2d_154/bias/v
0:.2Adam/conv2d_155/kernel/v
": 2Adam/conv2d_155/bias/v
0:. 2Adam/conv2d_156/kernel/v
":  2Adam/conv2d_156/bias/v
0:.  2Adam/conv2d_157/kernel/v
":  2Adam/conv2d_157/bias/v
0:. @2Adam/conv2d_158/kernel/v
": @2Adam/conv2d_158/bias/v
0:.@@2Adam/conv2d_159/kernel/v
": @2Adam/conv2d_159/bias/v
1:/@А2Adam/conv2d_160/kernel/v
#:!А2Adam/conv2d_160/bias/v
2:0АА2Adam/conv2d_161/kernel/v
#:!А2Adam/conv2d_161/bias/v
1:/└@2Adam/conv2d_162/kernel/v
": @2Adam/conv2d_162/bias/v
0:.@@2Adam/conv2d_163/kernel/v
": @2Adam/conv2d_163/bias/v
0:.` 2Adam/conv2d_164/kernel/v
":  2Adam/conv2d_164/bias/v
0:.  2Adam/conv2d_165/kernel/v
":  2Adam/conv2d_165/bias/v
0:.02Adam/conv2d_166/kernel/v
": 2Adam/conv2d_166/bias/v
0:.2Adam/conv2d_167/kernel/v
": 2Adam/conv2d_167/bias/v
0:.2Adam/conv2d_168/kernel/v
": 2Adam/conv2d_168/bias/v
0:.2Adam/conv2d_169/kernel/v
": 2Adam/conv2d_169/bias/v
0:.2Adam/conv2d_170/kernel/v
": 2Adam/conv2d_170/bias/v
╓2╙
B__inference_model_8_layer_call_and_return_conditional_losses_35454
B__inference_model_8_layer_call_and_return_conditional_losses_34597
B__inference_model_8_layer_call_and_return_conditional_losses_35655
B__inference_model_8_layer_call_and_return_conditional_losses_34720└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
'__inference_model_8_layer_call_fn_35744
'__inference_model_8_layer_call_fn_34933
'__inference_model_8_layer_call_fn_35145
'__inference_model_8_layer_call_fn_35833└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
 __inference__wrapped_model_33648┬
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *2в/
-К*
	RGB_Input         АА
╘2╤
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35844
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35848┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
0__inference_gaussian_noise_8_layer_call_fn_35853
0__inference_gaussian_noise_8_layer_call_fn_35858┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35878
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35960
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35896
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35942┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_8_layer_call_fn_35909
5__inference_batch_normalization_8_layer_call_fn_35986
5__inference_batch_normalization_8_layer_call_fn_35973
5__inference_batch_normalization_8_layer_call_fn_35922┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_152_layer_call_and_return_conditional_losses_35997в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_152_layer_call_fn_36006в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_153_layer_call_and_return_conditional_losses_36017в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_153_layer_call_fn_36026в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_33758р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_32_layer_call_fn_33764р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
я2ь
E__inference_conv2d_154_layer_call_and_return_conditional_losses_36037в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_154_layer_call_fn_36046в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_155_layer_call_and_return_conditional_losses_36057в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_155_layer_call_fn_36066в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_33770р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_33_layer_call_fn_33776р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
я2ь
E__inference_conv2d_156_layer_call_and_return_conditional_losses_36077в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_156_layer_call_fn_36086в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_157_layer_call_and_return_conditional_losses_36097в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_157_layer_call_fn_36106в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_33782р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_34_layer_call_fn_33788р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
я2ь
E__inference_conv2d_158_layer_call_and_return_conditional_losses_36117в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_158_layer_call_fn_36126в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_159_layer_call_and_return_conditional_losses_36137в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_159_layer_call_fn_36146в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_33794р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_35_layer_call_fn_33800р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
я2ь
E__inference_conv2d_160_layer_call_and_return_conditional_losses_36157в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_160_layer_call_fn_36166в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_161_layer_call_and_return_conditional_losses_36177в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_161_layer_call_fn_36186в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_33813р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_up_sampling2d_32_layer_call_fn_33819р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
є2Ё
I__inference_concatenate_32_layer_call_and_return_conditional_losses_36193в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_concatenate_32_layer_call_fn_36199в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_162_layer_call_and_return_conditional_losses_36210в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_162_layer_call_fn_36219в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_163_layer_call_and_return_conditional_losses_36230в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_163_layer_call_fn_36239в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_33832р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_up_sampling2d_33_layer_call_fn_33838р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
є2Ё
I__inference_concatenate_33_layer_call_and_return_conditional_losses_36246в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_concatenate_33_layer_call_fn_36252в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_164_layer_call_and_return_conditional_losses_36263в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_164_layer_call_fn_36272в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_165_layer_call_and_return_conditional_losses_36283в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_165_layer_call_fn_36292в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_33851р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_up_sampling2d_34_layer_call_fn_33857р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
є2Ё
I__inference_concatenate_34_layer_call_and_return_conditional_losses_36299в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_concatenate_34_layer_call_fn_36305в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_166_layer_call_and_return_conditional_losses_36316в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_166_layer_call_fn_36325в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_167_layer_call_and_return_conditional_losses_36336в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_167_layer_call_fn_36345в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_33870р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_up_sampling2d_35_layer_call_fn_33876р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
є2Ё
I__inference_concatenate_35_layer_call_and_return_conditional_losses_36352в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_concatenate_35_layer_call_fn_36358в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_168_layer_call_and_return_conditional_losses_36369в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_168_layer_call_fn_36378в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_169_layer_call_and_return_conditional_losses_36389в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_169_layer_call_fn_36398в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_170_layer_call_and_return_conditional_losses_36409в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_170_layer_call_fn_36418в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
п2м
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_33885р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ф2С
,__inference_cropping2d_8_layer_call_fn_33891р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_33898р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_zero_padding2d_8_layer_call_fn_33904р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
╠B╔
#__inference_signature_wrapper_35244	RGB_Input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 Ё
 __inference__wrapped_model_33648╦<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒<в9
2в/
-К*
	RGB_Input         АА
к "MкJ
H
zero_padding2d_84К1
zero_padding2d_8         ААы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35878Ц0123MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35896Ц0123MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ╩
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35942v0123=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ ╩
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_35960v0123=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ ├
5__inference_batch_normalization_8_layer_call_fn_35909Й0123MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ├
5__inference_batch_normalization_8_layer_call_fn_35922Й0123MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           в
5__inference_batch_normalization_8_layer_call_fn_35973i0123=в:
3в0
*К'
inputs         АА
p
к ""К         ААв
5__inference_batch_normalization_8_layer_call_fn_35986i0123=в:
3в0
*К'
inputs         АА
p 
к ""К         АА¤
I__inference_concatenate_32_layer_call_and_return_conditional_losses_36193п}вz
sвp
nЪk
=К:
inputs/0,                           А
*К'
inputs/1         ``@
к ".в+
$К!
0         ``└
Ъ ╒
.__inference_concatenate_32_layer_call_fn_36199в}вz
sвp
nЪk
=К:
inputs/0,                           А
*К'
inputs/1         ``@
к "!К         ``└ 
I__inference_concatenate_33_layer_call_and_return_conditional_losses_36246▒~в{
tвq
oЪl
<К9
inputs/0+                           @
,К)
inputs/1         └└ 
к "/в,
%К"
0         └└`
Ъ ╫
.__inference_concatenate_33_layer_call_fn_36252д~в{
tвq
oЪl
<К9
inputs/0+                           @
,К)
inputs/1         └└ 
к ""К         └└` 
I__inference_concatenate_34_layer_call_and_return_conditional_losses_36299▒~в{
tвq
oЪl
<К9
inputs/0+                            
,К)
inputs/1         АА
к "/в,
%К"
0         АА0
Ъ ╫
.__inference_concatenate_34_layer_call_fn_36305д~в{
tвq
oЪl
<К9
inputs/0+                            
,К)
inputs/1         АА
к ""К         АА0 
I__inference_concatenate_35_layer_call_and_return_conditional_losses_36352▒~в{
tвq
oЪl
<К9
inputs/0+                           
,К)
inputs/1         АА
к "/в,
%К"
0         АА
Ъ ╫
.__inference_concatenate_35_layer_call_fn_36358д~в{
tвq
oЪl
<К9
inputs/0+                           
,К)
inputs/1         АА
к ""К         АА╣
E__inference_conv2d_152_layer_call_and_return_conditional_losses_35997p899в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_152_layer_call_fn_36006c899в6
/в,
*К'
inputs         АА
к ""К         АА╣
E__inference_conv2d_153_layer_call_and_return_conditional_losses_36017p>?9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_153_layer_call_fn_36026c>?9в6
/в,
*К'
inputs         АА
к ""К         АА╣
E__inference_conv2d_154_layer_call_and_return_conditional_losses_36037pHI9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_154_layer_call_fn_36046cHI9в6
/в,
*К'
inputs         АА
к ""К         АА╣
E__inference_conv2d_155_layer_call_and_return_conditional_losses_36057pNO9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_155_layer_call_fn_36066cNO9в6
/в,
*К'
inputs         АА
к ""К         АА╣
E__inference_conv2d_156_layer_call_and_return_conditional_losses_36077pXY9в6
/в,
*К'
inputs         └└
к "/в,
%К"
0         └└ 
Ъ С
*__inference_conv2d_156_layer_call_fn_36086cXY9в6
/в,
*К'
inputs         └└
к ""К         └└ ╣
E__inference_conv2d_157_layer_call_and_return_conditional_losses_36097p^_9в6
/в,
*К'
inputs         └└ 
к "/в,
%К"
0         └└ 
Ъ С
*__inference_conv2d_157_layer_call_fn_36106c^_9в6
/в,
*К'
inputs         └└ 
к ""К         └└ ╡
E__inference_conv2d_158_layer_call_and_return_conditional_losses_36117lhi7в4
-в*
(К%
inputs         `` 
к "-в*
#К 
0         ``@
Ъ Н
*__inference_conv2d_158_layer_call_fn_36126_hi7в4
-в*
(К%
inputs         `` 
к " К         ``@╡
E__inference_conv2d_159_layer_call_and_return_conditional_losses_36137lno7в4
-в*
(К%
inputs         ``@
к "-в*
#К 
0         ``@
Ъ Н
*__inference_conv2d_159_layer_call_fn_36146_no7в4
-в*
(К%
inputs         ``@
к " К         ``@╢
E__inference_conv2d_160_layer_call_and_return_conditional_losses_36157mxy7в4
-в*
(К%
inputs         00@
к ".в+
$К!
0         00А
Ъ О
*__inference_conv2d_160_layer_call_fn_36166`xy7в4
-в*
(К%
inputs         00@
к "!К         00А╖
E__inference_conv2d_161_layer_call_and_return_conditional_losses_36177n~8в5
.в+
)К&
inputs         00А
к ".в+
$К!
0         00А
Ъ П
*__inference_conv2d_161_layer_call_fn_36186a~8в5
.в+
)К&
inputs         00А
к "!К         00А╕
E__inference_conv2d_162_layer_call_and_return_conditional_losses_36210oМН8в5
.в+
)К&
inputs         ``└
к "-в*
#К 
0         ``@
Ъ Р
*__inference_conv2d_162_layer_call_fn_36219bМН8в5
.в+
)К&
inputs         ``└
к " К         ``@╖
E__inference_conv2d_163_layer_call_and_return_conditional_losses_36230nТУ7в4
-в*
(К%
inputs         ``@
к "-в*
#К 
0         ``@
Ъ П
*__inference_conv2d_163_layer_call_fn_36239aТУ7в4
-в*
(К%
inputs         ``@
к " К         ``@╗
E__inference_conv2d_164_layer_call_and_return_conditional_losses_36263rаб9в6
/в,
*К'
inputs         └└`
к "/в,
%К"
0         └└ 
Ъ У
*__inference_conv2d_164_layer_call_fn_36272eаб9в6
/в,
*К'
inputs         └└`
к ""К         └└ ╗
E__inference_conv2d_165_layer_call_and_return_conditional_losses_36283rжз9в6
/в,
*К'
inputs         └└ 
к "/в,
%К"
0         └└ 
Ъ У
*__inference_conv2d_165_layer_call_fn_36292eжз9в6
/в,
*К'
inputs         └└ 
к ""К         └└ ╗
E__inference_conv2d_166_layer_call_and_return_conditional_losses_36316r┤╡9в6
/в,
*К'
inputs         АА0
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_166_layer_call_fn_36325e┤╡9в6
/в,
*К'
inputs         АА0
к ""К         АА╗
E__inference_conv2d_167_layer_call_and_return_conditional_losses_36336r║╗9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_167_layer_call_fn_36345e║╗9в6
/в,
*К'
inputs         АА
к ""К         АА╗
E__inference_conv2d_168_layer_call_and_return_conditional_losses_36369r╚╔9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_168_layer_call_fn_36378e╚╔9в6
/в,
*К'
inputs         АА
к ""К         АА╗
E__inference_conv2d_169_layer_call_and_return_conditional_losses_36389r╬╧9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_169_layer_call_fn_36398e╬╧9в6
/в,
*К'
inputs         АА
к ""К         АА╗
E__inference_conv2d_170_layer_call_and_return_conditional_losses_36409r╘╒9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_170_layer_call_fn_36418e╘╒9в6
/в,
*К'
inputs         АА
к ""К         ААъ
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_33885ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_cropping2d_8_layer_call_fn_33891СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ┐
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35844p=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ ┐
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_35848p=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ Ч
0__inference_gaussian_noise_8_layer_call_fn_35853c=в:
3в0
*К'
inputs         АА
p
к ""К         ААЧ
0__inference_gaussian_noise_8_layer_call_fn_35858c=в:
3в0
*К'
inputs         АА
p 
к ""К         ААю
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_33758ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_32_layer_call_fn_33764СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_33770ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_33_layer_call_fn_33776СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_33782ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_34_layer_call_fn_33788СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_33794ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_35_layer_call_fn_33800СRвO
HвE
CК@
inputs4                                    
к ";К84                                    №
B__inference_model_8_layer_call_and_return_conditional_losses_34597╡<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒DвA
:в7
-К*
	RGB_Input         АА
p

 
к "/в,
%К"
0         АА
Ъ №
B__inference_model_8_layer_call_and_return_conditional_losses_34720╡<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒DвA
:в7
-К*
	RGB_Input         АА
p 

 
к "/в,
%К"
0         АА
Ъ ∙
B__inference_model_8_layer_call_and_return_conditional_losses_35454▓<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒Aв>
7в4
*К'
inputs         АА
p

 
к "/в,
%К"
0         АА
Ъ ∙
B__inference_model_8_layer_call_and_return_conditional_losses_35655▓<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒Aв>
7в4
*К'
inputs         АА
p 

 
к "/в,
%К"
0         АА
Ъ ╘
'__inference_model_8_layer_call_fn_34933и<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒DвA
:в7
-К*
	RGB_Input         АА
p

 
к ""К         АА╘
'__inference_model_8_layer_call_fn_35145и<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒DвA
:в7
-К*
	RGB_Input         АА
p 

 
к ""К         АА╤
'__inference_model_8_layer_call_fn_35744е<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒Aв>
7в4
*К'
inputs         АА
p

 
к ""К         АА╤
'__inference_model_8_layer_call_fn_35833е<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒Aв>
7в4
*К'
inputs         АА
p 

 
к ""К         ААА
#__inference_signature_wrapper_35244╪<012389>?HINOXY^_hinoxy~МНТУабжз┤╡║╗╚╔╬╧╘╒IвF
в 
?к<
:
	RGB_Input-К*
	RGB_Input         АА"MкJ
H
zero_padding2d_84К1
zero_padding2d_8         ААю
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_33813ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_32_layer_call_fn_33819СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_33832ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_33_layer_call_fn_33838СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_33851ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_34_layer_call_fn_33857СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_33870ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_35_layer_call_fn_33876СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_33898ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_zero_padding2d_8_layer_call_fn_33904СRвO
HвE
CК@
inputs4                                    
к ";К84                                    