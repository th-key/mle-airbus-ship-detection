Ў╝.
ц╗
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8╦ю$
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
Щ
conv2d_transpose_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*+
shared_nameconv2d_transpose_32/kernel
Т
.conv2d_transpose_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_32/kernel*'
_output_shapes
:@А*
dtype0
И
conv2d_transpose_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_32/bias
Б
,conv2d_transpose_32/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_32/bias*
_output_shapes
:@*
dtype0
З
conv2d_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*"
shared_nameconv2d_162/kernel
А
%conv2d_162/kernel/Read/ReadVariableOpReadVariableOpconv2d_162/kernel*'
_output_shapes
:А@*
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
Ш
conv2d_transpose_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_33/kernel
С
.conv2d_transpose_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/kernel*&
_output_shapes
: @*
dtype0
И
conv2d_transpose_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_33/bias
Б
,conv2d_transpose_33/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/bias*
_output_shapes
: *
dtype0
Ж
conv2d_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv2d_164/kernel

%conv2d_164/kernel/Read/ReadVariableOpReadVariableOpconv2d_164/kernel*&
_output_shapes
:@ *
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
Ш
conv2d_transpose_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_34/kernel
С
.conv2d_transpose_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/kernel*&
_output_shapes
: *
dtype0
И
conv2d_transpose_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_34/bias
Б
,conv2d_transpose_34/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/bias*
_output_shapes
:*
dtype0
Ж
conv2d_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_166/kernel

%conv2d_166/kernel/Read/ReadVariableOpReadVariableOpconv2d_166/kernel*&
_output_shapes
: *
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
Ш
conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_35/kernel
С
.conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/kernel*&
_output_shapes
:*
dtype0
И
conv2d_transpose_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_35/bias
Б
,conv2d_transpose_35/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/bias*
_output_shapes
:*
dtype0
Ж
conv2d_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_168/kernel

%conv2d_168/kernel/Read/ReadVariableOpReadVariableOpconv2d_168/kernel*&
_output_shapes
:*
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
з
!Adam/conv2d_transpose_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*2
shared_name#!Adam/conv2d_transpose_32/kernel/m
а
5Adam/conv2d_transpose_32/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_32/kernel/m*'
_output_shapes
:@А*
dtype0
Ц
Adam/conv2d_transpose_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_32/bias/m
П
3Adam/conv2d_transpose_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_32/bias/m*
_output_shapes
:@*
dtype0
Х
Adam/conv2d_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*)
shared_nameAdam/conv2d_162/kernel/m
О
,Adam/conv2d_162/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/kernel/m*'
_output_shapes
:А@*
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
ж
!Adam/conv2d_transpose_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_33/kernel/m
Я
5Adam/conv2d_transpose_33/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_33/kernel/m*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_33/bias/m
П
3Adam/conv2d_transpose_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_33/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_164/kernel/m
Н
,Adam/conv2d_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/m*&
_output_shapes
:@ *
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
ж
!Adam/conv2d_transpose_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_34/kernel/m
Я
5Adam/conv2d_transpose_34/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_34/kernel/m*&
_output_shapes
: *
dtype0
Ц
Adam/conv2d_transpose_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_34/bias/m
П
3Adam/conv2d_transpose_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_34/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_166/kernel/m
Н
,Adam/conv2d_166/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/m*&
_output_shapes
: *
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
ж
!Adam/conv2d_transpose_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_35/kernel/m
Я
5Adam/conv2d_transpose_35/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_35/kernel/m*&
_output_shapes
:*
dtype0
Ц
Adam/conv2d_transpose_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_35/bias/m
П
3Adam/conv2d_transpose_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_35/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_168/kernel/m
Н
,Adam/conv2d_168/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/m*&
_output_shapes
:*
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
з
!Adam/conv2d_transpose_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*2
shared_name#!Adam/conv2d_transpose_32/kernel/v
а
5Adam/conv2d_transpose_32/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_32/kernel/v*'
_output_shapes
:@А*
dtype0
Ц
Adam/conv2d_transpose_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_32/bias/v
П
3Adam/conv2d_transpose_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_32/bias/v*
_output_shapes
:@*
dtype0
Х
Adam/conv2d_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*)
shared_nameAdam/conv2d_162/kernel/v
О
,Adam/conv2d_162/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_162/kernel/v*'
_output_shapes
:А@*
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
ж
!Adam/conv2d_transpose_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_33/kernel/v
Я
5Adam/conv2d_transpose_33/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_33/kernel/v*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_33/bias/v
П
3Adam/conv2d_transpose_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_33/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_164/kernel/v
Н
,Adam/conv2d_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/v*&
_output_shapes
:@ *
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
ж
!Adam/conv2d_transpose_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_34/kernel/v
Я
5Adam/conv2d_transpose_34/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_34/kernel/v*&
_output_shapes
: *
dtype0
Ц
Adam/conv2d_transpose_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_34/bias/v
П
3Adam/conv2d_transpose_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_34/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_166/kernel/v
Н
,Adam/conv2d_166/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/v*&
_output_shapes
: *
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
ж
!Adam/conv2d_transpose_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_35/kernel/v
Я
5Adam/conv2d_transpose_35/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_35/kernel/v*&
_output_shapes
:*
dtype0
Ц
Adam/conv2d_transpose_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_35/bias/v
П
3Adam/conv2d_transpose_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_35/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_168/kernel/v
Н
,Adam/conv2d_168/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/v*&
_output_shapes
:*
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
хЙ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЯЙ
valueФЙBРЙ BИЙ
▌	
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
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer-22
layer_with_weights-15
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer-26
layer_with_weights-18
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer-30
 layer_with_weights-21
 layer-31
!layer_with_weights-22
!layer-32
"layer_with_weights-23
"layer-33
#layer-34
$layer-35
%	optimizer
&regularization_losses
'trainable_variables
(	variables
)	keras_api
*
signatures
 
R
+regularization_losses
,trainable_variables
-	variables
.	keras_api
Ч
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5trainable_variables
6	variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
h

>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
R
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
R
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
h

Xkernel
Ybias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
h

^kernel
_bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
R
dregularization_losses
etrainable_variables
f	variables
g	keras_api
h

hkernel
ibias
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
h

nkernel
obias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
R
tregularization_losses
utrainable_variables
v	variables
w	keras_api
h

xkernel
ybias
zregularization_losses
{trainable_variables
|	variables
}	keras_api
l

~kernel
bias
Аregularization_losses
Бtrainable_variables
В	variables
Г	keras_api
n
Дkernel
	Еbias
Жregularization_losses
Зtrainable_variables
И	variables
Й	keras_api
V
Кregularization_losses
Лtrainable_variables
М	variables
Н	keras_api
n
Оkernel
	Пbias
Рregularization_losses
Сtrainable_variables
Т	variables
У	keras_api
n
Фkernel
	Хbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
n
Ъkernel
	Ыbias
Ьregularization_losses
Эtrainable_variables
Ю	variables
Я	keras_api
V
аregularization_losses
бtrainable_variables
в	variables
г	keras_api
n
дkernel
	еbias
жregularization_losses
зtrainable_variables
и	variables
й	keras_api
n
кkernel
	лbias
мregularization_losses
нtrainable_variables
о	variables
п	keras_api
n
░kernel
	▒bias
▓regularization_losses
│trainable_variables
┤	variables
╡	keras_api
V
╢regularization_losses
╖trainable_variables
╕	variables
╣	keras_api
n
║kernel
	╗bias
╝regularization_losses
╜trainable_variables
╛	variables
┐	keras_api
n
└kernel
	┴bias
┬regularization_losses
├trainable_variables
─	variables
┼	keras_api
n
╞kernel
	╟bias
╚regularization_losses
╔trainable_variables
╩	variables
╦	keras_api
V
╠regularization_losses
═trainable_variables
╬	variables
╧	keras_api
n
╨kernel
	╤bias
╥regularization_losses
╙trainable_variables
╘	variables
╒	keras_api
n
╓kernel
	╫bias
╪regularization_losses
┘trainable_variables
┌	variables
█	keras_api
n
▄kernel
	▌bias
▐regularization_losses
▀trainable_variables
р	variables
с	keras_api
V
тregularization_losses
уtrainable_variables
ф	variables
х	keras_api
V
цregularization_losses
чtrainable_variables
ш	variables
щ	keras_api
╣
	ъiter
ыbeta_1
ьbeta_2

эdecay
юlearning_rate0m║1m╗8m╝9m╜>m╛?m┐Hm└Im┴Nm┬Om├Xm─Ym┼^m╞_m╟hm╚im╔nm╩om╦xm╠ym═~m╬m╧	Дm╨	Еm╤	Оm╥	Пm╙	Фm╘	Хm╒	Ъm╓	Ыm╫	дm╪	еm┘	кm┌	лm█	░m▄	▒m▌	║m▐	╗m▀	└mр	┴mс	╞mт	╟mу	╨mф	╤mх	╓mц	╫mч	▄mш	▌mщ0vъ1vы8vь9vэ>vю?vяHvЁIvёNvЄOvєXvЇYvї^vЎ_vўhv°iv∙nv·ov√xv№yv¤~v■v 	ДvА	ЕvБ	ОvВ	ПvГ	ФvД	ХvЕ	ЪvЖ	ЫvЗ	дvИ	еvЙ	кvК	лvЛ	░vМ	▒vН	║vО	╗vП	└vР	┴vС	╞vТ	╟vУ	╨vФ	╤vХ	╓vЦ	╫vЧ	▄vШ	▌vЩ
 
Р
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
Д22
Е23
О24
П25
Ф26
Х27
Ъ28
Ы29
д30
е31
к32
л33
░34
▒35
║36
╗37
└38
┴39
╞40
╟41
╨42
╤43
╓44
╫45
▄46
▌47
а
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
Д24
Е25
О26
П27
Ф28
Х29
Ъ30
Ы31
д32
е33
к34
л35
░36
▒37
║38
╗39
└40
┴41
╞42
╟43
╨44
╤45
╓46
╫47
▄48
▌49
▓
&regularization_losses
яmetrics
'trainable_variables
Ёnon_trainable_variables
 ёlayer_regularization_losses
(	variables
Єlayer_metrics
єlayers
 
 
 
 
▓
+regularization_losses
Їmetrics
,trainable_variables
їnon_trainable_variables
 Ўlayer_regularization_losses
-	variables
ўlayer_metrics
°layers
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
22
33
▓
4regularization_losses
∙metrics
5trainable_variables
·non_trainable_variables
 √layer_regularization_losses
6	variables
№layer_metrics
¤layers
][
VARIABLE_VALUEconv2d_152/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_152/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
▓
:regularization_losses
■metrics
;trainable_variables
 non_trainable_variables
 Аlayer_regularization_losses
<	variables
Бlayer_metrics
Вlayers
][
VARIABLE_VALUEconv2d_153/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_153/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

>0
?1
▓
@regularization_losses
Гmetrics
Atrainable_variables
Дnon_trainable_variables
 Еlayer_regularization_losses
B	variables
Жlayer_metrics
Зlayers
 
 
 
▓
Dregularization_losses
Иmetrics
Etrainable_variables
Йnon_trainable_variables
 Кlayer_regularization_losses
F	variables
Лlayer_metrics
Мlayers
][
VARIABLE_VALUEconv2d_154/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_154/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
▓
Jregularization_losses
Нmetrics
Ktrainable_variables
Оnon_trainable_variables
 Пlayer_regularization_losses
L	variables
Рlayer_metrics
Сlayers
][
VARIABLE_VALUEconv2d_155/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_155/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
▓
Pregularization_losses
Тmetrics
Qtrainable_variables
Уnon_trainable_variables
 Фlayer_regularization_losses
R	variables
Хlayer_metrics
Цlayers
 
 
 
▓
Tregularization_losses
Чmetrics
Utrainable_variables
Шnon_trainable_variables
 Щlayer_regularization_losses
V	variables
Ъlayer_metrics
Ыlayers
][
VARIABLE_VALUEconv2d_156/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_156/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

X0
Y1

X0
Y1
▓
Zregularization_losses
Ьmetrics
[trainable_variables
Эnon_trainable_variables
 Юlayer_regularization_losses
\	variables
Яlayer_metrics
аlayers
][
VARIABLE_VALUEconv2d_157/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_157/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
▓
`regularization_losses
бmetrics
atrainable_variables
вnon_trainable_variables
 гlayer_regularization_losses
b	variables
дlayer_metrics
еlayers
 
 
 
▓
dregularization_losses
жmetrics
etrainable_variables
зnon_trainable_variables
 иlayer_regularization_losses
f	variables
йlayer_metrics
кlayers
][
VARIABLE_VALUEconv2d_158/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_158/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1

h0
i1
▓
jregularization_losses
лmetrics
ktrainable_variables
мnon_trainable_variables
 нlayer_regularization_losses
l	variables
оlayer_metrics
пlayers
][
VARIABLE_VALUEconv2d_159/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_159/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

n0
o1

n0
o1
▓
pregularization_losses
░metrics
qtrainable_variables
▒non_trainable_variables
 ▓layer_regularization_losses
r	variables
│layer_metrics
┤layers
 
 
 
▓
tregularization_losses
╡metrics
utrainable_variables
╢non_trainable_variables
 ╖layer_regularization_losses
v	variables
╕layer_metrics
╣layers
][
VARIABLE_VALUEconv2d_160/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_160/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

x0
y1

x0
y1
▓
zregularization_losses
║metrics
{trainable_variables
╗non_trainable_variables
 ╝layer_regularization_losses
|	variables
╜layer_metrics
╛layers
^\
VARIABLE_VALUEconv2d_161/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_161/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

~0
1
╡
Аregularization_losses
┐metrics
Бtrainable_variables
└non_trainable_variables
 ┴layer_regularization_losses
В	variables
┬layer_metrics
├layers
ge
VARIABLE_VALUEconv2d_transpose_32/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_32/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Д0
Е1

Д0
Е1
╡
Жregularization_losses
─metrics
Зtrainable_variables
┼non_trainable_variables
 ╞layer_regularization_losses
И	variables
╟layer_metrics
╚layers
 
 
 
╡
Кregularization_losses
╔metrics
Лtrainable_variables
╩non_trainable_variables
 ╦layer_regularization_losses
М	variables
╠layer_metrics
═layers
^\
VARIABLE_VALUEconv2d_162/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_162/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

О0
П1

О0
П1
╡
Рregularization_losses
╬metrics
Сtrainable_variables
╧non_trainable_variables
 ╨layer_regularization_losses
Т	variables
╤layer_metrics
╥layers
^\
VARIABLE_VALUEconv2d_163/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_163/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ф0
Х1

Ф0
Х1
╡
Цregularization_losses
╙metrics
Чtrainable_variables
╘non_trainable_variables
 ╒layer_regularization_losses
Ш	variables
╓layer_metrics
╫layers
ge
VARIABLE_VALUEconv2d_transpose_33/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_33/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ъ0
Ы1

Ъ0
Ы1
╡
Ьregularization_losses
╪metrics
Эtrainable_variables
┘non_trainable_variables
 ┌layer_regularization_losses
Ю	variables
█layer_metrics
▄layers
 
 
 
╡
аregularization_losses
▌metrics
бtrainable_variables
▐non_trainable_variables
 ▀layer_regularization_losses
в	variables
рlayer_metrics
сlayers
^\
VARIABLE_VALUEconv2d_164/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_164/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE
 

д0
е1

д0
е1
╡
жregularization_losses
тmetrics
зtrainable_variables
уnon_trainable_variables
 фlayer_regularization_losses
и	variables
хlayer_metrics
цlayers
^\
VARIABLE_VALUEconv2d_165/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_165/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 

к0
л1

к0
л1
╡
мregularization_losses
чmetrics
нtrainable_variables
шnon_trainable_variables
 щlayer_regularization_losses
о	variables
ъlayer_metrics
ыlayers
ge
VARIABLE_VALUEconv2d_transpose_34/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_34/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE
 

░0
▒1

░0
▒1
╡
▓regularization_losses
ьmetrics
│trainable_variables
эnon_trainable_variables
 юlayer_regularization_losses
┤	variables
яlayer_metrics
Ёlayers
 
 
 
╡
╢regularization_losses
ёmetrics
╖trainable_variables
Єnon_trainable_variables
 єlayer_regularization_losses
╕	variables
Їlayer_metrics
їlayers
^\
VARIABLE_VALUEconv2d_166/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_166/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE
 

║0
╗1

║0
╗1
╡
╝regularization_losses
Ўmetrics
╜trainable_variables
ўnon_trainable_variables
 °layer_regularization_losses
╛	variables
∙layer_metrics
·layers
^\
VARIABLE_VALUEconv2d_167/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_167/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE
 

└0
┴1

└0
┴1
╡
┬regularization_losses
√metrics
├trainable_variables
№non_trainable_variables
 ¤layer_regularization_losses
─	variables
■layer_metrics
 layers
ge
VARIABLE_VALUEconv2d_transpose_35/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_35/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE
 

╞0
╟1

╞0
╟1
╡
╚regularization_losses
Аmetrics
╔trainable_variables
Бnon_trainable_variables
 Вlayer_regularization_losses
╩	variables
Гlayer_metrics
Дlayers
 
 
 
╡
╠regularization_losses
Еmetrics
═trainable_variables
Жnon_trainable_variables
 Зlayer_regularization_losses
╬	variables
Иlayer_metrics
Йlayers
^\
VARIABLE_VALUEconv2d_168/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_168/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE
 

╨0
╤1

╨0
╤1
╡
╥regularization_losses
Кmetrics
╙trainable_variables
Лnon_trainable_variables
 Мlayer_regularization_losses
╘	variables
Нlayer_metrics
Оlayers
^\
VARIABLE_VALUEconv2d_169/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_169/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE
 

╓0
╫1

╓0
╫1
╡
╪regularization_losses
Пmetrics
┘trainable_variables
Рnon_trainable_variables
 Сlayer_regularization_losses
┌	variables
Тlayer_metrics
Уlayers
^\
VARIABLE_VALUEconv2d_170/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_170/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE
 

▄0
▌1

▄0
▌1
╡
▐regularization_losses
Фmetrics
▀trainable_variables
Хnon_trainable_variables
 Цlayer_regularization_losses
р	variables
Чlayer_metrics
Шlayers
 
 
 
╡
тregularization_losses
Щmetrics
уtrainable_variables
Ъnon_trainable_variables
 Ыlayer_regularization_losses
ф	variables
Ьlayer_metrics
Эlayers
 
 
 
╡
цregularization_losses
Юmetrics
чtrainable_variables
Яnon_trainable_variables
 аlayer_regularization_losses
ш	variables
бlayer_metrics
вlayers
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
 
г0
д1
е2
ж3

20
31
 
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
8

зtotal

иcount
й	variables
к	keras_api
I

лtotal

мcount
н
_fn_kwargs
о	variables
п	keras_api
I

░total

▒count
▓
_fn_kwargs
│	variables
┤	keras_api
I

╡total

╢count
╖
_fn_kwargs
╕	variables
╣	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

з0
и1

й	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

л0
м1

о	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

░0
▒1

│	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

╡0
╢1

╕	variables
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
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_32/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_32/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_162/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_162/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_163/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_163/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_33/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_33/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_164/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_164/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_165/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_165/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_34/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_34/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_166/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_166/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_167/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_167/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_35/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_35/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_168/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_168/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_169/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_169/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_170/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_170/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_32/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_32/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_162/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_162/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_163/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_163/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_33/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_33/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_164/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_164/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_165/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_165/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_34/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_34/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_166/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_166/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_167/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_167/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_35/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_35/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_168/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_168/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_169/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_169/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/conv2d_170/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_170/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Р
serving_default_RGB_InputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
л
StatefulPartitionedCallStatefulPartitionedCallserving_default_RGB_Inputbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_152/kernelconv2d_152/biasconv2d_153/kernelconv2d_153/biasconv2d_154/kernelconv2d_154/biasconv2d_155/kernelconv2d_155/biasconv2d_156/kernelconv2d_156/biasconv2d_157/kernelconv2d_157/biasconv2d_158/kernelconv2d_158/biasconv2d_159/kernelconv2d_159/biasconv2d_160/kernelconv2d_160/biasconv2d_161/kernelconv2d_161/biasconv2d_transpose_32/kernelconv2d_transpose_32/biasconv2d_162/kernelconv2d_162/biasconv2d_163/kernelconv2d_163/biasconv2d_transpose_33/kernelconv2d_transpose_33/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_transpose_34/kernelconv2d_transpose_34/biasconv2d_166/kernelconv2d_166/biasconv2d_167/kernelconv2d_167/biasconv2d_transpose_35/kernelconv2d_transpose_35/biasconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/bias*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_94615
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╓9
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp%conv2d_152/kernel/Read/ReadVariableOp#conv2d_152/bias/Read/ReadVariableOp%conv2d_153/kernel/Read/ReadVariableOp#conv2d_153/bias/Read/ReadVariableOp%conv2d_154/kernel/Read/ReadVariableOp#conv2d_154/bias/Read/ReadVariableOp%conv2d_155/kernel/Read/ReadVariableOp#conv2d_155/bias/Read/ReadVariableOp%conv2d_156/kernel/Read/ReadVariableOp#conv2d_156/bias/Read/ReadVariableOp%conv2d_157/kernel/Read/ReadVariableOp#conv2d_157/bias/Read/ReadVariableOp%conv2d_158/kernel/Read/ReadVariableOp#conv2d_158/bias/Read/ReadVariableOp%conv2d_159/kernel/Read/ReadVariableOp#conv2d_159/bias/Read/ReadVariableOp%conv2d_160/kernel/Read/ReadVariableOp#conv2d_160/bias/Read/ReadVariableOp%conv2d_161/kernel/Read/ReadVariableOp#conv2d_161/bias/Read/ReadVariableOp.conv2d_transpose_32/kernel/Read/ReadVariableOp,conv2d_transpose_32/bias/Read/ReadVariableOp%conv2d_162/kernel/Read/ReadVariableOp#conv2d_162/bias/Read/ReadVariableOp%conv2d_163/kernel/Read/ReadVariableOp#conv2d_163/bias/Read/ReadVariableOp.conv2d_transpose_33/kernel/Read/ReadVariableOp,conv2d_transpose_33/bias/Read/ReadVariableOp%conv2d_164/kernel/Read/ReadVariableOp#conv2d_164/bias/Read/ReadVariableOp%conv2d_165/kernel/Read/ReadVariableOp#conv2d_165/bias/Read/ReadVariableOp.conv2d_transpose_34/kernel/Read/ReadVariableOp,conv2d_transpose_34/bias/Read/ReadVariableOp%conv2d_166/kernel/Read/ReadVariableOp#conv2d_166/bias/Read/ReadVariableOp%conv2d_167/kernel/Read/ReadVariableOp#conv2d_167/bias/Read/ReadVariableOp.conv2d_transpose_35/kernel/Read/ReadVariableOp,conv2d_transpose_35/bias/Read/ReadVariableOp%conv2d_168/kernel/Read/ReadVariableOp#conv2d_168/bias/Read/ReadVariableOp%conv2d_169/kernel/Read/ReadVariableOp#conv2d_169/bias/Read/ReadVariableOp%conv2d_170/kernel/Read/ReadVariableOp#conv2d_170/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp,Adam/conv2d_152/kernel/m/Read/ReadVariableOp*Adam/conv2d_152/bias/m/Read/ReadVariableOp,Adam/conv2d_153/kernel/m/Read/ReadVariableOp*Adam/conv2d_153/bias/m/Read/ReadVariableOp,Adam/conv2d_154/kernel/m/Read/ReadVariableOp*Adam/conv2d_154/bias/m/Read/ReadVariableOp,Adam/conv2d_155/kernel/m/Read/ReadVariableOp*Adam/conv2d_155/bias/m/Read/ReadVariableOp,Adam/conv2d_156/kernel/m/Read/ReadVariableOp*Adam/conv2d_156/bias/m/Read/ReadVariableOp,Adam/conv2d_157/kernel/m/Read/ReadVariableOp*Adam/conv2d_157/bias/m/Read/ReadVariableOp,Adam/conv2d_158/kernel/m/Read/ReadVariableOp*Adam/conv2d_158/bias/m/Read/ReadVariableOp,Adam/conv2d_159/kernel/m/Read/ReadVariableOp*Adam/conv2d_159/bias/m/Read/ReadVariableOp,Adam/conv2d_160/kernel/m/Read/ReadVariableOp*Adam/conv2d_160/bias/m/Read/ReadVariableOp,Adam/conv2d_161/kernel/m/Read/ReadVariableOp*Adam/conv2d_161/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_32/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_32/bias/m/Read/ReadVariableOp,Adam/conv2d_162/kernel/m/Read/ReadVariableOp*Adam/conv2d_162/bias/m/Read/ReadVariableOp,Adam/conv2d_163/kernel/m/Read/ReadVariableOp*Adam/conv2d_163/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_33/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_33/bias/m/Read/ReadVariableOp,Adam/conv2d_164/kernel/m/Read/ReadVariableOp*Adam/conv2d_164/bias/m/Read/ReadVariableOp,Adam/conv2d_165/kernel/m/Read/ReadVariableOp*Adam/conv2d_165/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_34/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_34/bias/m/Read/ReadVariableOp,Adam/conv2d_166/kernel/m/Read/ReadVariableOp*Adam/conv2d_166/bias/m/Read/ReadVariableOp,Adam/conv2d_167/kernel/m/Read/ReadVariableOp*Adam/conv2d_167/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_35/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_35/bias/m/Read/ReadVariableOp,Adam/conv2d_168/kernel/m/Read/ReadVariableOp*Adam/conv2d_168/bias/m/Read/ReadVariableOp,Adam/conv2d_169/kernel/m/Read/ReadVariableOp*Adam/conv2d_169/bias/m/Read/ReadVariableOp,Adam/conv2d_170/kernel/m/Read/ReadVariableOp*Adam/conv2d_170/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp,Adam/conv2d_152/kernel/v/Read/ReadVariableOp*Adam/conv2d_152/bias/v/Read/ReadVariableOp,Adam/conv2d_153/kernel/v/Read/ReadVariableOp*Adam/conv2d_153/bias/v/Read/ReadVariableOp,Adam/conv2d_154/kernel/v/Read/ReadVariableOp*Adam/conv2d_154/bias/v/Read/ReadVariableOp,Adam/conv2d_155/kernel/v/Read/ReadVariableOp*Adam/conv2d_155/bias/v/Read/ReadVariableOp,Adam/conv2d_156/kernel/v/Read/ReadVariableOp*Adam/conv2d_156/bias/v/Read/ReadVariableOp,Adam/conv2d_157/kernel/v/Read/ReadVariableOp*Adam/conv2d_157/bias/v/Read/ReadVariableOp,Adam/conv2d_158/kernel/v/Read/ReadVariableOp*Adam/conv2d_158/bias/v/Read/ReadVariableOp,Adam/conv2d_159/kernel/v/Read/ReadVariableOp*Adam/conv2d_159/bias/v/Read/ReadVariableOp,Adam/conv2d_160/kernel/v/Read/ReadVariableOp*Adam/conv2d_160/bias/v/Read/ReadVariableOp,Adam/conv2d_161/kernel/v/Read/ReadVariableOp*Adam/conv2d_161/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_32/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_32/bias/v/Read/ReadVariableOp,Adam/conv2d_162/kernel/v/Read/ReadVariableOp*Adam/conv2d_162/bias/v/Read/ReadVariableOp,Adam/conv2d_163/kernel/v/Read/ReadVariableOp*Adam/conv2d_163/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_33/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_33/bias/v/Read/ReadVariableOp,Adam/conv2d_164/kernel/v/Read/ReadVariableOp*Adam/conv2d_164/bias/v/Read/ReadVariableOp,Adam/conv2d_165/kernel/v/Read/ReadVariableOp*Adam/conv2d_165/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_34/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_34/bias/v/Read/ReadVariableOp,Adam/conv2d_166/kernel/v/Read/ReadVariableOp*Adam/conv2d_166/bias/v/Read/ReadVariableOp,Adam/conv2d_167/kernel/v/Read/ReadVariableOp*Adam/conv2d_167/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_35/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_35/bias/v/Read/ReadVariableOp,Adam/conv2d_168/kernel/v/Read/ReadVariableOp*Adam/conv2d_168/bias/v/Read/ReadVariableOp,Adam/conv2d_169/kernel/v/Read/ReadVariableOp*Adam/conv2d_169/bias/v/Read/ReadVariableOp,Adam/conv2d_170/kernel/v/Read/ReadVariableOp*Adam/conv2d_170/bias/v/Read/ReadVariableOpConst*п
Tinз
д2б	*
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
__inference__traced_save_96409
х 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_152/kernelconv2d_152/biasconv2d_153/kernelconv2d_153/biasconv2d_154/kernelconv2d_154/biasconv2d_155/kernelconv2d_155/biasconv2d_156/kernelconv2d_156/biasconv2d_157/kernelconv2d_157/biasconv2d_158/kernelconv2d_158/biasconv2d_159/kernelconv2d_159/biasconv2d_160/kernelconv2d_160/biasconv2d_161/kernelconv2d_161/biasconv2d_transpose_32/kernelconv2d_transpose_32/biasconv2d_162/kernelconv2d_162/biasconv2d_163/kernelconv2d_163/biasconv2d_transpose_33/kernelconv2d_transpose_33/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_transpose_34/kernelconv2d_transpose_34/biasconv2d_166/kernelconv2d_166/biasconv2d_167/kernelconv2d_167/biasconv2d_transpose_35/kernelconv2d_transpose_35/biasconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/conv2d_152/kernel/mAdam/conv2d_152/bias/mAdam/conv2d_153/kernel/mAdam/conv2d_153/bias/mAdam/conv2d_154/kernel/mAdam/conv2d_154/bias/mAdam/conv2d_155/kernel/mAdam/conv2d_155/bias/mAdam/conv2d_156/kernel/mAdam/conv2d_156/bias/mAdam/conv2d_157/kernel/mAdam/conv2d_157/bias/mAdam/conv2d_158/kernel/mAdam/conv2d_158/bias/mAdam/conv2d_159/kernel/mAdam/conv2d_159/bias/mAdam/conv2d_160/kernel/mAdam/conv2d_160/bias/mAdam/conv2d_161/kernel/mAdam/conv2d_161/bias/m!Adam/conv2d_transpose_32/kernel/mAdam/conv2d_transpose_32/bias/mAdam/conv2d_162/kernel/mAdam/conv2d_162/bias/mAdam/conv2d_163/kernel/mAdam/conv2d_163/bias/m!Adam/conv2d_transpose_33/kernel/mAdam/conv2d_transpose_33/bias/mAdam/conv2d_164/kernel/mAdam/conv2d_164/bias/mAdam/conv2d_165/kernel/mAdam/conv2d_165/bias/m!Adam/conv2d_transpose_34/kernel/mAdam/conv2d_transpose_34/bias/mAdam/conv2d_166/kernel/mAdam/conv2d_166/bias/mAdam/conv2d_167/kernel/mAdam/conv2d_167/bias/m!Adam/conv2d_transpose_35/kernel/mAdam/conv2d_transpose_35/bias/mAdam/conv2d_168/kernel/mAdam/conv2d_168/bias/mAdam/conv2d_169/kernel/mAdam/conv2d_169/bias/mAdam/conv2d_170/kernel/mAdam/conv2d_170/bias/m"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/conv2d_152/kernel/vAdam/conv2d_152/bias/vAdam/conv2d_153/kernel/vAdam/conv2d_153/bias/vAdam/conv2d_154/kernel/vAdam/conv2d_154/bias/vAdam/conv2d_155/kernel/vAdam/conv2d_155/bias/vAdam/conv2d_156/kernel/vAdam/conv2d_156/bias/vAdam/conv2d_157/kernel/vAdam/conv2d_157/bias/vAdam/conv2d_158/kernel/vAdam/conv2d_158/bias/vAdam/conv2d_159/kernel/vAdam/conv2d_159/bias/vAdam/conv2d_160/kernel/vAdam/conv2d_160/bias/vAdam/conv2d_161/kernel/vAdam/conv2d_161/bias/v!Adam/conv2d_transpose_32/kernel/vAdam/conv2d_transpose_32/bias/vAdam/conv2d_162/kernel/vAdam/conv2d_162/bias/vAdam/conv2d_163/kernel/vAdam/conv2d_163/bias/v!Adam/conv2d_transpose_33/kernel/vAdam/conv2d_transpose_33/bias/vAdam/conv2d_164/kernel/vAdam/conv2d_164/bias/vAdam/conv2d_165/kernel/vAdam/conv2d_165/bias/v!Adam/conv2d_transpose_34/kernel/vAdam/conv2d_transpose_34/bias/vAdam/conv2d_166/kernel/vAdam/conv2d_166/bias/vAdam/conv2d_167/kernel/vAdam/conv2d_167/bias/v!Adam/conv2d_transpose_35/kernel/vAdam/conv2d_transpose_35/bias/vAdam/conv2d_168/kernel/vAdam/conv2d_168/bias/vAdam/conv2d_169/kernel/vAdam/conv2d_169/bias/vAdam/conv2d_170/kernel/vAdam/conv2d_170/bias/v*о
Tinж
г2а*
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
!__inference__traced_restore_96896╤м
█

▐
E__inference_conv2d_169_layer_call_and_return_conditional_losses_95880

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_165_layer_call_and_return_conditional_losses_95774

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
р
и
5__inference_batch_normalization_8_layer_call_fn_95477

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
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932322
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_156_layer_call_and_return_conditional_losses_93389

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
И	
c
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_93144

inputs
identityГ
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2
strided_slice/stackЗ
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2
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
end_mask2
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
Мг
уW
!__inference__traced_restore_96896
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
#assignvariableop_23_conv2d_161_bias2
.assignvariableop_24_conv2d_transpose_32_kernel0
,assignvariableop_25_conv2d_transpose_32_bias)
%assignvariableop_26_conv2d_162_kernel'
#assignvariableop_27_conv2d_162_bias)
%assignvariableop_28_conv2d_163_kernel'
#assignvariableop_29_conv2d_163_bias2
.assignvariableop_30_conv2d_transpose_33_kernel0
,assignvariableop_31_conv2d_transpose_33_bias)
%assignvariableop_32_conv2d_164_kernel'
#assignvariableop_33_conv2d_164_bias)
%assignvariableop_34_conv2d_165_kernel'
#assignvariableop_35_conv2d_165_bias2
.assignvariableop_36_conv2d_transpose_34_kernel0
,assignvariableop_37_conv2d_transpose_34_bias)
%assignvariableop_38_conv2d_166_kernel'
#assignvariableop_39_conv2d_166_bias)
%assignvariableop_40_conv2d_167_kernel'
#assignvariableop_41_conv2d_167_bias2
.assignvariableop_42_conv2d_transpose_35_kernel0
,assignvariableop_43_conv2d_transpose_35_bias)
%assignvariableop_44_conv2d_168_kernel'
#assignvariableop_45_conv2d_168_bias)
%assignvariableop_46_conv2d_169_kernel'
#assignvariableop_47_conv2d_169_bias)
%assignvariableop_48_conv2d_170_kernel'
#assignvariableop_49_conv2d_170_bias!
assignvariableop_50_adam_iter#
assignvariableop_51_adam_beta_1#
assignvariableop_52_adam_beta_2"
assignvariableop_53_adam_decay*
&assignvariableop_54_adam_learning_rate
assignvariableop_55_total
assignvariableop_56_count
assignvariableop_57_total_1
assignvariableop_58_count_1
assignvariableop_59_total_2
assignvariableop_60_count_2
assignvariableop_61_total_3
assignvariableop_62_count_3:
6assignvariableop_63_adam_batch_normalization_8_gamma_m9
5assignvariableop_64_adam_batch_normalization_8_beta_m0
,assignvariableop_65_adam_conv2d_152_kernel_m.
*assignvariableop_66_adam_conv2d_152_bias_m0
,assignvariableop_67_adam_conv2d_153_kernel_m.
*assignvariableop_68_adam_conv2d_153_bias_m0
,assignvariableop_69_adam_conv2d_154_kernel_m.
*assignvariableop_70_adam_conv2d_154_bias_m0
,assignvariableop_71_adam_conv2d_155_kernel_m.
*assignvariableop_72_adam_conv2d_155_bias_m0
,assignvariableop_73_adam_conv2d_156_kernel_m.
*assignvariableop_74_adam_conv2d_156_bias_m0
,assignvariableop_75_adam_conv2d_157_kernel_m.
*assignvariableop_76_adam_conv2d_157_bias_m0
,assignvariableop_77_adam_conv2d_158_kernel_m.
*assignvariableop_78_adam_conv2d_158_bias_m0
,assignvariableop_79_adam_conv2d_159_kernel_m.
*assignvariableop_80_adam_conv2d_159_bias_m0
,assignvariableop_81_adam_conv2d_160_kernel_m.
*assignvariableop_82_adam_conv2d_160_bias_m0
,assignvariableop_83_adam_conv2d_161_kernel_m.
*assignvariableop_84_adam_conv2d_161_bias_m9
5assignvariableop_85_adam_conv2d_transpose_32_kernel_m7
3assignvariableop_86_adam_conv2d_transpose_32_bias_m0
,assignvariableop_87_adam_conv2d_162_kernel_m.
*assignvariableop_88_adam_conv2d_162_bias_m0
,assignvariableop_89_adam_conv2d_163_kernel_m.
*assignvariableop_90_adam_conv2d_163_bias_m9
5assignvariableop_91_adam_conv2d_transpose_33_kernel_m7
3assignvariableop_92_adam_conv2d_transpose_33_bias_m0
,assignvariableop_93_adam_conv2d_164_kernel_m.
*assignvariableop_94_adam_conv2d_164_bias_m0
,assignvariableop_95_adam_conv2d_165_kernel_m.
*assignvariableop_96_adam_conv2d_165_bias_m9
5assignvariableop_97_adam_conv2d_transpose_34_kernel_m7
3assignvariableop_98_adam_conv2d_transpose_34_bias_m0
,assignvariableop_99_adam_conv2d_166_kernel_m/
+assignvariableop_100_adam_conv2d_166_bias_m1
-assignvariableop_101_adam_conv2d_167_kernel_m/
+assignvariableop_102_adam_conv2d_167_bias_m:
6assignvariableop_103_adam_conv2d_transpose_35_kernel_m8
4assignvariableop_104_adam_conv2d_transpose_35_bias_m1
-assignvariableop_105_adam_conv2d_168_kernel_m/
+assignvariableop_106_adam_conv2d_168_bias_m1
-assignvariableop_107_adam_conv2d_169_kernel_m/
+assignvariableop_108_adam_conv2d_169_bias_m1
-assignvariableop_109_adam_conv2d_170_kernel_m/
+assignvariableop_110_adam_conv2d_170_bias_m;
7assignvariableop_111_adam_batch_normalization_8_gamma_v:
6assignvariableop_112_adam_batch_normalization_8_beta_v1
-assignvariableop_113_adam_conv2d_152_kernel_v/
+assignvariableop_114_adam_conv2d_152_bias_v1
-assignvariableop_115_adam_conv2d_153_kernel_v/
+assignvariableop_116_adam_conv2d_153_bias_v1
-assignvariableop_117_adam_conv2d_154_kernel_v/
+assignvariableop_118_adam_conv2d_154_bias_v1
-assignvariableop_119_adam_conv2d_155_kernel_v/
+assignvariableop_120_adam_conv2d_155_bias_v1
-assignvariableop_121_adam_conv2d_156_kernel_v/
+assignvariableop_122_adam_conv2d_156_bias_v1
-assignvariableop_123_adam_conv2d_157_kernel_v/
+assignvariableop_124_adam_conv2d_157_bias_v1
-assignvariableop_125_adam_conv2d_158_kernel_v/
+assignvariableop_126_adam_conv2d_158_bias_v1
-assignvariableop_127_adam_conv2d_159_kernel_v/
+assignvariableop_128_adam_conv2d_159_bias_v1
-assignvariableop_129_adam_conv2d_160_kernel_v/
+assignvariableop_130_adam_conv2d_160_bias_v1
-assignvariableop_131_adam_conv2d_161_kernel_v/
+assignvariableop_132_adam_conv2d_161_bias_v:
6assignvariableop_133_adam_conv2d_transpose_32_kernel_v8
4assignvariableop_134_adam_conv2d_transpose_32_bias_v1
-assignvariableop_135_adam_conv2d_162_kernel_v/
+assignvariableop_136_adam_conv2d_162_bias_v1
-assignvariableop_137_adam_conv2d_163_kernel_v/
+assignvariableop_138_adam_conv2d_163_bias_v:
6assignvariableop_139_adam_conv2d_transpose_33_kernel_v8
4assignvariableop_140_adam_conv2d_transpose_33_bias_v1
-assignvariableop_141_adam_conv2d_164_kernel_v/
+assignvariableop_142_adam_conv2d_164_bias_v1
-assignvariableop_143_adam_conv2d_165_kernel_v/
+assignvariableop_144_adam_conv2d_165_bias_v:
6assignvariableop_145_adam_conv2d_transpose_34_kernel_v8
4assignvariableop_146_adam_conv2d_transpose_34_bias_v1
-assignvariableop_147_adam_conv2d_166_kernel_v/
+assignvariableop_148_adam_conv2d_166_bias_v1
-assignvariableop_149_adam_conv2d_167_kernel_v/
+assignvariableop_150_adam_conv2d_167_bias_v:
6assignvariableop_151_adam_conv2d_transpose_35_kernel_v8
4assignvariableop_152_adam_conv2d_transpose_35_bias_v1
-assignvariableop_153_adam_conv2d_168_kernel_v/
+assignvariableop_154_adam_conv2d_168_bias_v1
-assignvariableop_155_adam_conv2d_169_kernel_v/
+assignvariableop_156_adam_conv2d_169_bias_v1
-assignvariableop_157_adam_conv2d_170_kernel_v/
+assignvariableop_158_adam_conv2d_170_bias_v
identity_160ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_113вAssignVariableOp_114вAssignVariableOp_115вAssignVariableOp_116вAssignVariableOp_117вAssignVariableOp_118вAssignVariableOp_119вAssignVariableOp_12вAssignVariableOp_120вAssignVariableOp_121вAssignVariableOp_122вAssignVariableOp_123вAssignVariableOp_124вAssignVariableOp_125вAssignVariableOp_126вAssignVariableOp_127вAssignVariableOp_128вAssignVariableOp_129вAssignVariableOp_13вAssignVariableOp_130вAssignVariableOp_131вAssignVariableOp_132вAssignVariableOp_133вAssignVariableOp_134вAssignVariableOp_135вAssignVariableOp_136вAssignVariableOp_137вAssignVariableOp_138вAssignVariableOp_139вAssignVariableOp_14вAssignVariableOp_140вAssignVariableOp_141вAssignVariableOp_142вAssignVariableOp_143вAssignVariableOp_144вAssignVariableOp_145вAssignVariableOp_146вAssignVariableOp_147вAssignVariableOp_148вAssignVariableOp_149вAssignVariableOp_15вAssignVariableOp_150вAssignVariableOp_151вAssignVariableOp_152вAssignVariableOp_153вAssignVariableOp_154вAssignVariableOp_155вAssignVariableOp_156вAssignVariableOp_157вAssignVariableOp_158вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99¤Z
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:а*
dtype0*ИZ
value■YB√YаB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╙
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:а*
dtype0*╓
value╠B╔аB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*▒
dtypesж
г2а	2
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
Identity_24╢
AssignVariableOp_24AssignVariableOp.assignvariableop_24_conv2d_transpose_32_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25┤
AssignVariableOp_25AssignVariableOp,assignvariableop_25_conv2d_transpose_32_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26н
AssignVariableOp_26AssignVariableOp%assignvariableop_26_conv2d_162_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27л
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv2d_162_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28н
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv2d_163_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29л
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv2d_163_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╢
AssignVariableOp_30AssignVariableOp.assignvariableop_30_conv2d_transpose_33_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┤
AssignVariableOp_31AssignVariableOp,assignvariableop_31_conv2d_transpose_33_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32н
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv2d_164_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33л
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv2d_164_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34н
AssignVariableOp_34AssignVariableOp%assignvariableop_34_conv2d_165_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35л
AssignVariableOp_35AssignVariableOp#assignvariableop_35_conv2d_165_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36╢
AssignVariableOp_36AssignVariableOp.assignvariableop_36_conv2d_transpose_34_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┤
AssignVariableOp_37AssignVariableOp,assignvariableop_37_conv2d_transpose_34_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38н
AssignVariableOp_38AssignVariableOp%assignvariableop_38_conv2d_166_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39л
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv2d_166_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40н
AssignVariableOp_40AssignVariableOp%assignvariableop_40_conv2d_167_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41л
AssignVariableOp_41AssignVariableOp#assignvariableop_41_conv2d_167_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╢
AssignVariableOp_42AssignVariableOp.assignvariableop_42_conv2d_transpose_35_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┤
AssignVariableOp_43AssignVariableOp,assignvariableop_43_conv2d_transpose_35_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44н
AssignVariableOp_44AssignVariableOp%assignvariableop_44_conv2d_168_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45л
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv2d_168_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46н
AssignVariableOp_46AssignVariableOp%assignvariableop_46_conv2d_169_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47л
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv2d_169_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48н
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv2d_170_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49л
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv2d_170_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_50е
AssignVariableOp_50AssignVariableOpassignvariableop_50_adam_iterIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51з
AssignVariableOp_51AssignVariableOpassignvariableop_51_adam_beta_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52з
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_beta_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53ж
AssignVariableOp_53AssignVariableOpassignvariableop_53_adam_decayIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54о
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_learning_rateIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55б
AssignVariableOp_55AssignVariableOpassignvariableop_55_totalIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56б
AssignVariableOp_56AssignVariableOpassignvariableop_56_countIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57г
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58г
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_1Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59г
AssignVariableOp_59AssignVariableOpassignvariableop_59_total_2Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60г
AssignVariableOp_60AssignVariableOpassignvariableop_60_count_2Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61г
AssignVariableOp_61AssignVariableOpassignvariableop_61_total_3Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62г
AssignVariableOp_62AssignVariableOpassignvariableop_62_count_3Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63╛
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_8_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64╜
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_batch_normalization_8_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65┤
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_conv2d_152_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66▓
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_conv2d_152_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67┤
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_conv2d_153_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68▓
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_conv2d_153_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69┤
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_154_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70▓
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_154_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71┤
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv2d_155_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72▓
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv2d_155_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73┤
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv2d_156_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74▓
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv2d_156_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75┤
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv2d_157_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76▓
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv2d_157_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77┤
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv2d_158_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78▓
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv2d_158_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79┤
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv2d_159_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80▓
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv2d_159_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81┤
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv2d_160_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82▓
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv2d_160_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83┤
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv2d_161_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84▓
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv2d_161_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85╜
AssignVariableOp_85AssignVariableOp5assignvariableop_85_adam_conv2d_transpose_32_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86╗
AssignVariableOp_86AssignVariableOp3assignvariableop_86_adam_conv2d_transpose_32_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87┤
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_conv2d_162_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88▓
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_conv2d_162_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89┤
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv2d_163_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90▓
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv2d_163_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91╜
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv2d_transpose_33_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92╗
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv2d_transpose_33_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93┤
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv2d_164_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94▓
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv2d_164_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95┤
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_conv2d_165_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96▓
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv2d_165_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97╜
AssignVariableOp_97AssignVariableOp5assignvariableop_97_adam_conv2d_transpose_34_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98╗
AssignVariableOp_98AssignVariableOp3assignvariableop_98_adam_conv2d_transpose_34_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99┤
AssignVariableOp_99AssignVariableOp,assignvariableop_99_adam_conv2d_166_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100╢
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv2d_166_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101╕
AssignVariableOp_101AssignVariableOp-assignvariableop_101_adam_conv2d_167_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102╢
AssignVariableOp_102AssignVariableOp+assignvariableop_102_adam_conv2d_167_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103┴
AssignVariableOp_103AssignVariableOp6assignvariableop_103_adam_conv2d_transpose_35_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104┐
AssignVariableOp_104AssignVariableOp4assignvariableop_104_adam_conv2d_transpose_35_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105╕
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_conv2d_168_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106╢
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_conv2d_168_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107╕
AssignVariableOp_107AssignVariableOp-assignvariableop_107_adam_conv2d_169_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108╢
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_conv2d_169_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109╕
AssignVariableOp_109AssignVariableOp-assignvariableop_109_adam_conv2d_170_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110╢
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_conv2d_170_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111┬
AssignVariableOp_111AssignVariableOp7assignvariableop_111_adam_batch_normalization_8_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112┴
AssignVariableOp_112AssignVariableOp6assignvariableop_112_adam_batch_normalization_8_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113╕
AssignVariableOp_113AssignVariableOp-assignvariableop_113_adam_conv2d_152_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114╢
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_conv2d_152_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115╕
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv2d_153_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116╢
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv2d_153_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117╕
AssignVariableOp_117AssignVariableOp-assignvariableop_117_adam_conv2d_154_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118╢
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_conv2d_154_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119╕
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv2d_155_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120╢
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv2d_155_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121╕
AssignVariableOp_121AssignVariableOp-assignvariableop_121_adam_conv2d_156_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122╢
AssignVariableOp_122AssignVariableOp+assignvariableop_122_adam_conv2d_156_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123╕
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv2d_157_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124╢
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv2d_157_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125╕
AssignVariableOp_125AssignVariableOp-assignvariableop_125_adam_conv2d_158_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126╢
AssignVariableOp_126AssignVariableOp+assignvariableop_126_adam_conv2d_158_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127╕
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv2d_159_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128╢
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv2d_159_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129╕
AssignVariableOp_129AssignVariableOp-assignvariableop_129_adam_conv2d_160_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130╢
AssignVariableOp_130AssignVariableOp+assignvariableop_130_adam_conv2d_160_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131╕
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv2d_161_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132╢
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv2d_161_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133┴
AssignVariableOp_133AssignVariableOp6assignvariableop_133_adam_conv2d_transpose_32_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134┐
AssignVariableOp_134AssignVariableOp4assignvariableop_134_adam_conv2d_transpose_32_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_134q
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:2
Identity_135╕
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv2d_162_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_135q
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:2
Identity_136╢
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv2d_162_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_136q
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:2
Identity_137╕
AssignVariableOp_137AssignVariableOp-assignvariableop_137_adam_conv2d_163_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_137q
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:2
Identity_138╢
AssignVariableOp_138AssignVariableOp+assignvariableop_138_adam_conv2d_163_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_138q
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:2
Identity_139┴
AssignVariableOp_139AssignVariableOp6assignvariableop_139_adam_conv2d_transpose_33_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139q
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:2
Identity_140┐
AssignVariableOp_140AssignVariableOp4assignvariableop_140_adam_conv2d_transpose_33_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_140q
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:2
Identity_141╕
AssignVariableOp_141AssignVariableOp-assignvariableop_141_adam_conv2d_164_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_141q
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:2
Identity_142╢
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_conv2d_164_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_142q
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:2
Identity_143╕
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv2d_165_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_143q
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:2
Identity_144╢
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv2d_165_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_144q
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:2
Identity_145┴
AssignVariableOp_145AssignVariableOp6assignvariableop_145_adam_conv2d_transpose_34_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_145q
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:2
Identity_146┐
AssignVariableOp_146AssignVariableOp4assignvariableop_146_adam_conv2d_transpose_34_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_146q
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:2
Identity_147╕
AssignVariableOp_147AssignVariableOp-assignvariableop_147_adam_conv2d_166_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_147q
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:2
Identity_148╢
AssignVariableOp_148AssignVariableOp+assignvariableop_148_adam_conv2d_166_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_148q
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:2
Identity_149╕
AssignVariableOp_149AssignVariableOp-assignvariableop_149_adam_conv2d_167_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149q
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:2
Identity_150╢
AssignVariableOp_150AssignVariableOp+assignvariableop_150_adam_conv2d_167_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_150q
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:2
Identity_151┴
AssignVariableOp_151AssignVariableOp6assignvariableop_151_adam_conv2d_transpose_35_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_151q
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:2
Identity_152┐
AssignVariableOp_152AssignVariableOp4assignvariableop_152_adam_conv2d_transpose_35_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_152q
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:2
Identity_153╕
AssignVariableOp_153AssignVariableOp-assignvariableop_153_adam_conv2d_168_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_153q
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:2
Identity_154╢
AssignVariableOp_154AssignVariableOp+assignvariableop_154_adam_conv2d_168_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_154q
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:2
Identity_155╕
AssignVariableOp_155AssignVariableOp-assignvariableop_155_adam_conv2d_169_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_155q
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:2
Identity_156╢
AssignVariableOp_156AssignVariableOp+assignvariableop_156_adam_conv2d_169_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_156q
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:2
Identity_157╕
AssignVariableOp_157AssignVariableOp-assignvariableop_157_adam_conv2d_170_kernel_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_157q
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:2
Identity_158╢
AssignVariableOp_158AssignVariableOp+assignvariableop_158_adam_conv2d_170_bias_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┼
Identity_159Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_159╣
Identity_160IdentityIdentity_159:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_160"%
identity_160Identity_160:output:0*У
_input_shapesБ
■: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582*
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
╪

▐
E__inference_conv2d_161_layer_call_and_return_conditional_losses_95668

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
:         А*
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
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
К
s
I__inference_concatenate_34_layer_call_and_return_conditional_losses_93704

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЗ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         @@ 2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         @@ 2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           :         @@:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:WS
/
_output_shapes
:         @@
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_169_layer_call_and_return_conditional_losses_93826

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
■ь
▀#
B__inference_model_8_layer_call_and_return_conditional_losses_95114

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
*conv2d_161_biasadd_readvariableop_resource@
<conv2d_transpose_32_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_32_biasadd_readvariableop_resource-
)conv2d_162_conv2d_readvariableop_resource.
*conv2d_162_biasadd_readvariableop_resource-
)conv2d_163_conv2d_readvariableop_resource.
*conv2d_163_biasadd_readvariableop_resource@
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_33_biasadd_readvariableop_resource-
)conv2d_164_conv2d_readvariableop_resource.
*conv2d_164_biasadd_readvariableop_resource-
)conv2d_165_conv2d_readvariableop_resource.
*conv2d_165_biasadd_readvariableop_resource@
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_34_biasadd_readvariableop_resource-
)conv2d_166_conv2d_readvariableop_resource.
*conv2d_166_biasadd_readvariableop_resource-
)conv2d_167_conv2d_readvariableop_resource.
*conv2d_167_biasadd_readvariableop_resource@
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_35_biasadd_readvariableop_resource-
)conv2d_168_conv2d_readvariableop_resource.
*conv2d_168_biasadd_readvariableop_resource-
)conv2d_169_conv2d_readvariableop_resource.
*conv2d_169_biasadd_readvariableop_resource-
)conv2d_170_conv2d_readvariableop_resource.
*conv2d_170_biasadd_readvariableop_resource
identityИв5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в!conv2d_152/BiasAdd/ReadVariableOpв conv2d_152/Conv2D/ReadVariableOpв!conv2d_153/BiasAdd/ReadVariableOpв conv2d_153/Conv2D/ReadVariableOpв!conv2d_154/BiasAdd/ReadVariableOpв conv2d_154/Conv2D/ReadVariableOpв!conv2d_155/BiasAdd/ReadVariableOpв conv2d_155/Conv2D/ReadVariableOpв!conv2d_156/BiasAdd/ReadVariableOpв conv2d_156/Conv2D/ReadVariableOpв!conv2d_157/BiasAdd/ReadVariableOpв conv2d_157/Conv2D/ReadVariableOpв!conv2d_158/BiasAdd/ReadVariableOpв conv2d_158/Conv2D/ReadVariableOpв!conv2d_159/BiasAdd/ReadVariableOpв conv2d_159/Conv2D/ReadVariableOpв!conv2d_160/BiasAdd/ReadVariableOpв conv2d_160/Conv2D/ReadVariableOpв!conv2d_161/BiasAdd/ReadVariableOpв conv2d_161/Conv2D/ReadVariableOpв!conv2d_162/BiasAdd/ReadVariableOpв conv2d_162/Conv2D/ReadVariableOpв!conv2d_163/BiasAdd/ReadVariableOpв conv2d_163/Conv2D/ReadVariableOpв!conv2d_164/BiasAdd/ReadVariableOpв conv2d_164/Conv2D/ReadVariableOpв!conv2d_165/BiasAdd/ReadVariableOpв conv2d_165/Conv2D/ReadVariableOpв!conv2d_166/BiasAdd/ReadVariableOpв conv2d_166/Conv2D/ReadVariableOpв!conv2d_167/BiasAdd/ReadVariableOpв conv2d_167/Conv2D/ReadVariableOpв!conv2d_168/BiasAdd/ReadVariableOpв conv2d_168/Conv2D/ReadVariableOpв!conv2d_169/BiasAdd/ReadVariableOpв conv2d_169/Conv2D/ReadVariableOpв!conv2d_170/BiasAdd/ReadVariableOpв conv2d_170/Conv2D/ReadVariableOpв*conv2d_transpose_32/BiasAdd/ReadVariableOpв3conv2d_transpose_32/conv2d_transpose/ReadVariableOpв*conv2d_transpose_33/BiasAdd/ReadVariableOpв3conv2d_transpose_33/conv2d_transpose/ReadVariableOpв*conv2d_transpose_34/BiasAdd/ReadVariableOpв3conv2d_transpose_34/conv2d_transpose/ReadVariableOpв*conv2d_transpose_35/BiasAdd/ReadVariableOpв3conv2d_transpose_35/conv2d_transpose/ReadVariableOp╢
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
9:         АА:::::*
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
:         АА*
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
:         АА2
conv2d_152/BiasAddГ
conv2d_152/ReluReluconv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_152/Relu╢
 conv2d_153/Conv2D/ReadVariableOpReadVariableOp)conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_153/Conv2D/ReadVariableOp▌
conv2d_153/Conv2DConv2Dconv2d_152/Relu:activations:0(conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_153/BiasAddГ
conv2d_153/ReluReluconv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_153/Relu╦
max_pooling2d_32/MaxPoolMaxPoolconv2d_153/Relu:activations:0*/
_output_shapes
:         @@*
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
 conv2d_154/Conv2D/ReadVariableOp▀
conv2d_154/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0(conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_154/Conv2Dн
!conv2d_154/BiasAdd/ReadVariableOpReadVariableOp*conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_154/BiasAdd/ReadVariableOp┤
conv2d_154/BiasAddBiasAddconv2d_154/Conv2D:output:0)conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_154/BiasAddБ
conv2d_154/ReluReluconv2d_154/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_154/Relu╢
 conv2d_155/Conv2D/ReadVariableOpReadVariableOp)conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_155/Conv2D/ReadVariableOp█
conv2d_155/Conv2DConv2Dconv2d_154/Relu:activations:0(conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_155/Conv2Dн
!conv2d_155/BiasAdd/ReadVariableOpReadVariableOp*conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_155/BiasAdd/ReadVariableOp┤
conv2d_155/BiasAddBiasAddconv2d_155/Conv2D:output:0)conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_155/BiasAddБ
conv2d_155/ReluReluconv2d_155/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_155/Relu╦
max_pooling2d_33/MaxPoolMaxPoolconv2d_155/Relu:activations:0*/
_output_shapes
:           *
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
 conv2d_156/Conv2D/ReadVariableOp▀
conv2d_156/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0(conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_156/Conv2Dн
!conv2d_156/BiasAdd/ReadVariableOpReadVariableOp*conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_156/BiasAdd/ReadVariableOp┤
conv2d_156/BiasAddBiasAddconv2d_156/Conv2D:output:0)conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_156/BiasAddБ
conv2d_156/ReluReluconv2d_156/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_156/Relu╢
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_157/Conv2D/ReadVariableOp█
conv2d_157/Conv2DConv2Dconv2d_156/Relu:activations:0(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_157/Conv2Dн
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_157/BiasAdd/ReadVariableOp┤
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_157/BiasAddБ
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_157/Relu╦
max_pooling2d_34/MaxPoolMaxPoolconv2d_157/Relu:activations:0*/
_output_shapes
:          *
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
:         @*
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
:         @2
conv2d_158/BiasAddБ
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_158/Relu╢
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_159/Conv2D/ReadVariableOp█
conv2d_159/Conv2DConv2Dconv2d_158/Relu:activations:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_159/BiasAddБ
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_159/Relu╦
max_pooling2d_35/MaxPoolMaxPoolconv2d_159/Relu:activations:0*/
_output_shapes
:         @*
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
:         А*
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
:         А2
conv2d_160/BiasAddВ
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_160/Relu╕
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02"
 conv2d_161/Conv2D/ReadVariableOp▄
conv2d_161/Conv2DConv2Dconv2d_160/Relu:activations:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
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
:         А2
conv2d_161/BiasAddВ
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_161/ReluГ
conv2d_transpose_32/ShapeShapeconv2d_161/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_32/ShapeЬ
'conv2d_transpose_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_32/strided_slice/stackа
)conv2d_transpose_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_32/strided_slice/stack_1а
)conv2d_transpose_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_32/strided_slice/stack_2┌
!conv2d_transpose_32/strided_sliceStridedSlice"conv2d_transpose_32/Shape:output:00conv2d_transpose_32/strided_slice/stack:output:02conv2d_transpose_32/strided_slice/stack_1:output:02conv2d_transpose_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_32/strided_slice|
conv2d_transpose_32/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_32/stack/1|
conv2d_transpose_32/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_32/stack/2|
conv2d_transpose_32/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_32/stack/3К
conv2d_transpose_32/stackPack*conv2d_transpose_32/strided_slice:output:0$conv2d_transpose_32/stack/1:output:0$conv2d_transpose_32/stack/2:output:0$conv2d_transpose_32/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_32/stackа
)conv2d_transpose_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_32/strided_slice_1/stackд
+conv2d_transpose_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_32/strided_slice_1/stack_1д
+conv2d_transpose_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_32/strided_slice_1/stack_2ф
#conv2d_transpose_32/strided_slice_1StridedSlice"conv2d_transpose_32/stack:output:02conv2d_transpose_32/strided_slice_1/stack:output:04conv2d_transpose_32/strided_slice_1/stack_1:output:04conv2d_transpose_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_32/strided_slice_1Ё
3conv2d_transpose_32/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_32_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype025
3conv2d_transpose_32/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_32/conv2d_transposeConv2DBackpropInput"conv2d_transpose_32/stack:output:0;conv2d_transpose_32/conv2d_transpose/ReadVariableOp:value:0conv2d_161/Relu:activations:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2&
$conv2d_transpose_32/conv2d_transpose╚
*conv2d_transpose_32/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_32/BiasAdd/ReadVariableOpт
conv2d_transpose_32/BiasAddBiasAdd-conv2d_transpose_32/conv2d_transpose:output:02conv2d_transpose_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_32/BiasAddz
concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_32/concat/axisш
concatenate_32/concatConcatV2$conv2d_transpose_32/BiasAdd:output:0conv2d_159/Relu:activations:0#concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         А2
concatenate_32/concat╖
 conv2d_162/Conv2D/ReadVariableOpReadVariableOp)conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype02"
 conv2d_162/Conv2D/ReadVariableOp▄
conv2d_162/Conv2DConv2Dconcatenate_32/concat:output:0(conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_162/BiasAddБ
conv2d_162/ReluReluconv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_162/Relu╢
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_163/Conv2D/ReadVariableOp█
conv2d_163/Conv2DConv2Dconv2d_162/Relu:activations:0(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_163/BiasAddБ
conv2d_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_163/ReluГ
conv2d_transpose_33/ShapeShapeconv2d_163/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_33/ShapeЬ
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stackа
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1а
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2┌
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/2|
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/3К
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stackа
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stackд
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1д
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2ф
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1я
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0conv2d_163/Relu:activations:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose╚
*conv2d_transpose_33/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_33_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_33/BiasAdd/ReadVariableOpт
conv2d_transpose_33/BiasAddBiasAdd-conv2d_transpose_33/conv2d_transpose:output:02conv2d_transpose_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_transpose_33/BiasAddz
concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_33/concat/axisч
concatenate_33/concatConcatV2$conv2d_transpose_33/BiasAdd:output:0conv2d_157/Relu:activations:0#concatenate_33/concat/axis:output:0*
N*
T0*/
_output_shapes
:           @2
concatenate_33/concat╢
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02"
 conv2d_164/Conv2D/ReadVariableOp▄
conv2d_164/Conv2DConv2Dconcatenate_33/concat:output:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_164/Conv2Dн
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_164/BiasAdd/ReadVariableOp┤
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_164/BiasAddБ
conv2d_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_164/Relu╢
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_165/Conv2D/ReadVariableOp█
conv2d_165/Conv2DConv2Dconv2d_164/Relu:activations:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_165/Conv2Dн
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_165/BiasAdd/ReadVariableOp┤
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_165/BiasAddБ
conv2d_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_165/ReluГ
conv2d_transpose_34/ShapeShapeconv2d_165/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/ShapeЬ
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stackа
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1а
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2┌
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/3К
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stackа
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stackд
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1д
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2ф
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1я
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0conv2d_165/Relu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose╚
*conv2d_transpose_34/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_34/BiasAdd/ReadVariableOpт
conv2d_transpose_34/BiasAddBiasAdd-conv2d_transpose_34/conv2d_transpose:output:02conv2d_transpose_34/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_transpose_34/BiasAddz
concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_34/concat/axisч
concatenate_34/concatConcatV2$conv2d_transpose_34/BiasAdd:output:0conv2d_155/Relu:activations:0#concatenate_34/concat/axis:output:0*
N*
T0*/
_output_shapes
:         @@ 2
concatenate_34/concat╢
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_166/Conv2D/ReadVariableOp▄
conv2d_166/Conv2DConv2Dconcatenate_34/concat:output:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_166/Conv2Dн
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_166/BiasAdd/ReadVariableOp┤
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_166/BiasAddБ
conv2d_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_166/Relu╢
 conv2d_167/Conv2D/ReadVariableOpReadVariableOp)conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_167/Conv2D/ReadVariableOp█
conv2d_167/Conv2DConv2Dconv2d_166/Relu:activations:0(conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_167/Conv2Dн
!conv2d_167/BiasAdd/ReadVariableOpReadVariableOp*conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_167/BiasAdd/ReadVariableOp┤
conv2d_167/BiasAddBiasAddconv2d_167/Conv2D:output:0)conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_167/BiasAddБ
conv2d_167/ReluReluconv2d_167/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_167/ReluГ
conv2d_transpose_35/ShapeShapeconv2d_167/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/ShapeЬ
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stackа
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1а
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2┌
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice}
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_35/stack/1}
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3К
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stackа
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stackд
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1д
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2ф
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1я
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp╟
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0conv2d_167/Relu:activations:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose╚
*conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_35/BiasAdd/ReadVariableOpф
conv2d_transpose_35/BiasAddBiasAdd-conv2d_transpose_35/conv2d_transpose:output:02conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_transpose_35/BiasAddz
concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_35/concat/axisщ
concatenate_35/concatConcatV2$conv2d_transpose_35/BiasAdd:output:0conv2d_153/Relu:activations:0#concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatenate_35/concat╢
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_168/Conv2D/ReadVariableOp▐
conv2d_168/Conv2DConv2Dconcatenate_35/concat:output:0(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_168/BiasAddГ
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_168/Relu╢
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_169/Conv2D/ReadVariableOp▌
conv2d_169/Conv2DConv2Dconv2d_168/Relu:activations:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_169/BiasAddГ
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_169/Relu╢
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_170/Conv2D/ReadVariableOp▐
conv2d_170/Conv2DConv2Dconv2d_169/Relu:activations:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_170/BiasAddМ
conv2d_170/SigmoidSigmoidconv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_170/SigmoidЭ
 cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2"
 cropping2d_8/strided_slice/stackб
"cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2$
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
:         АА*

begin_mask	*
end_mask2
cropping2d_8/strided_sliceп
zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
zero_padding2d_8/Pad/paddings╝
zero_padding2d_8/PadPad#cropping2d_8/strided_slice:output:0&zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
zero_padding2d_8/PadО
IdentityIdentityzero_padding2d_8/Pad:output:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1"^conv2d_152/BiasAdd/ReadVariableOp!^conv2d_152/Conv2D/ReadVariableOp"^conv2d_153/BiasAdd/ReadVariableOp!^conv2d_153/Conv2D/ReadVariableOp"^conv2d_154/BiasAdd/ReadVariableOp!^conv2d_154/Conv2D/ReadVariableOp"^conv2d_155/BiasAdd/ReadVariableOp!^conv2d_155/Conv2D/ReadVariableOp"^conv2d_156/BiasAdd/ReadVariableOp!^conv2d_156/Conv2D/ReadVariableOp"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp"^conv2d_162/BiasAdd/ReadVariableOp!^conv2d_162/Conv2D/ReadVariableOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp"^conv2d_167/BiasAdd/ReadVariableOp!^conv2d_167/Conv2D/ReadVariableOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp+^conv2d_transpose_32/BiasAdd/ReadVariableOp4^conv2d_transpose_32/conv2d_transpose/ReadVariableOp+^conv2d_transpose_33/BiasAdd/ReadVariableOp4^conv2d_transpose_33/conv2d_transpose/ReadVariableOp+^conv2d_transpose_34/BiasAdd/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp+^conv2d_transpose_35/BiasAdd/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2n
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
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2X
*conv2d_transpose_32/BiasAdd/ReadVariableOp*conv2d_transpose_32/BiasAdd/ReadVariableOp2j
3conv2d_transpose_32/conv2d_transpose/ReadVariableOp3conv2d_transpose_32/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_33/BiasAdd/ReadVariableOp*conv2d_transpose_33/BiasAdd/ReadVariableOp2j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_34/BiasAdd/ReadVariableOp*conv2d_transpose_34/BiasAdd/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_35/BiasAdd/ReadVariableOp*conv2d_transpose_35/BiasAdd/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_157_layer_call_and_return_conditional_losses_93416

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╒

▐
E__inference_conv2d_160_layer_call_and_return_conditional_losses_95648

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
:         А*
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
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Б

*__inference_conv2d_164_layer_call_fn_95763

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
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_936492
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
и
H
,__inference_cropping2d_8_layer_call_fn_93150

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
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_931442
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
╧

▐
E__inference_conv2d_158_layer_call_and_return_conditional_losses_93444

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Б

*__inference_conv2d_158_layer_call_fn_95617

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
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_934442
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
√
g
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95339

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_165_layer_call_and_return_conditional_losses_93676

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_155_layer_call_and_return_conditional_losses_93361

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_92917

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
х
g
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_93157

inputs
identityН
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
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
ъй
╦
B__inference_model_8_layer_call_and_return_conditional_losses_94011
	rgb_input
batch_normalization_8_93876
batch_normalization_8_93878
batch_normalization_8_93880
batch_normalization_8_93882
conv2d_152_93885
conv2d_152_93887
conv2d_153_93890
conv2d_153_93892
conv2d_154_93896
conv2d_154_93898
conv2d_155_93901
conv2d_155_93903
conv2d_156_93907
conv2d_156_93909
conv2d_157_93912
conv2d_157_93914
conv2d_158_93918
conv2d_158_93920
conv2d_159_93923
conv2d_159_93925
conv2d_160_93929
conv2d_160_93931
conv2d_161_93934
conv2d_161_93936
conv2d_transpose_32_93939
conv2d_transpose_32_93941
conv2d_162_93945
conv2d_162_93947
conv2d_163_93950
conv2d_163_93952
conv2d_transpose_33_93955
conv2d_transpose_33_93957
conv2d_164_93961
conv2d_164_93963
conv2d_165_93966
conv2d_165_93968
conv2d_transpose_34_93971
conv2d_transpose_34_93973
conv2d_166_93977
conv2d_166_93979
conv2d_167_93982
conv2d_167_93984
conv2d_transpose_35_93987
conv2d_transpose_35_93989
conv2d_168_93993
conv2d_168_93995
conv2d_169_93998
conv2d_169_94000
conv2d_170_94003
conv2d_170_94005
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв+conv2d_transpose_32/StatefulPartitionedCallв+conv2d_transpose_33/StatefulPartitionedCallв+conv2d_transpose_34/StatefulPartitionedCallв+conv2d_transpose_35/StatefulPartitionedCall√
 gaussian_noise_8/PartitionedCallPartitionedCall	rgb_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931822"
 gaussian_noise_8/PartitionedCall└
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_8/PartitionedCall:output:0batch_normalization_8_93876batch_normalization_8_93878batch_normalization_8_93880batch_normalization_8_93882*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932322/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_93885conv2d_152_93887*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_932792$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_93890conv2d_153_93892*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_933062$
"conv2d_153/StatefulPartitionedCallЫ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_929172"
 max_pooling2d_32/PartitionedCall╔
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_93896conv2d_154_93898*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_933342$
"conv2d_154/StatefulPartitionedCall╦
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_93901conv2d_155_93903*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_933612$
"conv2d_155/StatefulPartitionedCallЫ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_929292"
 max_pooling2d_33/PartitionedCall╔
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_93907conv2d_156_93909*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_933892$
"conv2d_156/StatefulPartitionedCall╦
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_93912conv2d_157_93914*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_934162$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_929412"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_93918conv2d_158_93920*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_934442$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_93923conv2d_159_93925*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_934712$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_929532"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_93929conv2d_160_93931*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_934992$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_93934conv2d_161_93936*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_935262$
"conv2d_161/StatefulPartitionedCallК
+conv2d_transpose_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0conv2d_transpose_32_93939conv2d_transpose_32_93941*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_929932-
+conv2d_transpose_32/StatefulPartitionedCall═
concatenate_32/PartitionedCallPartitionedCall4conv2d_transpose_32/StatefulPartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_935542 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_93945conv2d_162_93947*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_935742$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_93950conv2d_163_93952*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_936012$
"conv2d_163/StatefulPartitionedCallК
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0conv2d_transpose_33_93955conv2d_transpose_33_93957*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_930372-
+conv2d_transpose_33/StatefulPartitionedCall╠
concatenate_33/PartitionedCallPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_936292 
concatenate_33/PartitionedCall╟
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_93961conv2d_164_93963*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_936492$
"conv2d_164/StatefulPartitionedCall╦
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_93966conv2d_165_93968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_936762$
"conv2d_165/StatefulPartitionedCallК
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0conv2d_transpose_34_93971conv2d_transpose_34_93973*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_930812-
+conv2d_transpose_34/StatefulPartitionedCall╠
concatenate_34/PartitionedCallPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_937042 
concatenate_34/PartitionedCall╟
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_93977conv2d_166_93979*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_937242$
"conv2d_166/StatefulPartitionedCall╦
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_93982conv2d_167_93984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_937512$
"conv2d_167/StatefulPartitionedCallК
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0conv2d_transpose_35_93987conv2d_transpose_35_93989*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_931252-
+conv2d_transpose_35/StatefulPartitionedCall╬
concatenate_35/PartitionedCallPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_937792 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_93993conv2d_168_93995*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_937992$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_93998conv2d_169_94000*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_938262$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_94003conv2d_170_94005*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_938532$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_931442
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_931572"
 zero_padding2d_8/PartitionedCallо
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall,^conv2d_transpose_32/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2^
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
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2Z
+conv2d_transpose_32/StatefulPartitionedCall+conv2d_transpose_32/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Ъ
u
I__inference_concatenate_35_layer_call_and_return_conditional_losses_95843
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
:         АА2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
╧

▐
E__inference_conv2d_164_layer_call_and_return_conditional_losses_95754

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
Т
s
I__inference_concatenate_35_layer_call_and_return_conditional_losses_93779

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
:         АА2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:YU
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Б

*__inference_conv2d_155_layer_call_fn_95557

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
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_933612
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
▐

▐
E__inference_conv2d_170_layer_call_and_return_conditional_losses_95900

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
:         АА*
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
:         АА2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         АА2	
SigmoidЪ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
А
Z
.__inference_concatenate_35_layer_call_fn_95849
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
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_937792
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+                           :         АА:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:         АА
"
_user_specified_name
inputs/1
█

▐
E__inference_conv2d_153_layer_call_and_return_conditional_losses_95508

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Б

*__inference_conv2d_154_layer_call_fn_95537

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
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_933342
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95369

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
╥

▐
E__inference_conv2d_162_layer_call_and_return_conditional_losses_95701

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_153_layer_call_and_return_conditional_losses_93306

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╙
є
'__inference_model_8_layer_call_fn_95219

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

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identityИвStatefulPartitionedCallФ
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_941532
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_169_layer_call_fn_95889

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_938262
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_153_layer_call_fn_95517

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_933062
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
сй
╚
B__inference_model_8_layer_call_and_return_conditional_losses_94397

inputs
batch_normalization_8_94262
batch_normalization_8_94264
batch_normalization_8_94266
batch_normalization_8_94268
conv2d_152_94271
conv2d_152_94273
conv2d_153_94276
conv2d_153_94278
conv2d_154_94282
conv2d_154_94284
conv2d_155_94287
conv2d_155_94289
conv2d_156_94293
conv2d_156_94295
conv2d_157_94298
conv2d_157_94300
conv2d_158_94304
conv2d_158_94306
conv2d_159_94309
conv2d_159_94311
conv2d_160_94315
conv2d_160_94317
conv2d_161_94320
conv2d_161_94322
conv2d_transpose_32_94325
conv2d_transpose_32_94327
conv2d_162_94331
conv2d_162_94333
conv2d_163_94336
conv2d_163_94338
conv2d_transpose_33_94341
conv2d_transpose_33_94343
conv2d_164_94347
conv2d_164_94349
conv2d_165_94352
conv2d_165_94354
conv2d_transpose_34_94357
conv2d_transpose_34_94359
conv2d_166_94363
conv2d_166_94365
conv2d_167_94368
conv2d_167_94370
conv2d_transpose_35_94373
conv2d_transpose_35_94375
conv2d_168_94379
conv2d_168_94381
conv2d_169_94384
conv2d_169_94386
conv2d_170_94389
conv2d_170_94391
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв+conv2d_transpose_32/StatefulPartitionedCallв+conv2d_transpose_33/StatefulPartitionedCallв+conv2d_transpose_34/StatefulPartitionedCallв+conv2d_transpose_35/StatefulPartitionedCall°
 gaussian_noise_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931822"
 gaussian_noise_8/PartitionedCall└
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_8/PartitionedCall:output:0batch_normalization_8_94262batch_normalization_8_94264batch_normalization_8_94266batch_normalization_8_94268*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932322/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_94271conv2d_152_94273*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_932792$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_94276conv2d_153_94278*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_933062$
"conv2d_153/StatefulPartitionedCallЫ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_929172"
 max_pooling2d_32/PartitionedCall╔
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_94282conv2d_154_94284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_933342$
"conv2d_154/StatefulPartitionedCall╦
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_94287conv2d_155_94289*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_933612$
"conv2d_155/StatefulPartitionedCallЫ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_929292"
 max_pooling2d_33/PartitionedCall╔
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_94293conv2d_156_94295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_933892$
"conv2d_156/StatefulPartitionedCall╦
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_94298conv2d_157_94300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_934162$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_929412"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_94304conv2d_158_94306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_934442$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_94309conv2d_159_94311*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_934712$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_929532"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_94315conv2d_160_94317*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_934992$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_94320conv2d_161_94322*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_935262$
"conv2d_161/StatefulPartitionedCallК
+conv2d_transpose_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0conv2d_transpose_32_94325conv2d_transpose_32_94327*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_929932-
+conv2d_transpose_32/StatefulPartitionedCall═
concatenate_32/PartitionedCallPartitionedCall4conv2d_transpose_32/StatefulPartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_935542 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_94331conv2d_162_94333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_935742$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_94336conv2d_163_94338*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_936012$
"conv2d_163/StatefulPartitionedCallК
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0conv2d_transpose_33_94341conv2d_transpose_33_94343*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_930372-
+conv2d_transpose_33/StatefulPartitionedCall╠
concatenate_33/PartitionedCallPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_936292 
concatenate_33/PartitionedCall╟
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_94347conv2d_164_94349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_936492$
"conv2d_164/StatefulPartitionedCall╦
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_94352conv2d_165_94354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_936762$
"conv2d_165/StatefulPartitionedCallК
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0conv2d_transpose_34_94357conv2d_transpose_34_94359*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_930812-
+conv2d_transpose_34/StatefulPartitionedCall╠
concatenate_34/PartitionedCallPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_937042 
concatenate_34/PartitionedCall╟
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_94363conv2d_166_94365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_937242$
"conv2d_166/StatefulPartitionedCall╦
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_94368conv2d_167_94370*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_937512$
"conv2d_167/StatefulPartitionedCallК
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0conv2d_transpose_35_94373conv2d_transpose_35_94375*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_931252-
+conv2d_transpose_35/StatefulPartitionedCall╬
concatenate_35/PartitionedCallPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_937792 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_94379conv2d_168_94381*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_937992$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_94384conv2d_169_94386*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_938262$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_94389conv2d_170_94391*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_938532$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_931442
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_931572"
 zero_padding2d_8/PartitionedCallо
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall,^conv2d_transpose_32/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2^
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
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2Z
+conv2d_transpose_32/StatefulPartitionedCall+conv2d_transpose_32/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Б

*__inference_conv2d_165_layer_call_fn_95783

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
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_936762
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
А
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93232

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
9:         АА:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_168_layer_call_and_return_conditional_losses_93799

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_154_layer_call_and_return_conditional_losses_95528

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
°
Z
.__inference_concatenate_34_layer_call_fn_95796
inputs_0
inputs_1
identity▀
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_937042
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@ 2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           :         @@:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         @@
"
_user_specified_name
inputs/1
Б

*__inference_conv2d_159_layer_call_fn_95637

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
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_934712
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Б

*__inference_conv2d_157_layer_call_fn_95597

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
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_934162
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
▄
И
3__inference_conv2d_transpose_33_layer_call_fn_93047

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_930372
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_152_layer_call_and_return_conditional_losses_93279

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_163_layer_call_and_return_conditional_losses_93601

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_163_layer_call_and_return_conditional_losses_95721

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┤л
Ў
B__inference_model_8_layer_call_and_return_conditional_losses_93872
	rgb_input
batch_normalization_8_93259
batch_normalization_8_93261
batch_normalization_8_93263
batch_normalization_8_93265
conv2d_152_93290
conv2d_152_93292
conv2d_153_93317
conv2d_153_93319
conv2d_154_93345
conv2d_154_93347
conv2d_155_93372
conv2d_155_93374
conv2d_156_93400
conv2d_156_93402
conv2d_157_93427
conv2d_157_93429
conv2d_158_93455
conv2d_158_93457
conv2d_159_93482
conv2d_159_93484
conv2d_160_93510
conv2d_160_93512
conv2d_161_93537
conv2d_161_93539
conv2d_transpose_32_93542
conv2d_transpose_32_93544
conv2d_162_93585
conv2d_162_93587
conv2d_163_93612
conv2d_163_93614
conv2d_transpose_33_93617
conv2d_transpose_33_93619
conv2d_164_93660
conv2d_164_93662
conv2d_165_93687
conv2d_165_93689
conv2d_transpose_34_93692
conv2d_transpose_34_93694
conv2d_166_93735
conv2d_166_93737
conv2d_167_93762
conv2d_167_93764
conv2d_transpose_35_93767
conv2d_transpose_35_93769
conv2d_168_93810
conv2d_168_93812
conv2d_169_93837
conv2d_169_93839
conv2d_170_93864
conv2d_170_93866
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв+conv2d_transpose_32/StatefulPartitionedCallв+conv2d_transpose_33/StatefulPartitionedCallв+conv2d_transpose_34/StatefulPartitionedCallв+conv2d_transpose_35/StatefulPartitionedCallв(gaussian_noise_8/StatefulPartitionedCallУ
(gaussian_noise_8/StatefulPartitionedCallStatefulPartitionedCall	rgb_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931782*
(gaussian_noise_8/StatefulPartitionedCall╞
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_8/StatefulPartitionedCall:output:0batch_normalization_8_93259batch_normalization_8_93261batch_normalization_8_93263batch_normalization_8_93265*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932142/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_93290conv2d_152_93292*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_932792$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_93317conv2d_153_93319*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_933062$
"conv2d_153/StatefulPartitionedCallЫ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_929172"
 max_pooling2d_32/PartitionedCall╔
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_93345conv2d_154_93347*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_933342$
"conv2d_154/StatefulPartitionedCall╦
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_93372conv2d_155_93374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_933612$
"conv2d_155/StatefulPartitionedCallЫ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_929292"
 max_pooling2d_33/PartitionedCall╔
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_93400conv2d_156_93402*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_933892$
"conv2d_156/StatefulPartitionedCall╦
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_93427conv2d_157_93429*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_934162$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_929412"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_93455conv2d_158_93457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_934442$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_93482conv2d_159_93484*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_934712$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_929532"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_93510conv2d_160_93512*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_934992$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_93537conv2d_161_93539*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_935262$
"conv2d_161/StatefulPartitionedCallК
+conv2d_transpose_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0conv2d_transpose_32_93542conv2d_transpose_32_93544*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_929932-
+conv2d_transpose_32/StatefulPartitionedCall═
concatenate_32/PartitionedCallPartitionedCall4conv2d_transpose_32/StatefulPartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_935542 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_93585conv2d_162_93587*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_935742$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_93612conv2d_163_93614*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_936012$
"conv2d_163/StatefulPartitionedCallК
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0conv2d_transpose_33_93617conv2d_transpose_33_93619*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_930372-
+conv2d_transpose_33/StatefulPartitionedCall╠
concatenate_33/PartitionedCallPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_936292 
concatenate_33/PartitionedCall╟
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_93660conv2d_164_93662*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_936492$
"conv2d_164/StatefulPartitionedCall╦
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_93687conv2d_165_93689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_936762$
"conv2d_165/StatefulPartitionedCallК
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0conv2d_transpose_34_93692conv2d_transpose_34_93694*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_930812-
+conv2d_transpose_34/StatefulPartitionedCall╠
concatenate_34/PartitionedCallPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_937042 
concatenate_34/PartitionedCall╟
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_93735conv2d_166_93737*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_937242$
"conv2d_166/StatefulPartitionedCall╦
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_93762conv2d_167_93764*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_937512$
"conv2d_167/StatefulPartitionedCallК
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0conv2d_transpose_35_93767conv2d_transpose_35_93769*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_931252-
+conv2d_transpose_35/StatefulPartitionedCall╬
concatenate_35/PartitionedCallPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_937792 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_93810conv2d_168_93812*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_937992$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_93837conv2d_169_93839*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_938262$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_93864conv2d_170_93866*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_938532$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_931442
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_931572"
 zero_padding2d_8/PartitionedCall┘
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall,^conv2d_transpose_32/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall)^gaussian_noise_8/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2^
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
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2Z
+conv2d_transpose_32/StatefulPartitionedCall+conv2d_transpose_32/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2T
(gaussian_noise_8/StatefulPartitionedCall(gaussian_noise_8/StatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Т
u
I__inference_concatenate_34_layer_call_and_return_conditional_losses_95790
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЙ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         @@ 2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         @@ 2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           :         @@:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         @@
"
_user_specified_name
inputs/1
▐

▐
E__inference_conv2d_170_layer_call_and_return_conditional_losses_93853

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
:         АА*
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
:         АА2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         АА2	
SigmoidЪ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_32_layer_call_fn_92923

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
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_929172
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
ъА
п$
B__inference_model_8_layer_call_and_return_conditional_losses_94869

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
*conv2d_161_biasadd_readvariableop_resource@
<conv2d_transpose_32_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_32_biasadd_readvariableop_resource-
)conv2d_162_conv2d_readvariableop_resource.
*conv2d_162_biasadd_readvariableop_resource-
)conv2d_163_conv2d_readvariableop_resource.
*conv2d_163_biasadd_readvariableop_resource@
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_33_biasadd_readvariableop_resource-
)conv2d_164_conv2d_readvariableop_resource.
*conv2d_164_biasadd_readvariableop_resource-
)conv2d_165_conv2d_readvariableop_resource.
*conv2d_165_biasadd_readvariableop_resource@
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_34_biasadd_readvariableop_resource-
)conv2d_166_conv2d_readvariableop_resource.
*conv2d_166_biasadd_readvariableop_resource-
)conv2d_167_conv2d_readvariableop_resource.
*conv2d_167_biasadd_readvariableop_resource@
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_35_biasadd_readvariableop_resource-
)conv2d_168_conv2d_readvariableop_resource.
*conv2d_168_biasadd_readvariableop_resource-
)conv2d_169_conv2d_readvariableop_resource.
*conv2d_169_biasadd_readvariableop_resource-
)conv2d_170_conv2d_readvariableop_resource.
*conv2d_170_biasadd_readvariableop_resource
identityИв$batch_normalization_8/AssignNewValueв&batch_normalization_8/AssignNewValue_1в5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в!conv2d_152/BiasAdd/ReadVariableOpв conv2d_152/Conv2D/ReadVariableOpв!conv2d_153/BiasAdd/ReadVariableOpв conv2d_153/Conv2D/ReadVariableOpв!conv2d_154/BiasAdd/ReadVariableOpв conv2d_154/Conv2D/ReadVariableOpв!conv2d_155/BiasAdd/ReadVariableOpв conv2d_155/Conv2D/ReadVariableOpв!conv2d_156/BiasAdd/ReadVariableOpв conv2d_156/Conv2D/ReadVariableOpв!conv2d_157/BiasAdd/ReadVariableOpв conv2d_157/Conv2D/ReadVariableOpв!conv2d_158/BiasAdd/ReadVariableOpв conv2d_158/Conv2D/ReadVariableOpв!conv2d_159/BiasAdd/ReadVariableOpв conv2d_159/Conv2D/ReadVariableOpв!conv2d_160/BiasAdd/ReadVariableOpв conv2d_160/Conv2D/ReadVariableOpв!conv2d_161/BiasAdd/ReadVariableOpв conv2d_161/Conv2D/ReadVariableOpв!conv2d_162/BiasAdd/ReadVariableOpв conv2d_162/Conv2D/ReadVariableOpв!conv2d_163/BiasAdd/ReadVariableOpв conv2d_163/Conv2D/ReadVariableOpв!conv2d_164/BiasAdd/ReadVariableOpв conv2d_164/Conv2D/ReadVariableOpв!conv2d_165/BiasAdd/ReadVariableOpв conv2d_165/Conv2D/ReadVariableOpв!conv2d_166/BiasAdd/ReadVariableOpв conv2d_166/Conv2D/ReadVariableOpв!conv2d_167/BiasAdd/ReadVariableOpв conv2d_167/Conv2D/ReadVariableOpв!conv2d_168/BiasAdd/ReadVariableOpв conv2d_168/Conv2D/ReadVariableOpв!conv2d_169/BiasAdd/ReadVariableOpв conv2d_169/Conv2D/ReadVariableOpв!conv2d_170/BiasAdd/ReadVariableOpв conv2d_170/Conv2D/ReadVariableOpв*conv2d_transpose_32/BiasAdd/ReadVariableOpв3conv2d_transpose_32/conv2d_transpose/ReadVariableOpв*conv2d_transpose_33/BiasAdd/ReadVariableOpв3conv2d_transpose_33/conv2d_transpose/ReadVariableOpв*conv2d_transpose_34/BiasAdd/ReadVariableOpв3conv2d_transpose_34/conv2d_transpose/ReadVariableOpв*conv2d_transpose_35/BiasAdd/ReadVariableOpв3conv2d_transpose_35/conv2d_transpose/ReadVariableOpf
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
:         АА*
dtype0*
seed▒ х)*
seed2ХЛе25
3gaussian_noise_8/random_normal/RandomStandardNormal∙
"gaussian_noise_8/random_normal/mulMul<gaussian_noise_8/random_normal/RandomStandardNormal:output:0.gaussian_noise_8/random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2$
"gaussian_noise_8/random_normal/mul┘
gaussian_noise_8/random_normalAdd&gaussian_noise_8/random_normal/mul:z:0,gaussian_noise_8/random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2 
gaussian_noise_8/random_normalЭ
gaussian_noise_8/addAddV2inputs"gaussian_noise_8/random_normal:z:0*
T0*1
_output_shapes
:         АА2
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
9:         АА:::::*
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
:         АА*
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
:         АА2
conv2d_152/BiasAddГ
conv2d_152/ReluReluconv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_152/Relu╢
 conv2d_153/Conv2D/ReadVariableOpReadVariableOp)conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_153/Conv2D/ReadVariableOp▌
conv2d_153/Conv2DConv2Dconv2d_152/Relu:activations:0(conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_153/BiasAddГ
conv2d_153/ReluReluconv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_153/Relu╦
max_pooling2d_32/MaxPoolMaxPoolconv2d_153/Relu:activations:0*/
_output_shapes
:         @@*
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
 conv2d_154/Conv2D/ReadVariableOp▀
conv2d_154/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0(conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_154/Conv2Dн
!conv2d_154/BiasAdd/ReadVariableOpReadVariableOp*conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_154/BiasAdd/ReadVariableOp┤
conv2d_154/BiasAddBiasAddconv2d_154/Conv2D:output:0)conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_154/BiasAddБ
conv2d_154/ReluReluconv2d_154/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_154/Relu╢
 conv2d_155/Conv2D/ReadVariableOpReadVariableOp)conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_155/Conv2D/ReadVariableOp█
conv2d_155/Conv2DConv2Dconv2d_154/Relu:activations:0(conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_155/Conv2Dн
!conv2d_155/BiasAdd/ReadVariableOpReadVariableOp*conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_155/BiasAdd/ReadVariableOp┤
conv2d_155/BiasAddBiasAddconv2d_155/Conv2D:output:0)conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_155/BiasAddБ
conv2d_155/ReluReluconv2d_155/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_155/Relu╦
max_pooling2d_33/MaxPoolMaxPoolconv2d_155/Relu:activations:0*/
_output_shapes
:           *
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
 conv2d_156/Conv2D/ReadVariableOp▀
conv2d_156/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0(conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_156/Conv2Dн
!conv2d_156/BiasAdd/ReadVariableOpReadVariableOp*conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_156/BiasAdd/ReadVariableOp┤
conv2d_156/BiasAddBiasAddconv2d_156/Conv2D:output:0)conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_156/BiasAddБ
conv2d_156/ReluReluconv2d_156/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_156/Relu╢
 conv2d_157/Conv2D/ReadVariableOpReadVariableOp)conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_157/Conv2D/ReadVariableOp█
conv2d_157/Conv2DConv2Dconv2d_156/Relu:activations:0(conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_157/Conv2Dн
!conv2d_157/BiasAdd/ReadVariableOpReadVariableOp*conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_157/BiasAdd/ReadVariableOp┤
conv2d_157/BiasAddBiasAddconv2d_157/Conv2D:output:0)conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_157/BiasAddБ
conv2d_157/ReluReluconv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_157/Relu╦
max_pooling2d_34/MaxPoolMaxPoolconv2d_157/Relu:activations:0*/
_output_shapes
:          *
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
:         @*
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
:         @2
conv2d_158/BiasAddБ
conv2d_158/ReluReluconv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_158/Relu╢
 conv2d_159/Conv2D/ReadVariableOpReadVariableOp)conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_159/Conv2D/ReadVariableOp█
conv2d_159/Conv2DConv2Dconv2d_158/Relu:activations:0(conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_159/BiasAddБ
conv2d_159/ReluReluconv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_159/Relu╦
max_pooling2d_35/MaxPoolMaxPoolconv2d_159/Relu:activations:0*/
_output_shapes
:         @*
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
:         А*
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
:         А2
conv2d_160/BiasAddВ
conv2d_160/ReluReluconv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_160/Relu╕
 conv2d_161/Conv2D/ReadVariableOpReadVariableOp)conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02"
 conv2d_161/Conv2D/ReadVariableOp▄
conv2d_161/Conv2DConv2Dconv2d_160/Relu:activations:0(conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
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
:         А2
conv2d_161/BiasAddВ
conv2d_161/ReluReluconv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_161/ReluГ
conv2d_transpose_32/ShapeShapeconv2d_161/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_32/ShapeЬ
'conv2d_transpose_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_32/strided_slice/stackа
)conv2d_transpose_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_32/strided_slice/stack_1а
)conv2d_transpose_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_32/strided_slice/stack_2┌
!conv2d_transpose_32/strided_sliceStridedSlice"conv2d_transpose_32/Shape:output:00conv2d_transpose_32/strided_slice/stack:output:02conv2d_transpose_32/strided_slice/stack_1:output:02conv2d_transpose_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_32/strided_slice|
conv2d_transpose_32/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_32/stack/1|
conv2d_transpose_32/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_32/stack/2|
conv2d_transpose_32/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_32/stack/3К
conv2d_transpose_32/stackPack*conv2d_transpose_32/strided_slice:output:0$conv2d_transpose_32/stack/1:output:0$conv2d_transpose_32/stack/2:output:0$conv2d_transpose_32/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_32/stackа
)conv2d_transpose_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_32/strided_slice_1/stackд
+conv2d_transpose_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_32/strided_slice_1/stack_1д
+conv2d_transpose_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_32/strided_slice_1/stack_2ф
#conv2d_transpose_32/strided_slice_1StridedSlice"conv2d_transpose_32/stack:output:02conv2d_transpose_32/strided_slice_1/stack:output:04conv2d_transpose_32/strided_slice_1/stack_1:output:04conv2d_transpose_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_32/strided_slice_1Ё
3conv2d_transpose_32/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_32_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype025
3conv2d_transpose_32/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_32/conv2d_transposeConv2DBackpropInput"conv2d_transpose_32/stack:output:0;conv2d_transpose_32/conv2d_transpose/ReadVariableOp:value:0conv2d_161/Relu:activations:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2&
$conv2d_transpose_32/conv2d_transpose╚
*conv2d_transpose_32/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_32/BiasAdd/ReadVariableOpт
conv2d_transpose_32/BiasAddBiasAdd-conv2d_transpose_32/conv2d_transpose:output:02conv2d_transpose_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_32/BiasAddz
concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_32/concat/axisш
concatenate_32/concatConcatV2$conv2d_transpose_32/BiasAdd:output:0conv2d_159/Relu:activations:0#concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         А2
concatenate_32/concat╖
 conv2d_162/Conv2D/ReadVariableOpReadVariableOp)conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype02"
 conv2d_162/Conv2D/ReadVariableOp▄
conv2d_162/Conv2DConv2Dconcatenate_32/concat:output:0(conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_162/BiasAddБ
conv2d_162/ReluReluconv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_162/Relu╢
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_163/Conv2D/ReadVariableOp█
conv2d_163/Conv2DConv2Dconv2d_162/Relu:activations:0(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
conv2d_163/BiasAddБ
conv2d_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_163/ReluГ
conv2d_transpose_33/ShapeShapeconv2d_163/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_33/ShapeЬ
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stackа
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1а
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2┌
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/2|
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_33/stack/3К
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stackа
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stackд
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1д
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2ф
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1я
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0conv2d_163/Relu:activations:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose╚
*conv2d_transpose_33/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_33_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_33/BiasAdd/ReadVariableOpт
conv2d_transpose_33/BiasAddBiasAdd-conv2d_transpose_33/conv2d_transpose:output:02conv2d_transpose_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_transpose_33/BiasAddz
concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_33/concat/axisч
concatenate_33/concatConcatV2$conv2d_transpose_33/BiasAdd:output:0conv2d_157/Relu:activations:0#concatenate_33/concat/axis:output:0*
N*
T0*/
_output_shapes
:           @2
concatenate_33/concat╢
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02"
 conv2d_164/Conv2D/ReadVariableOp▄
conv2d_164/Conv2DConv2Dconcatenate_33/concat:output:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_164/Conv2Dн
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_164/BiasAdd/ReadVariableOp┤
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_164/BiasAddБ
conv2d_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_164/Relu╢
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_165/Conv2D/ReadVariableOp█
conv2d_165/Conv2DConv2Dconv2d_164/Relu:activations:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
conv2d_165/Conv2Dн
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_165/BiasAdd/ReadVariableOp┤
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_165/BiasAddБ
conv2d_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_165/ReluГ
conv2d_transpose_34/ShapeShapeconv2d_165/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/ShapeЬ
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stackа
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1а
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2┌
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/3К
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stackа
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stackд
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1д
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2ф
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1я
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0conv2d_165/Relu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose╚
*conv2d_transpose_34/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_34/BiasAdd/ReadVariableOpт
conv2d_transpose_34/BiasAddBiasAdd-conv2d_transpose_34/conv2d_transpose:output:02conv2d_transpose_34/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_transpose_34/BiasAddz
concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_34/concat/axisч
concatenate_34/concatConcatV2$conv2d_transpose_34/BiasAdd:output:0conv2d_155/Relu:activations:0#concatenate_34/concat/axis:output:0*
N*
T0*/
_output_shapes
:         @@ 2
concatenate_34/concat╢
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_166/Conv2D/ReadVariableOp▄
conv2d_166/Conv2DConv2Dconcatenate_34/concat:output:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_166/Conv2Dн
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_166/BiasAdd/ReadVariableOp┤
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_166/BiasAddБ
conv2d_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_166/Relu╢
 conv2d_167/Conv2D/ReadVariableOpReadVariableOp)conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_167/Conv2D/ReadVariableOp█
conv2d_167/Conv2DConv2Dconv2d_166/Relu:activations:0(conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
conv2d_167/Conv2Dн
!conv2d_167/BiasAdd/ReadVariableOpReadVariableOp*conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_167/BiasAdd/ReadVariableOp┤
conv2d_167/BiasAddBiasAddconv2d_167/Conv2D:output:0)conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
conv2d_167/BiasAddБ
conv2d_167/ReluReluconv2d_167/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
conv2d_167/ReluГ
conv2d_transpose_35/ShapeShapeconv2d_167/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/ShapeЬ
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stackа
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1а
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2┌
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice}
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_35/stack/1}
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3К
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stackа
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stackд
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1д
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2ф
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1я
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp╟
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0conv2d_167/Relu:activations:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose╚
*conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_35/BiasAdd/ReadVariableOpф
conv2d_transpose_35/BiasAddBiasAdd-conv2d_transpose_35/conv2d_transpose:output:02conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2
conv2d_transpose_35/BiasAddz
concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_35/concat/axisщ
concatenate_35/concatConcatV2$conv2d_transpose_35/BiasAdd:output:0conv2d_153/Relu:activations:0#concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
concatenate_35/concat╢
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_168/Conv2D/ReadVariableOp▐
conv2d_168/Conv2DConv2Dconcatenate_35/concat:output:0(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_168/BiasAddГ
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_168/Relu╢
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_169/Conv2D/ReadVariableOp▌
conv2d_169/Conv2DConv2Dconv2d_168/Relu:activations:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_169/BiasAddГ
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_169/Relu╢
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_170/Conv2D/ReadVariableOp▐
conv2d_170/Conv2DConv2Dconv2d_169/Relu:activations:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
conv2d_170/BiasAddМ
conv2d_170/SigmoidSigmoidconv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
conv2d_170/SigmoidЭ
 cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2"
 cropping2d_8/strided_slice/stackб
"cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2$
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
:         АА*

begin_mask	*
end_mask2
cropping2d_8/strided_sliceп
zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
zero_padding2d_8/Pad/paddings╝
zero_padding2d_8/PadPad#cropping2d_8/strided_slice:output:0&zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
zero_padding2d_8/Pad▐
IdentityIdentityzero_padding2d_8/Pad:output:0%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1"^conv2d_152/BiasAdd/ReadVariableOp!^conv2d_152/Conv2D/ReadVariableOp"^conv2d_153/BiasAdd/ReadVariableOp!^conv2d_153/Conv2D/ReadVariableOp"^conv2d_154/BiasAdd/ReadVariableOp!^conv2d_154/Conv2D/ReadVariableOp"^conv2d_155/BiasAdd/ReadVariableOp!^conv2d_155/Conv2D/ReadVariableOp"^conv2d_156/BiasAdd/ReadVariableOp!^conv2d_156/Conv2D/ReadVariableOp"^conv2d_157/BiasAdd/ReadVariableOp!^conv2d_157/Conv2D/ReadVariableOp"^conv2d_158/BiasAdd/ReadVariableOp!^conv2d_158/Conv2D/ReadVariableOp"^conv2d_159/BiasAdd/ReadVariableOp!^conv2d_159/Conv2D/ReadVariableOp"^conv2d_160/BiasAdd/ReadVariableOp!^conv2d_160/Conv2D/ReadVariableOp"^conv2d_161/BiasAdd/ReadVariableOp!^conv2d_161/Conv2D/ReadVariableOp"^conv2d_162/BiasAdd/ReadVariableOp!^conv2d_162/Conv2D/ReadVariableOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp"^conv2d_167/BiasAdd/ReadVariableOp!^conv2d_167/Conv2D/ReadVariableOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp+^conv2d_transpose_32/BiasAdd/ReadVariableOp4^conv2d_transpose_32/conv2d_transpose/ReadVariableOp+^conv2d_transpose_33/BiasAdd/ReadVariableOp4^conv2d_transpose_33/conv2d_transpose/ReadVariableOp+^conv2d_transpose_34/BiasAdd/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp+^conv2d_transpose_35/BiasAdd/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2L
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
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2X
*conv2d_transpose_32/BiasAdd/ReadVariableOp*conv2d_transpose_32/BiasAdd/ReadVariableOp2j
3conv2d_transpose_32/conv2d_transpose/ReadVariableOp3conv2d_transpose_32/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_33/BiasAdd/ReadVariableOp*conv2d_transpose_33/BiasAdd/ReadVariableOp2j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_34/BiasAdd/ReadVariableOp*conv2d_transpose_34/BiasAdd/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_35/BiasAdd/ReadVariableOp*conv2d_transpose_35/BiasAdd/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Б

*__inference_conv2d_167_layer_call_fn_95836

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
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_937512
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_92929

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
╒

▐
E__inference_conv2d_160_layer_call_and_return_conditional_losses_93499

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
:         А*
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
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
М
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93214

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
9:         АА:::::*
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
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
▄
И
3__inference_conv2d_transpose_35_layer_call_fn_93135

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_931252
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Б

*__inference_conv2d_156_layer_call_fn_95577

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
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_933892
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_92869

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
А
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95451

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
9:         АА:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ь#
√
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_93037

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAdd╣
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╛

j
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95335

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
:         АА*
dtype0*
seed▒ х)*
seed2УеФ2$
"random_normal/RandomStandardNormal╡
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2
random_normal/mulХ
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2
random_normalj
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:         АА2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_168_layer_call_fn_95869

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_937992
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Г

*__inference_conv2d_162_layer_call_fn_95710

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
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_935742
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
u
I__inference_concatenate_32_layer_call_and_return_conditional_losses_95684
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
:         А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           @:         @:k g
A
_output_shapes/
-:+                           @
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         @
"
_user_specified_name
inputs/1
░
L
0__inference_max_pooling2d_34_layer_call_fn_92947

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
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_929412
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
▄
Ў
'__inference_model_8_layer_call_fn_94256
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

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identityИвStatefulPartitionedCallЧ
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_941532
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
Б
g
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_92953

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
Б

*__inference_conv2d_163_layer_call_fn_95730

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
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_936012
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
█

▐
E__inference_conv2d_168_layer_call_and_return_conditional_losses_95860

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ь#
√
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_93125

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAdd╣
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_156_layer_call_and_return_conditional_losses_95568

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Б

*__inference_conv2d_166_layer_call_fn_95816

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
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_937242
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
М
s
I__inference_concatenate_32_layer_call_and_return_conditional_losses_93554

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
:         А2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           @:         @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:WS
/
_output_shapes
:         @
 
_user_specified_nameinputs
К
s
I__inference_concatenate_33_layer_call_and_return_conditional_losses_93629

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЗ
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:           @2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                            :            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:WS
/
_output_shapes
:            
 
_user_specified_nameinputs
Ю
и
5__inference_batch_normalization_8_layer_call_fn_95400

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
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_928692
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
╧

▐
E__inference_conv2d_157_layer_call_and_return_conditional_losses_95588

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Г

*__inference_conv2d_160_layer_call_fn_95657

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
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_934992
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╪

▐
E__inference_conv2d_161_layer_call_and_return_conditional_losses_93526

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
:         А*
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
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Е

*__inference_conv2d_161_layer_call_fn_95677

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
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_935262
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╕
Є
#__inference_signature_wrapper_94615
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

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identityИвStatefulPartitionedCallў
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_928072
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
╦
L
0__inference_gaussian_noise_8_layer_call_fn_95349

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
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931822
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
а
и
5__inference_batch_normalization_8_layer_call_fn_95413

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
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_929002
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
╫
i
0__inference_gaussian_noise_8_layer_call_fn_95344

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
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931782
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_154_layer_call_and_return_conditional_losses_93334

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_159_layer_call_and_return_conditional_losses_93471

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_166_layer_call_and_return_conditional_losses_93724

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_33_layer_call_fn_92935

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
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_929292
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
я#
√
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_92993

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3┤
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAdd╣
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,                           А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
▐
И
3__inference_conv2d_transpose_32_layer_call_fn_93003

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_929932
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,                           А::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Т
u
I__inference_concatenate_33_layer_call_and_return_conditional_losses_95737
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЙ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:           @2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                            :            :k g
A
_output_shapes/
-:+                            
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:            
"
_user_specified_name
inputs/1
°
Z
.__inference_concatenate_33_layer_call_fn_95743
inputs_0
inputs_1
identity▀
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_936292
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                            :            :k g
A
_output_shapes/
-:+                            
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:            
"
_user_specified_name
inputs/1
░
L
0__inference_zero_padding2d_8_layer_call_fn_93163

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
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_931572
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
Б
g
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_92941

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
█

▐
E__inference_conv2d_152_layer_call_and_return_conditional_losses_95488

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
:         АА*
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
:         АА2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_35_layer_call_fn_92959

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
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_929532
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
╧

▐
E__inference_conv2d_155_layer_call_and_return_conditional_losses_95548

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_92900

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
╧

▐
E__inference_conv2d_159_layer_call_and_return_conditional_losses_95628

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95387

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
▄
И
3__inference_conv2d_transpose_34_layer_call_fn_93091

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_930812
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
√
g
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_93182

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_164_layer_call_and_return_conditional_losses_93649

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:           @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
╒
є
'__inference_model_8_layer_call_fn_95324

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

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identityИвStatefulPartitionedCallЦ
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_943972
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_167_layer_call_and_return_conditional_losses_95827

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
д▒
╓D
__inference__traced_save_96409
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
*savev2_conv2d_161_bias_read_readvariableop9
5savev2_conv2d_transpose_32_kernel_read_readvariableop7
3savev2_conv2d_transpose_32_bias_read_readvariableop0
,savev2_conv2d_162_kernel_read_readvariableop.
*savev2_conv2d_162_bias_read_readvariableop0
,savev2_conv2d_163_kernel_read_readvariableop.
*savev2_conv2d_163_bias_read_readvariableop9
5savev2_conv2d_transpose_33_kernel_read_readvariableop7
3savev2_conv2d_transpose_33_bias_read_readvariableop0
,savev2_conv2d_164_kernel_read_readvariableop.
*savev2_conv2d_164_bias_read_readvariableop0
,savev2_conv2d_165_kernel_read_readvariableop.
*savev2_conv2d_165_bias_read_readvariableop9
5savev2_conv2d_transpose_34_kernel_read_readvariableop7
3savev2_conv2d_transpose_34_bias_read_readvariableop0
,savev2_conv2d_166_kernel_read_readvariableop.
*savev2_conv2d_166_bias_read_readvariableop0
,savev2_conv2d_167_kernel_read_readvariableop.
*savev2_conv2d_167_bias_read_readvariableop9
5savev2_conv2d_transpose_35_kernel_read_readvariableop7
3savev2_conv2d_transpose_35_bias_read_readvariableop0
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
1savev2_adam_conv2d_161_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_32_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_32_bias_m_read_readvariableop7
3savev2_adam_conv2d_162_kernel_m_read_readvariableop5
1savev2_adam_conv2d_162_bias_m_read_readvariableop7
3savev2_adam_conv2d_163_kernel_m_read_readvariableop5
1savev2_adam_conv2d_163_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_33_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_33_bias_m_read_readvariableop7
3savev2_adam_conv2d_164_kernel_m_read_readvariableop5
1savev2_adam_conv2d_164_bias_m_read_readvariableop7
3savev2_adam_conv2d_165_kernel_m_read_readvariableop5
1savev2_adam_conv2d_165_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_34_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_34_bias_m_read_readvariableop7
3savev2_adam_conv2d_166_kernel_m_read_readvariableop5
1savev2_adam_conv2d_166_bias_m_read_readvariableop7
3savev2_adam_conv2d_167_kernel_m_read_readvariableop5
1savev2_adam_conv2d_167_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_35_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_35_bias_m_read_readvariableop7
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
1savev2_adam_conv2d_161_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_32_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_32_bias_v_read_readvariableop7
3savev2_adam_conv2d_162_kernel_v_read_readvariableop5
1savev2_adam_conv2d_162_bias_v_read_readvariableop7
3savev2_adam_conv2d_163_kernel_v_read_readvariableop5
1savev2_adam_conv2d_163_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_33_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_33_bias_v_read_readvariableop7
3savev2_adam_conv2d_164_kernel_v_read_readvariableop5
1savev2_adam_conv2d_164_bias_v_read_readvariableop7
3savev2_adam_conv2d_165_kernel_v_read_readvariableop5
1savev2_adam_conv2d_165_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_34_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_34_bias_v_read_readvariableop7
3savev2_adam_conv2d_166_kernel_v_read_readvariableop5
1savev2_adam_conv2d_166_bias_v_read_readvariableop7
3savev2_adam_conv2d_167_kernel_v_read_readvariableop5
1savev2_adam_conv2d_167_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_35_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_35_bias_v_read_readvariableop7
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
ShardedFilenameўZ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:а*
dtype0*ИZ
value■YB√YаB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names═
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:а*
dtype0*╓
value╠B╔аB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╠A
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop,savev2_conv2d_152_kernel_read_readvariableop*savev2_conv2d_152_bias_read_readvariableop,savev2_conv2d_153_kernel_read_readvariableop*savev2_conv2d_153_bias_read_readvariableop,savev2_conv2d_154_kernel_read_readvariableop*savev2_conv2d_154_bias_read_readvariableop,savev2_conv2d_155_kernel_read_readvariableop*savev2_conv2d_155_bias_read_readvariableop,savev2_conv2d_156_kernel_read_readvariableop*savev2_conv2d_156_bias_read_readvariableop,savev2_conv2d_157_kernel_read_readvariableop*savev2_conv2d_157_bias_read_readvariableop,savev2_conv2d_158_kernel_read_readvariableop*savev2_conv2d_158_bias_read_readvariableop,savev2_conv2d_159_kernel_read_readvariableop*savev2_conv2d_159_bias_read_readvariableop,savev2_conv2d_160_kernel_read_readvariableop*savev2_conv2d_160_bias_read_readvariableop,savev2_conv2d_161_kernel_read_readvariableop*savev2_conv2d_161_bias_read_readvariableop5savev2_conv2d_transpose_32_kernel_read_readvariableop3savev2_conv2d_transpose_32_bias_read_readvariableop,savev2_conv2d_162_kernel_read_readvariableop*savev2_conv2d_162_bias_read_readvariableop,savev2_conv2d_163_kernel_read_readvariableop*savev2_conv2d_163_bias_read_readvariableop5savev2_conv2d_transpose_33_kernel_read_readvariableop3savev2_conv2d_transpose_33_bias_read_readvariableop,savev2_conv2d_164_kernel_read_readvariableop*savev2_conv2d_164_bias_read_readvariableop,savev2_conv2d_165_kernel_read_readvariableop*savev2_conv2d_165_bias_read_readvariableop5savev2_conv2d_transpose_34_kernel_read_readvariableop3savev2_conv2d_transpose_34_bias_read_readvariableop,savev2_conv2d_166_kernel_read_readvariableop*savev2_conv2d_166_bias_read_readvariableop,savev2_conv2d_167_kernel_read_readvariableop*savev2_conv2d_167_bias_read_readvariableop5savev2_conv2d_transpose_35_kernel_read_readvariableop3savev2_conv2d_transpose_35_bias_read_readvariableop,savev2_conv2d_168_kernel_read_readvariableop*savev2_conv2d_168_bias_read_readvariableop,savev2_conv2d_169_kernel_read_readvariableop*savev2_conv2d_169_bias_read_readvariableop,savev2_conv2d_170_kernel_read_readvariableop*savev2_conv2d_170_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop3savev2_adam_conv2d_152_kernel_m_read_readvariableop1savev2_adam_conv2d_152_bias_m_read_readvariableop3savev2_adam_conv2d_153_kernel_m_read_readvariableop1savev2_adam_conv2d_153_bias_m_read_readvariableop3savev2_adam_conv2d_154_kernel_m_read_readvariableop1savev2_adam_conv2d_154_bias_m_read_readvariableop3savev2_adam_conv2d_155_kernel_m_read_readvariableop1savev2_adam_conv2d_155_bias_m_read_readvariableop3savev2_adam_conv2d_156_kernel_m_read_readvariableop1savev2_adam_conv2d_156_bias_m_read_readvariableop3savev2_adam_conv2d_157_kernel_m_read_readvariableop1savev2_adam_conv2d_157_bias_m_read_readvariableop3savev2_adam_conv2d_158_kernel_m_read_readvariableop1savev2_adam_conv2d_158_bias_m_read_readvariableop3savev2_adam_conv2d_159_kernel_m_read_readvariableop1savev2_adam_conv2d_159_bias_m_read_readvariableop3savev2_adam_conv2d_160_kernel_m_read_readvariableop1savev2_adam_conv2d_160_bias_m_read_readvariableop3savev2_adam_conv2d_161_kernel_m_read_readvariableop1savev2_adam_conv2d_161_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_32_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_32_bias_m_read_readvariableop3savev2_adam_conv2d_162_kernel_m_read_readvariableop1savev2_adam_conv2d_162_bias_m_read_readvariableop3savev2_adam_conv2d_163_kernel_m_read_readvariableop1savev2_adam_conv2d_163_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_33_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_33_bias_m_read_readvariableop3savev2_adam_conv2d_164_kernel_m_read_readvariableop1savev2_adam_conv2d_164_bias_m_read_readvariableop3savev2_adam_conv2d_165_kernel_m_read_readvariableop1savev2_adam_conv2d_165_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_34_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_34_bias_m_read_readvariableop3savev2_adam_conv2d_166_kernel_m_read_readvariableop1savev2_adam_conv2d_166_bias_m_read_readvariableop3savev2_adam_conv2d_167_kernel_m_read_readvariableop1savev2_adam_conv2d_167_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_35_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_35_bias_m_read_readvariableop3savev2_adam_conv2d_168_kernel_m_read_readvariableop1savev2_adam_conv2d_168_bias_m_read_readvariableop3savev2_adam_conv2d_169_kernel_m_read_readvariableop1savev2_adam_conv2d_169_bias_m_read_readvariableop3savev2_adam_conv2d_170_kernel_m_read_readvariableop1savev2_adam_conv2d_170_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop3savev2_adam_conv2d_152_kernel_v_read_readvariableop1savev2_adam_conv2d_152_bias_v_read_readvariableop3savev2_adam_conv2d_153_kernel_v_read_readvariableop1savev2_adam_conv2d_153_bias_v_read_readvariableop3savev2_adam_conv2d_154_kernel_v_read_readvariableop1savev2_adam_conv2d_154_bias_v_read_readvariableop3savev2_adam_conv2d_155_kernel_v_read_readvariableop1savev2_adam_conv2d_155_bias_v_read_readvariableop3savev2_adam_conv2d_156_kernel_v_read_readvariableop1savev2_adam_conv2d_156_bias_v_read_readvariableop3savev2_adam_conv2d_157_kernel_v_read_readvariableop1savev2_adam_conv2d_157_bias_v_read_readvariableop3savev2_adam_conv2d_158_kernel_v_read_readvariableop1savev2_adam_conv2d_158_bias_v_read_readvariableop3savev2_adam_conv2d_159_kernel_v_read_readvariableop1savev2_adam_conv2d_159_bias_v_read_readvariableop3savev2_adam_conv2d_160_kernel_v_read_readvariableop1savev2_adam_conv2d_160_bias_v_read_readvariableop3savev2_adam_conv2d_161_kernel_v_read_readvariableop1savev2_adam_conv2d_161_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_32_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_32_bias_v_read_readvariableop3savev2_adam_conv2d_162_kernel_v_read_readvariableop1savev2_adam_conv2d_162_bias_v_read_readvariableop3savev2_adam_conv2d_163_kernel_v_read_readvariableop1savev2_adam_conv2d_163_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_33_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_33_bias_v_read_readvariableop3savev2_adam_conv2d_164_kernel_v_read_readvariableop1savev2_adam_conv2d_164_bias_v_read_readvariableop3savev2_adam_conv2d_165_kernel_v_read_readvariableop1savev2_adam_conv2d_165_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_34_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_34_bias_v_read_readvariableop3savev2_adam_conv2d_166_kernel_v_read_readvariableop1savev2_adam_conv2d_166_bias_v_read_readvariableop3savev2_adam_conv2d_167_kernel_v_read_readvariableop1savev2_adam_conv2d_167_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_35_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_35_bias_v_read_readvariableop3savev2_adam_conv2d_168_kernel_v_read_readvariableop1savev2_adam_conv2d_168_bias_v_read_readvariableop3savev2_adam_conv2d_169_kernel_v_read_readvariableop1savev2_adam_conv2d_169_bias_v_read_readvariableop3savev2_adam_conv2d_170_kernel_v_read_readvariableop1savev2_adam_conv2d_170_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *▒
dtypesж
г2а	2
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

identity_1Identity_1:output:0*Ё
_input_shapes▐
█: ::::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:@А:@:А@:@:@@:@: @: :@ : :  : : :: :::::::::::: : : : : : : : : : : : : ::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:@А:@:А@:@:@@:@: @: :@ : :  : : :: :::::::::::::::::::::: : :  : : @:@:@@:@:@А:А:АА:А:@А:@:А@:@:@@:@: @: :@ : :  : : :: :::::::::::: 2(
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
:@А: 

_output_shapes
:@:-)
'
_output_shapes
:А@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @:  

_output_shapes
: :,!(
&
_output_shapes
:@ : "

_output_shapes
: :,#(
&
_output_shapes
:  : $

_output_shapes
: :,%(
&
_output_shapes
: : &

_output_shapes
::,'(
&
_output_shapes
: : (

_output_shapes
::,)(
&
_output_shapes
:: *

_output_shapes
::,+(
&
_output_shapes
:: ,

_output_shapes
::,-(
&
_output_shapes
:: .

_output_shapes
::,/(
&
_output_shapes
:: 0

_output_shapes
::,1(
&
_output_shapes
:: 2

_output_shapes
::3
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
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: : @

_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
:  : M

_output_shapes
: :,N(
&
_output_shapes
: @: O

_output_shapes
:@:,P(
&
_output_shapes
:@@: Q

_output_shapes
:@:-R)
'
_output_shapes
:@А:!S

_output_shapes	
:А:.T*
(
_output_shapes
:АА:!U

_output_shapes	
:А:-V)
'
_output_shapes
:@А: W

_output_shapes
:@:-X)
'
_output_shapes
:А@: Y

_output_shapes
:@:,Z(
&
_output_shapes
:@@: [

_output_shapes
:@:,\(
&
_output_shapes
: @: ]

_output_shapes
: :,^(
&
_output_shapes
:@ : _

_output_shapes
: :,`(
&
_output_shapes
:  : a

_output_shapes
: :,b(
&
_output_shapes
: : c

_output_shapes
::,d(
&
_output_shapes
: : e

_output_shapes
::,f(
&
_output_shapes
:: g

_output_shapes
::,h(
&
_output_shapes
:: i

_output_shapes
::,j(
&
_output_shapes
:: k

_output_shapes
::,l(
&
_output_shapes
:: m

_output_shapes
::,n(
&
_output_shapes
:: o

_output_shapes
:: p

_output_shapes
:: q

_output_shapes
::,r(
&
_output_shapes
:: s

_output_shapes
::,t(
&
_output_shapes
:: u

_output_shapes
::,v(
&
_output_shapes
:: w

_output_shapes
::,x(
&
_output_shapes
:: y

_output_shapes
::,z(
&
_output_shapes
: : {
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
: @: 

_output_shapes
:@:-А(
&
_output_shapes
:@@:!Б

_output_shapes
:@:.В)
'
_output_shapes
:@А:"Г

_output_shapes	
:А:/Д*
(
_output_shapes
:АА:"Е

_output_shapes	
:А:.Ж)
'
_output_shapes
:@А:!З

_output_shapes
:@:.И)
'
_output_shapes
:А@:!Й

_output_shapes
:@:-К(
&
_output_shapes
:@@:!Л

_output_shapes
:@:-М(
&
_output_shapes
: @:!Н

_output_shapes
: :-О(
&
_output_shapes
:@ :!П

_output_shapes
: :-Р(
&
_output_shapes
:  :!С

_output_shapes
: :-Т(
&
_output_shapes
: :!У

_output_shapes
::-Ф(
&
_output_shapes
: :!Х

_output_shapes
::-Ц(
&
_output_shapes
::!Ч

_output_shapes
::-Ш(
&
_output_shapes
::!Щ

_output_shapes
::-Ъ(
&
_output_shapes
::!Ы

_output_shapes
::-Ь(
&
_output_shapes
::!Э

_output_shapes
::-Ю(
&
_output_shapes
::!Я

_output_shapes
::а

_output_shapes
: 
Жг
р)
 __inference__wrapped_model_92807
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
2model_8_conv2d_161_biasadd_readvariableop_resourceH
Dmodel_8_conv2d_transpose_32_conv2d_transpose_readvariableop_resource?
;model_8_conv2d_transpose_32_biasadd_readvariableop_resource5
1model_8_conv2d_162_conv2d_readvariableop_resource6
2model_8_conv2d_162_biasadd_readvariableop_resource5
1model_8_conv2d_163_conv2d_readvariableop_resource6
2model_8_conv2d_163_biasadd_readvariableop_resourceH
Dmodel_8_conv2d_transpose_33_conv2d_transpose_readvariableop_resource?
;model_8_conv2d_transpose_33_biasadd_readvariableop_resource5
1model_8_conv2d_164_conv2d_readvariableop_resource6
2model_8_conv2d_164_biasadd_readvariableop_resource5
1model_8_conv2d_165_conv2d_readvariableop_resource6
2model_8_conv2d_165_biasadd_readvariableop_resourceH
Dmodel_8_conv2d_transpose_34_conv2d_transpose_readvariableop_resource?
;model_8_conv2d_transpose_34_biasadd_readvariableop_resource5
1model_8_conv2d_166_conv2d_readvariableop_resource6
2model_8_conv2d_166_biasadd_readvariableop_resource5
1model_8_conv2d_167_conv2d_readvariableop_resource6
2model_8_conv2d_167_biasadd_readvariableop_resourceH
Dmodel_8_conv2d_transpose_35_conv2d_transpose_readvariableop_resource?
;model_8_conv2d_transpose_35_biasadd_readvariableop_resource5
1model_8_conv2d_168_conv2d_readvariableop_resource6
2model_8_conv2d_168_biasadd_readvariableop_resource5
1model_8_conv2d_169_conv2d_readvariableop_resource6
2model_8_conv2d_169_biasadd_readvariableop_resource5
1model_8_conv2d_170_conv2d_readvariableop_resource6
2model_8_conv2d_170_biasadd_readvariableop_resource
identityИв=model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpв?model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в,model_8/batch_normalization_8/ReadVariableOpв.model_8/batch_normalization_8/ReadVariableOp_1в)model_8/conv2d_152/BiasAdd/ReadVariableOpв(model_8/conv2d_152/Conv2D/ReadVariableOpв)model_8/conv2d_153/BiasAdd/ReadVariableOpв(model_8/conv2d_153/Conv2D/ReadVariableOpв)model_8/conv2d_154/BiasAdd/ReadVariableOpв(model_8/conv2d_154/Conv2D/ReadVariableOpв)model_8/conv2d_155/BiasAdd/ReadVariableOpв(model_8/conv2d_155/Conv2D/ReadVariableOpв)model_8/conv2d_156/BiasAdd/ReadVariableOpв(model_8/conv2d_156/Conv2D/ReadVariableOpв)model_8/conv2d_157/BiasAdd/ReadVariableOpв(model_8/conv2d_157/Conv2D/ReadVariableOpв)model_8/conv2d_158/BiasAdd/ReadVariableOpв(model_8/conv2d_158/Conv2D/ReadVariableOpв)model_8/conv2d_159/BiasAdd/ReadVariableOpв(model_8/conv2d_159/Conv2D/ReadVariableOpв)model_8/conv2d_160/BiasAdd/ReadVariableOpв(model_8/conv2d_160/Conv2D/ReadVariableOpв)model_8/conv2d_161/BiasAdd/ReadVariableOpв(model_8/conv2d_161/Conv2D/ReadVariableOpв)model_8/conv2d_162/BiasAdd/ReadVariableOpв(model_8/conv2d_162/Conv2D/ReadVariableOpв)model_8/conv2d_163/BiasAdd/ReadVariableOpв(model_8/conv2d_163/Conv2D/ReadVariableOpв)model_8/conv2d_164/BiasAdd/ReadVariableOpв(model_8/conv2d_164/Conv2D/ReadVariableOpв)model_8/conv2d_165/BiasAdd/ReadVariableOpв(model_8/conv2d_165/Conv2D/ReadVariableOpв)model_8/conv2d_166/BiasAdd/ReadVariableOpв(model_8/conv2d_166/Conv2D/ReadVariableOpв)model_8/conv2d_167/BiasAdd/ReadVariableOpв(model_8/conv2d_167/Conv2D/ReadVariableOpв)model_8/conv2d_168/BiasAdd/ReadVariableOpв(model_8/conv2d_168/Conv2D/ReadVariableOpв)model_8/conv2d_169/BiasAdd/ReadVariableOpв(model_8/conv2d_169/Conv2D/ReadVariableOpв)model_8/conv2d_170/BiasAdd/ReadVariableOpв(model_8/conv2d_170/Conv2D/ReadVariableOpв2model_8/conv2d_transpose_32/BiasAdd/ReadVariableOpв;model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOpв2model_8/conv2d_transpose_33/BiasAdd/ReadVariableOpв;model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOpв2model_8/conv2d_transpose_34/BiasAdd/ReadVariableOpв;model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOpв2model_8/conv2d_transpose_35/BiasAdd/ReadVariableOpв;model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOp╬
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
9:         АА:::::*
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
:         АА*
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
:         АА2
model_8/conv2d_152/BiasAddЫ
model_8/conv2d_152/ReluRelu#model_8/conv2d_152/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_152/Relu╬
(model_8/conv2d_153/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_153_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_153/Conv2D/ReadVariableOp¤
model_8/conv2d_153/Conv2DConv2D%model_8/conv2d_152/Relu:activations:00model_8/conv2d_153/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
model_8/conv2d_153/BiasAddЫ
model_8/conv2d_153/ReluRelu#model_8/conv2d_153/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_153/Reluу
 model_8/max_pooling2d_32/MaxPoolMaxPool%model_8/conv2d_153/Relu:activations:0*/
_output_shapes
:         @@*
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
(model_8/conv2d_154/Conv2D/ReadVariableOp 
model_8/conv2d_154/Conv2DConv2D)model_8/max_pooling2d_32/MaxPool:output:00model_8/conv2d_154/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
model_8/conv2d_154/Conv2D┼
)model_8/conv2d_154/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_154/BiasAdd/ReadVariableOp╘
model_8/conv2d_154/BiasAddBiasAdd"model_8/conv2d_154/Conv2D:output:01model_8/conv2d_154/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_154/BiasAddЩ
model_8/conv2d_154/ReluRelu#model_8/conv2d_154/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_154/Relu╬
(model_8/conv2d_155/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_155_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_155/Conv2D/ReadVariableOp√
model_8/conv2d_155/Conv2DConv2D%model_8/conv2d_154/Relu:activations:00model_8/conv2d_155/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
model_8/conv2d_155/Conv2D┼
)model_8/conv2d_155/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_155/BiasAdd/ReadVariableOp╘
model_8/conv2d_155/BiasAddBiasAdd"model_8/conv2d_155/Conv2D:output:01model_8/conv2d_155/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_155/BiasAddЩ
model_8/conv2d_155/ReluRelu#model_8/conv2d_155/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_155/Reluу
 model_8/max_pooling2d_33/MaxPoolMaxPool%model_8/conv2d_155/Relu:activations:0*/
_output_shapes
:           *
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
(model_8/conv2d_156/Conv2D/ReadVariableOp 
model_8/conv2d_156/Conv2DConv2D)model_8/max_pooling2d_33/MaxPool:output:00model_8/conv2d_156/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
model_8/conv2d_156/Conv2D┼
)model_8/conv2d_156/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_156_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_156/BiasAdd/ReadVariableOp╘
model_8/conv2d_156/BiasAddBiasAdd"model_8/conv2d_156/Conv2D:output:01model_8/conv2d_156/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
model_8/conv2d_156/BiasAddЩ
model_8/conv2d_156/ReluRelu#model_8/conv2d_156/BiasAdd:output:0*
T0*/
_output_shapes
:            2
model_8/conv2d_156/Relu╬
(model_8/conv2d_157/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_157_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02*
(model_8/conv2d_157/Conv2D/ReadVariableOp√
model_8/conv2d_157/Conv2DConv2D%model_8/conv2d_156/Relu:activations:00model_8/conv2d_157/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
model_8/conv2d_157/Conv2D┼
)model_8/conv2d_157/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_157_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_157/BiasAdd/ReadVariableOp╘
model_8/conv2d_157/BiasAddBiasAdd"model_8/conv2d_157/Conv2D:output:01model_8/conv2d_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
model_8/conv2d_157/BiasAddЩ
model_8/conv2d_157/ReluRelu#model_8/conv2d_157/BiasAdd:output:0*
T0*/
_output_shapes
:            2
model_8/conv2d_157/Reluу
 model_8/max_pooling2d_34/MaxPoolMaxPool%model_8/conv2d_157/Relu:activations:0*/
_output_shapes
:          *
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
:         @*
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
:         @2
model_8/conv2d_158/BiasAddЩ
model_8/conv2d_158/ReluRelu#model_8/conv2d_158/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
model_8/conv2d_158/Relu╬
(model_8/conv2d_159/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_159_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(model_8/conv2d_159/Conv2D/ReadVariableOp√
model_8/conv2d_159/Conv2DConv2D%model_8/conv2d_158/Relu:activations:00model_8/conv2d_159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
model_8/conv2d_159/BiasAddЩ
model_8/conv2d_159/ReluRelu#model_8/conv2d_159/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
model_8/conv2d_159/Reluу
 model_8/max_pooling2d_35/MaxPoolMaxPool%model_8/conv2d_159/Relu:activations:0*/
_output_shapes
:         @*
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
:         А*
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
:         А2
model_8/conv2d_160/BiasAddЪ
model_8/conv2d_160/ReluRelu#model_8/conv2d_160/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_8/conv2d_160/Relu╨
(model_8/conv2d_161/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_161_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(model_8/conv2d_161/Conv2D/ReadVariableOp№
model_8/conv2d_161/Conv2DConv2D%model_8/conv2d_160/Relu:activations:00model_8/conv2d_161/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
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
:         А2
model_8/conv2d_161/BiasAddЪ
model_8/conv2d_161/ReluRelu#model_8/conv2d_161/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_8/conv2d_161/ReluЫ
!model_8/conv2d_transpose_32/ShapeShape%model_8/conv2d_161/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_32/Shapeм
/model_8/conv2d_transpose_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_32/strided_slice/stack░
1model_8/conv2d_transpose_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_32/strided_slice/stack_1░
1model_8/conv2d_transpose_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_32/strided_slice/stack_2К
)model_8/conv2d_transpose_32/strided_sliceStridedSlice*model_8/conv2d_transpose_32/Shape:output:08model_8/conv2d_transpose_32/strided_slice/stack:output:0:model_8/conv2d_transpose_32/strided_slice/stack_1:output:0:model_8/conv2d_transpose_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_32/strided_sliceМ
#model_8/conv2d_transpose_32/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_32/stack/1М
#model_8/conv2d_transpose_32/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_32/stack/2М
#model_8/conv2d_transpose_32/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_8/conv2d_transpose_32/stack/3║
!model_8/conv2d_transpose_32/stackPack2model_8/conv2d_transpose_32/strided_slice:output:0,model_8/conv2d_transpose_32/stack/1:output:0,model_8/conv2d_transpose_32/stack/2:output:0,model_8/conv2d_transpose_32/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_32/stack░
1model_8/conv2d_transpose_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_32/strided_slice_1/stack┤
3model_8/conv2d_transpose_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_32/strided_slice_1/stack_1┤
3model_8/conv2d_transpose_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_32/strided_slice_1/stack_2Ф
+model_8/conv2d_transpose_32/strided_slice_1StridedSlice*model_8/conv2d_transpose_32/stack:output:0:model_8/conv2d_transpose_32/strided_slice_1/stack:output:0<model_8/conv2d_transpose_32/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_32/strided_slice_1И
;model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_32_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02=
;model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOpэ
,model_8/conv2d_transpose_32/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_32/stack:output:0Cmodel_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOp:value:0%model_8/conv2d_161/Relu:activations:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_32/conv2d_transposeр
2model_8/conv2d_transpose_32/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2model_8/conv2d_transpose_32/BiasAdd/ReadVariableOpВ
#model_8/conv2d_transpose_32/BiasAddBiasAdd5model_8/conv2d_transpose_32/conv2d_transpose:output:0:model_8/conv2d_transpose_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2%
#model_8/conv2d_transpose_32/BiasAddК
"model_8/concatenate_32/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_32/concat/axisР
model_8/concatenate_32/concatConcatV2,model_8/conv2d_transpose_32/BiasAdd:output:0%model_8/conv2d_159/Relu:activations:0+model_8/concatenate_32/concat/axis:output:0*
N*
T0*0
_output_shapes
:         А2
model_8/concatenate_32/concat╧
(model_8/conv2d_162/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_162_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype02*
(model_8/conv2d_162/Conv2D/ReadVariableOp№
model_8/conv2d_162/Conv2DConv2D&model_8/concatenate_32/concat:output:00model_8/conv2d_162/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
model_8/conv2d_162/BiasAddЩ
model_8/conv2d_162/ReluRelu#model_8/conv2d_162/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
model_8/conv2d_162/Relu╬
(model_8/conv2d_163/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(model_8/conv2d_163/Conv2D/ReadVariableOp√
model_8/conv2d_163/Conv2DConv2D%model_8/conv2d_162/Relu:activations:00model_8/conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2
model_8/conv2d_163/BiasAddЩ
model_8/conv2d_163/ReluRelu#model_8/conv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
model_8/conv2d_163/ReluЫ
!model_8/conv2d_transpose_33/ShapeShape%model_8/conv2d_163/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_33/Shapeм
/model_8/conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_33/strided_slice/stack░
1model_8/conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_33/strided_slice/stack_1░
1model_8/conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_33/strided_slice/stack_2К
)model_8/conv2d_transpose_33/strided_sliceStridedSlice*model_8/conv2d_transpose_33/Shape:output:08model_8/conv2d_transpose_33/strided_slice/stack:output:0:model_8/conv2d_transpose_33/strided_slice/stack_1:output:0:model_8/conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_33/strided_sliceМ
#model_8/conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_8/conv2d_transpose_33/stack/1М
#model_8/conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_8/conv2d_transpose_33/stack/2М
#model_8/conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_8/conv2d_transpose_33/stack/3║
!model_8/conv2d_transpose_33/stackPack2model_8/conv2d_transpose_33/strided_slice:output:0,model_8/conv2d_transpose_33/stack/1:output:0,model_8/conv2d_transpose_33/stack/2:output:0,model_8/conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_33/stack░
1model_8/conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_33/strided_slice_1/stack┤
3model_8/conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_33/strided_slice_1/stack_1┤
3model_8/conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_33/strided_slice_1/stack_2Ф
+model_8/conv2d_transpose_33/strided_slice_1StridedSlice*model_8/conv2d_transpose_33/stack:output:0:model_8/conv2d_transpose_33/strided_slice_1/stack:output:0<model_8/conv2d_transpose_33/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_33/strided_slice_1З
;model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_33_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02=
;model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOpэ
,model_8/conv2d_transpose_33/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_33/stack:output:0Cmodel_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0%model_8/conv2d_163/Relu:activations:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2.
,model_8/conv2d_transpose_33/conv2d_transposeр
2model_8/conv2d_transpose_33/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_33_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2model_8/conv2d_transpose_33/BiasAdd/ReadVariableOpВ
#model_8/conv2d_transpose_33/BiasAddBiasAdd5model_8/conv2d_transpose_33/conv2d_transpose:output:0:model_8/conv2d_transpose_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2%
#model_8/conv2d_transpose_33/BiasAddК
"model_8/concatenate_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_33/concat/axisП
model_8/concatenate_33/concatConcatV2,model_8/conv2d_transpose_33/BiasAdd:output:0%model_8/conv2d_157/Relu:activations:0+model_8/concatenate_33/concat/axis:output:0*
N*
T0*/
_output_shapes
:           @2
model_8/concatenate_33/concat╬
(model_8/conv2d_164/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02*
(model_8/conv2d_164/Conv2D/ReadVariableOp№
model_8/conv2d_164/Conv2DConv2D&model_8/concatenate_33/concat:output:00model_8/conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
model_8/conv2d_164/Conv2D┼
)model_8/conv2d_164/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_164/BiasAdd/ReadVariableOp╘
model_8/conv2d_164/BiasAddBiasAdd"model_8/conv2d_164/Conv2D:output:01model_8/conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
model_8/conv2d_164/BiasAddЩ
model_8/conv2d_164/ReluRelu#model_8/conv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:            2
model_8/conv2d_164/Relu╬
(model_8/conv2d_165/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02*
(model_8/conv2d_165/Conv2D/ReadVariableOp√
model_8/conv2d_165/Conv2DConv2D%model_8/conv2d_164/Relu:activations:00model_8/conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2
model_8/conv2d_165/Conv2D┼
)model_8/conv2d_165/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_165_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_8/conv2d_165/BiasAdd/ReadVariableOp╘
model_8/conv2d_165/BiasAddBiasAdd"model_8/conv2d_165/Conv2D:output:01model_8/conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
model_8/conv2d_165/BiasAddЩ
model_8/conv2d_165/ReluRelu#model_8/conv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:            2
model_8/conv2d_165/ReluЫ
!model_8/conv2d_transpose_34/ShapeShape%model_8/conv2d_165/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_34/Shapeм
/model_8/conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_34/strided_slice/stack░
1model_8/conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_34/strided_slice/stack_1░
1model_8/conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_34/strided_slice/stack_2К
)model_8/conv2d_transpose_34/strided_sliceStridedSlice*model_8/conv2d_transpose_34/Shape:output:08model_8/conv2d_transpose_34/strided_slice/stack:output:0:model_8/conv2d_transpose_34/strided_slice/stack_1:output:0:model_8/conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_34/strided_sliceМ
#model_8/conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_8/conv2d_transpose_34/stack/1М
#model_8/conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_8/conv2d_transpose_34/stack/2М
#model_8/conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_34/stack/3║
!model_8/conv2d_transpose_34/stackPack2model_8/conv2d_transpose_34/strided_slice:output:0,model_8/conv2d_transpose_34/stack/1:output:0,model_8/conv2d_transpose_34/stack/2:output:0,model_8/conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_34/stack░
1model_8/conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_34/strided_slice_1/stack┤
3model_8/conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_34/strided_slice_1/stack_1┤
3model_8/conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_34/strided_slice_1/stack_2Ф
+model_8/conv2d_transpose_34/strided_slice_1StridedSlice*model_8/conv2d_transpose_34/stack:output:0:model_8/conv2d_transpose_34/strided_slice_1/stack:output:0<model_8/conv2d_transpose_34/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_34/strided_slice_1З
;model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_34_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02=
;model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOpэ
,model_8/conv2d_transpose_34/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_34/stack:output:0Cmodel_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0%model_8/conv2d_165/Relu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_34/conv2d_transposeр
2model_8/conv2d_transpose_34/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_8/conv2d_transpose_34/BiasAdd/ReadVariableOpВ
#model_8/conv2d_transpose_34/BiasAddBiasAdd5model_8/conv2d_transpose_34/conv2d_transpose:output:0:model_8/conv2d_transpose_34/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2%
#model_8/conv2d_transpose_34/BiasAddК
"model_8/concatenate_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_34/concat/axisП
model_8/concatenate_34/concatConcatV2,model_8/conv2d_transpose_34/BiasAdd:output:0%model_8/conv2d_155/Relu:activations:0+model_8/concatenate_34/concat/axis:output:0*
N*
T0*/
_output_shapes
:         @@ 2
model_8/concatenate_34/concat╬
(model_8/conv2d_166/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02*
(model_8/conv2d_166/Conv2D/ReadVariableOp№
model_8/conv2d_166/Conv2DConv2D&model_8/concatenate_34/concat:output:00model_8/conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
model_8/conv2d_166/Conv2D┼
)model_8/conv2d_166/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_166/BiasAdd/ReadVariableOp╘
model_8/conv2d_166/BiasAddBiasAdd"model_8/conv2d_166/Conv2D:output:01model_8/conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_166/BiasAddЩ
model_8/conv2d_166/ReluRelu#model_8/conv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_166/Relu╬
(model_8/conv2d_167/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_167_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_167/Conv2D/ReadVariableOp√
model_8/conv2d_167/Conv2DConv2D%model_8/conv2d_166/Relu:activations:00model_8/conv2d_167/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
model_8/conv2d_167/Conv2D┼
)model_8/conv2d_167/BiasAdd/ReadVariableOpReadVariableOp2model_8_conv2d_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_8/conv2d_167/BiasAdd/ReadVariableOp╘
model_8/conv2d_167/BiasAddBiasAdd"model_8/conv2d_167/Conv2D:output:01model_8/conv2d_167/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_167/BiasAddЩ
model_8/conv2d_167/ReluRelu#model_8/conv2d_167/BiasAdd:output:0*
T0*/
_output_shapes
:         @@2
model_8/conv2d_167/ReluЫ
!model_8/conv2d_transpose_35/ShapeShape%model_8/conv2d_167/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_35/Shapeм
/model_8/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_35/strided_slice/stack░
1model_8/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_35/strided_slice/stack_1░
1model_8/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_35/strided_slice/stack_2К
)model_8/conv2d_transpose_35/strided_sliceStridedSlice*model_8/conv2d_transpose_35/Shape:output:08model_8/conv2d_transpose_35/strided_slice/stack:output:0:model_8/conv2d_transpose_35/strided_slice/stack_1:output:0:model_8/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_35/strided_sliceН
#model_8/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_8/conv2d_transpose_35/stack/1Н
#model_8/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_8/conv2d_transpose_35/stack/2М
#model_8/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_35/stack/3║
!model_8/conv2d_transpose_35/stackPack2model_8/conv2d_transpose_35/strided_slice:output:0,model_8/conv2d_transpose_35/stack/1:output:0,model_8/conv2d_transpose_35/stack/2:output:0,model_8/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_35/stack░
1model_8/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_35/strided_slice_1/stack┤
3model_8/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_35/strided_slice_1/stack_1┤
3model_8/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_35/strided_slice_1/stack_2Ф
+model_8/conv2d_transpose_35/strided_slice_1StridedSlice*model_8/conv2d_transpose_35/stack:output:0:model_8/conv2d_transpose_35/strided_slice_1/stack:output:0<model_8/conv2d_transpose_35/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_35/strided_slice_1З
;model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02=
;model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOpя
,model_8/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_35/stack:output:0Cmodel_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0%model_8/conv2d_167/Relu:activations:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_35/conv2d_transposeр
2model_8/conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_8/conv2d_transpose_35/BiasAdd/ReadVariableOpД
#model_8/conv2d_transpose_35/BiasAddBiasAdd5model_8/conv2d_transpose_35/conv2d_transpose:output:0:model_8/conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА2%
#model_8/conv2d_transpose_35/BiasAddК
"model_8/concatenate_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_35/concat/axisС
model_8/concatenate_35/concatConcatV2,model_8/conv2d_transpose_35/BiasAdd:output:0%model_8/conv2d_153/Relu:activations:0+model_8/concatenate_35/concat/axis:output:0*
N*
T0*1
_output_shapes
:         АА2
model_8/concatenate_35/concat╬
(model_8/conv2d_168/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_168/Conv2D/ReadVariableOp■
model_8/conv2d_168/Conv2DConv2D&model_8/concatenate_35/concat:output:00model_8/conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
model_8/conv2d_168/BiasAddЫ
model_8/conv2d_168/ReluRelu#model_8/conv2d_168/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_168/Relu╬
(model_8/conv2d_169/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_169/Conv2D/ReadVariableOp¤
model_8/conv2d_169/Conv2DConv2D%model_8/conv2d_168/Relu:activations:00model_8/conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
model_8/conv2d_169/BiasAddЫ
model_8/conv2d_169/ReluRelu#model_8/conv2d_169/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_169/Relu╬
(model_8/conv2d_170/Conv2D/ReadVariableOpReadVariableOp1model_8_conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_8/conv2d_170/Conv2D/ReadVariableOp■
model_8/conv2d_170/Conv2DConv2D%model_8/conv2d_169/Relu:activations:00model_8/conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
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
:         АА2
model_8/conv2d_170/BiasAddд
model_8/conv2d_170/SigmoidSigmoid#model_8/conv2d_170/BiasAdd:output:0*
T0*1
_output_shapes
:         АА2
model_8/conv2d_170/Sigmoidн
(model_8/cropping2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2*
(model_8/cropping2d_8/strided_slice/stack▒
*model_8/cropping2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2,
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
:         АА*

begin_mask	*
end_mask2$
"model_8/cropping2d_8/strided_slice┐
%model_8/zero_padding2d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2'
%model_8/zero_padding2d_8/Pad/paddings▄
model_8/zero_padding2d_8/PadPad+model_8/cropping2d_8/strided_slice:output:0.model_8/zero_padding2d_8/Pad/paddings:output:0*
T0*1
_output_shapes
:         АА2
model_8/zero_padding2d_8/Padж
IdentityIdentity%model_8/zero_padding2d_8/Pad:output:0>^model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp@^model_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1-^model_8/batch_normalization_8/ReadVariableOp/^model_8/batch_normalization_8/ReadVariableOp_1*^model_8/conv2d_152/BiasAdd/ReadVariableOp)^model_8/conv2d_152/Conv2D/ReadVariableOp*^model_8/conv2d_153/BiasAdd/ReadVariableOp)^model_8/conv2d_153/Conv2D/ReadVariableOp*^model_8/conv2d_154/BiasAdd/ReadVariableOp)^model_8/conv2d_154/Conv2D/ReadVariableOp*^model_8/conv2d_155/BiasAdd/ReadVariableOp)^model_8/conv2d_155/Conv2D/ReadVariableOp*^model_8/conv2d_156/BiasAdd/ReadVariableOp)^model_8/conv2d_156/Conv2D/ReadVariableOp*^model_8/conv2d_157/BiasAdd/ReadVariableOp)^model_8/conv2d_157/Conv2D/ReadVariableOp*^model_8/conv2d_158/BiasAdd/ReadVariableOp)^model_8/conv2d_158/Conv2D/ReadVariableOp*^model_8/conv2d_159/BiasAdd/ReadVariableOp)^model_8/conv2d_159/Conv2D/ReadVariableOp*^model_8/conv2d_160/BiasAdd/ReadVariableOp)^model_8/conv2d_160/Conv2D/ReadVariableOp*^model_8/conv2d_161/BiasAdd/ReadVariableOp)^model_8/conv2d_161/Conv2D/ReadVariableOp*^model_8/conv2d_162/BiasAdd/ReadVariableOp)^model_8/conv2d_162/Conv2D/ReadVariableOp*^model_8/conv2d_163/BiasAdd/ReadVariableOp)^model_8/conv2d_163/Conv2D/ReadVariableOp*^model_8/conv2d_164/BiasAdd/ReadVariableOp)^model_8/conv2d_164/Conv2D/ReadVariableOp*^model_8/conv2d_165/BiasAdd/ReadVariableOp)^model_8/conv2d_165/Conv2D/ReadVariableOp*^model_8/conv2d_166/BiasAdd/ReadVariableOp)^model_8/conv2d_166/Conv2D/ReadVariableOp*^model_8/conv2d_167/BiasAdd/ReadVariableOp)^model_8/conv2d_167/Conv2D/ReadVariableOp*^model_8/conv2d_168/BiasAdd/ReadVariableOp)^model_8/conv2d_168/Conv2D/ReadVariableOp*^model_8/conv2d_169/BiasAdd/ReadVariableOp)^model_8/conv2d_169/Conv2D/ReadVariableOp*^model_8/conv2d_170/BiasAdd/ReadVariableOp)^model_8/conv2d_170/Conv2D/ReadVariableOp3^model_8/conv2d_transpose_32/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_33/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_34/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_35/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2~
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
(model_8/conv2d_170/Conv2D/ReadVariableOp(model_8/conv2d_170/Conv2D/ReadVariableOp2h
2model_8/conv2d_transpose_32/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_32/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_32/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_33/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_33/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_33/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_34/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_34/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_34/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_35/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_35/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
╧

▐
E__inference_conv2d_166_layer_call_and_return_conditional_losses_95807

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
·
Z
.__inference_concatenate_32_layer_call_fn_95690
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
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_935542
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+                           @:         @:k g
A
_output_shapes/
-:+                           @
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:         @
"
_user_specified_name
inputs/1
╧

▐
E__inference_conv2d_167_layer_call_and_return_conditional_losses_93751

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╛

j
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_93178

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
:         АА*
dtype0*
seed▒ х)*
seed2 ЩМ2$
"random_normal/RandomStandardNormal╡
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:         АА2
random_normal/mulХ
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:         АА2
random_normalj
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:         АА2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_152_layer_call_fn_95497

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_932792
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й

*__inference_conv2d_170_layer_call_fn_95909

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_938532
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         АА::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
▐
и
5__inference_batch_normalization_8_layer_call_fn_95464

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
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932142
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ь#
√
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_93081

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAdd╣
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
М
Ч
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95433

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
9:         АА:::::*
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
:         АА2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         АА::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧

▐
E__inference_conv2d_158_layer_call_and_return_conditional_losses_95608

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
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▐
Ў
'__inference_model_8_layer_call_fn_94500
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

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identityИвStatefulPartitionedCallЩ
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_943972
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:         АА
#
_user_specified_name	RGB_Input
╥

▐
E__inference_conv2d_162_layer_call_and_return_conditional_losses_93574

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
лл
є
B__inference_model_8_layer_call_and_return_conditional_losses_94153

inputs
batch_normalization_8_94018
batch_normalization_8_94020
batch_normalization_8_94022
batch_normalization_8_94024
conv2d_152_94027
conv2d_152_94029
conv2d_153_94032
conv2d_153_94034
conv2d_154_94038
conv2d_154_94040
conv2d_155_94043
conv2d_155_94045
conv2d_156_94049
conv2d_156_94051
conv2d_157_94054
conv2d_157_94056
conv2d_158_94060
conv2d_158_94062
conv2d_159_94065
conv2d_159_94067
conv2d_160_94071
conv2d_160_94073
conv2d_161_94076
conv2d_161_94078
conv2d_transpose_32_94081
conv2d_transpose_32_94083
conv2d_162_94087
conv2d_162_94089
conv2d_163_94092
conv2d_163_94094
conv2d_transpose_33_94097
conv2d_transpose_33_94099
conv2d_164_94103
conv2d_164_94105
conv2d_165_94108
conv2d_165_94110
conv2d_transpose_34_94113
conv2d_transpose_34_94115
conv2d_166_94119
conv2d_166_94121
conv2d_167_94124
conv2d_167_94126
conv2d_transpose_35_94129
conv2d_transpose_35_94131
conv2d_168_94135
conv2d_168_94137
conv2d_169_94140
conv2d_169_94142
conv2d_170_94145
conv2d_170_94147
identityИв-batch_normalization_8/StatefulPartitionedCallв"conv2d_152/StatefulPartitionedCallв"conv2d_153/StatefulPartitionedCallв"conv2d_154/StatefulPartitionedCallв"conv2d_155/StatefulPartitionedCallв"conv2d_156/StatefulPartitionedCallв"conv2d_157/StatefulPartitionedCallв"conv2d_158/StatefulPartitionedCallв"conv2d_159/StatefulPartitionedCallв"conv2d_160/StatefulPartitionedCallв"conv2d_161/StatefulPartitionedCallв"conv2d_162/StatefulPartitionedCallв"conv2d_163/StatefulPartitionedCallв"conv2d_164/StatefulPartitionedCallв"conv2d_165/StatefulPartitionedCallв"conv2d_166/StatefulPartitionedCallв"conv2d_167/StatefulPartitionedCallв"conv2d_168/StatefulPartitionedCallв"conv2d_169/StatefulPartitionedCallв"conv2d_170/StatefulPartitionedCallв+conv2d_transpose_32/StatefulPartitionedCallв+conv2d_transpose_33/StatefulPartitionedCallв+conv2d_transpose_34/StatefulPartitionedCallв+conv2d_transpose_35/StatefulPartitionedCallв(gaussian_noise_8/StatefulPartitionedCallР
(gaussian_noise_8/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_931782*
(gaussian_noise_8/StatefulPartitionedCall╞
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_8/StatefulPartitionedCall:output:0batch_normalization_8_94018batch_normalization_8_94020batch_normalization_8_94022batch_normalization_8_94024*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_932142/
-batch_normalization_8/StatefulPartitionedCall╪
"conv2d_152/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_152_94027conv2d_152_94029*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_152_layer_call_and_return_conditional_losses_932792$
"conv2d_152/StatefulPartitionedCall═
"conv2d_153/StatefulPartitionedCallStatefulPartitionedCall+conv2d_152/StatefulPartitionedCall:output:0conv2d_153_94032conv2d_153_94034*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_153_layer_call_and_return_conditional_losses_933062$
"conv2d_153/StatefulPartitionedCallЫ
 max_pooling2d_32/PartitionedCallPartitionedCall+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_929172"
 max_pooling2d_32/PartitionedCall╔
"conv2d_154/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_154_94038conv2d_154_94040*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_154_layer_call_and_return_conditional_losses_933342$
"conv2d_154/StatefulPartitionedCall╦
"conv2d_155/StatefulPartitionedCallStatefulPartitionedCall+conv2d_154/StatefulPartitionedCall:output:0conv2d_155_94043conv2d_155_94045*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_155_layer_call_and_return_conditional_losses_933612$
"conv2d_155/StatefulPartitionedCallЫ
 max_pooling2d_33/PartitionedCallPartitionedCall+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_929292"
 max_pooling2d_33/PartitionedCall╔
"conv2d_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_156_94049conv2d_156_94051*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_156_layer_call_and_return_conditional_losses_933892$
"conv2d_156/StatefulPartitionedCall╦
"conv2d_157/StatefulPartitionedCallStatefulPartitionedCall+conv2d_156/StatefulPartitionedCall:output:0conv2d_157_94054conv2d_157_94056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_157_layer_call_and_return_conditional_losses_934162$
"conv2d_157/StatefulPartitionedCallЫ
 max_pooling2d_34/PartitionedCallPartitionedCall+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_929412"
 max_pooling2d_34/PartitionedCall╔
"conv2d_158/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_158_94060conv2d_158_94062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_158_layer_call_and_return_conditional_losses_934442$
"conv2d_158/StatefulPartitionedCall╦
"conv2d_159/StatefulPartitionedCallStatefulPartitionedCall+conv2d_158/StatefulPartitionedCall:output:0conv2d_159_94065conv2d_159_94067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_159_layer_call_and_return_conditional_losses_934712$
"conv2d_159/StatefulPartitionedCallЫ
 max_pooling2d_35/PartitionedCallPartitionedCall+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_929532"
 max_pooling2d_35/PartitionedCall╩
"conv2d_160/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_160_94071conv2d_160_94073*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_160_layer_call_and_return_conditional_losses_934992$
"conv2d_160/StatefulPartitionedCall╠
"conv2d_161/StatefulPartitionedCallStatefulPartitionedCall+conv2d_160/StatefulPartitionedCall:output:0conv2d_161_94076conv2d_161_94078*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_161_layer_call_and_return_conditional_losses_935262$
"conv2d_161/StatefulPartitionedCallК
+conv2d_transpose_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_161/StatefulPartitionedCall:output:0conv2d_transpose_32_94081conv2d_transpose_32_94083*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_929932-
+conv2d_transpose_32/StatefulPartitionedCall═
concatenate_32/PartitionedCallPartitionedCall4conv2d_transpose_32/StatefulPartitionedCall:output:0+conv2d_159/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_32_layer_call_and_return_conditional_losses_935542 
concatenate_32/PartitionedCall╟
"conv2d_162/StatefulPartitionedCallStatefulPartitionedCall'concatenate_32/PartitionedCall:output:0conv2d_162_94087conv2d_162_94089*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_162_layer_call_and_return_conditional_losses_935742$
"conv2d_162/StatefulPartitionedCall╦
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCall+conv2d_162/StatefulPartitionedCall:output:0conv2d_163_94092conv2d_163_94094*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_163_layer_call_and_return_conditional_losses_936012$
"conv2d_163/StatefulPartitionedCallК
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0conv2d_transpose_33_94097conv2d_transpose_33_94099*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_930372-
+conv2d_transpose_33/StatefulPartitionedCall╠
concatenate_33/PartitionedCallPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0+conv2d_157/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_33_layer_call_and_return_conditional_losses_936292 
concatenate_33/PartitionedCall╟
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall'concatenate_33/PartitionedCall:output:0conv2d_164_94103conv2d_164_94105*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_164_layer_call_and_return_conditional_losses_936492$
"conv2d_164/StatefulPartitionedCall╦
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0conv2d_165_94108conv2d_165_94110*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_165_layer_call_and_return_conditional_losses_936762$
"conv2d_165/StatefulPartitionedCallК
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0conv2d_transpose_34_94113conv2d_transpose_34_94115*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_930812-
+conv2d_transpose_34/StatefulPartitionedCall╠
concatenate_34/PartitionedCallPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0+conv2d_155/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_34_layer_call_and_return_conditional_losses_937042 
concatenate_34/PartitionedCall╟
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall'concatenate_34/PartitionedCall:output:0conv2d_166_94119conv2d_166_94121*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_166_layer_call_and_return_conditional_losses_937242$
"conv2d_166/StatefulPartitionedCall╦
"conv2d_167/StatefulPartitionedCallStatefulPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0conv2d_167_94124conv2d_167_94126*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_167_layer_call_and_return_conditional_losses_937512$
"conv2d_167/StatefulPartitionedCallК
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall+conv2d_167/StatefulPartitionedCall:output:0conv2d_transpose_35_94129conv2d_transpose_35_94131*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_931252-
+conv2d_transpose_35/StatefulPartitionedCall╬
concatenate_35/PartitionedCallPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0+conv2d_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_35_layer_call_and_return_conditional_losses_937792 
concatenate_35/PartitionedCall╔
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCall'concatenate_35/PartitionedCall:output:0conv2d_168_94135conv2d_168_94137*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_168_layer_call_and_return_conditional_losses_937992$
"conv2d_168/StatefulPartitionedCall═
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0conv2d_169_94140conv2d_169_94142*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_169_layer_call_and_return_conditional_losses_938262$
"conv2d_169/StatefulPartitionedCall═
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0conv2d_170_94145conv2d_170_94147*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_170_layer_call_and_return_conditional_losses_938532$
"conv2d_170/StatefulPartitionedCallС
cropping2d_8/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_931442
cropping2d_8/PartitionedCallЧ
 zero_padding2d_8/PartitionedCallPartitionedCall%cropping2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_931572"
 zero_padding2d_8/PartitionedCall┘
IdentityIdentity)zero_padding2d_8/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall#^conv2d_152/StatefulPartitionedCall#^conv2d_153/StatefulPartitionedCall#^conv2d_154/StatefulPartitionedCall#^conv2d_155/StatefulPartitionedCall#^conv2d_156/StatefulPartitionedCall#^conv2d_157/StatefulPartitionedCall#^conv2d_158/StatefulPartitionedCall#^conv2d_159/StatefulPartitionedCall#^conv2d_160/StatefulPartitionedCall#^conv2d_161/StatefulPartitionedCall#^conv2d_162/StatefulPartitionedCall#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall#^conv2d_167/StatefulPartitionedCall#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall,^conv2d_transpose_32/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall)^gaussian_noise_8/StatefulPartitionedCall*
T0*1
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*·
_input_shapesш
х:         АА::::::::::::::::::::::::::::::::::::::::::::::::::2^
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
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2Z
+conv2d_transpose_32/StatefulPartitionedCall+conv2d_transpose_32/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2T
(gaussian_noise_8/StatefulPartitionedCall(gaussian_noise_8/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
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
serving_default_RGB_Input:0         ААN
zero_padding2d_8:
StatefulPartitionedCall:0         ААtensorflow/serving/predict:╜░	
▌ц
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
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer-22
layer_with_weights-15
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer-26
layer_with_weights-18
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer-30
 layer_with_weights-21
 layer-31
!layer_with_weights-22
!layer-32
"layer_with_weights-23
"layer-33
#layer-34
$layer-35
%	optimizer
&regularization_losses
'trainable_variables
(	variables
)	keras_api
*
signatures
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ь_default_save_signature"в▄
_tf_keras_networkЕ▄{"class_name": "Functional", "name": "model_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}, "name": "RGB_Input", "inbound_nodes": []}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}, "name": "gaussian_noise_8", "inbound_nodes": [[["RGB_Input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["gaussian_noise_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_152", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_153", "inbound_nodes": [[["conv2d_152", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_154", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_155", "inbound_nodes": [[["conv2d_154", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_33", "inbound_nodes": [[["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_156", "inbound_nodes": [[["max_pooling2d_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_157", "inbound_nodes": [[["conv2d_156", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_34", "inbound_nodes": [[["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_158", "inbound_nodes": [[["max_pooling2d_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_159", "inbound_nodes": [[["conv2d_158", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_35", "inbound_nodes": [[["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_160", "inbound_nodes": [[["max_pooling2d_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_161", "inbound_nodes": [[["conv2d_160", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_32", "inbound_nodes": [[["conv2d_161", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_32", "inbound_nodes": [[["conv2d_transpose_32", 0, 0, {}], ["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_162", "inbound_nodes": [[["concatenate_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_163", "inbound_nodes": [[["conv2d_162", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_33", "inbound_nodes": [[["conv2d_163", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_33", "inbound_nodes": [[["conv2d_transpose_33", 0, 0, {}], ["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_164", "inbound_nodes": [[["concatenate_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_165", "inbound_nodes": [[["conv2d_164", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_34", "inbound_nodes": [[["conv2d_165", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_34", "inbound_nodes": [[["conv2d_transpose_34", 0, 0, {}], ["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_166", "inbound_nodes": [[["concatenate_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_167", "inbound_nodes": [[["conv2d_166", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_35", "inbound_nodes": [[["conv2d_167", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_35", "inbound_nodes": [[["conv2d_transpose_35", 0, 0, {}], ["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_168", "inbound_nodes": [[["concatenate_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_169", "inbound_nodes": [[["conv2d_168", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_170", "inbound_nodes": [[["conv2d_169", 0, 0, {}]]]}, {"class_name": "Cropping2D", "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "cropping2d_8", "inbound_nodes": [[["conv2d_170", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "zero_padding2d_8", "inbound_nodes": [[["cropping2d_8", 0, 0, {}]]]}], "input_layers": [["RGB_Input", 0, 0]], "output_layers": [["zero_padding2d_8", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}, "name": "RGB_Input", "inbound_nodes": []}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}, "name": "gaussian_noise_8", "inbound_nodes": [[["RGB_Input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["gaussian_noise_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_152", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_153", "inbound_nodes": [[["conv2d_152", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_154", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_155", "inbound_nodes": [[["conv2d_154", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_33", "inbound_nodes": [[["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_156", "inbound_nodes": [[["max_pooling2d_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_157", "inbound_nodes": [[["conv2d_156", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_34", "inbound_nodes": [[["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_158", "inbound_nodes": [[["max_pooling2d_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_159", "inbound_nodes": [[["conv2d_158", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_35", "inbound_nodes": [[["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_160", "inbound_nodes": [[["max_pooling2d_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_161", "inbound_nodes": [[["conv2d_160", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_32", "inbound_nodes": [[["conv2d_161", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_32", "inbound_nodes": [[["conv2d_transpose_32", 0, 0, {}], ["conv2d_159", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_162", "inbound_nodes": [[["concatenate_32", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_163", "inbound_nodes": [[["conv2d_162", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_33", "inbound_nodes": [[["conv2d_163", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_33", "inbound_nodes": [[["conv2d_transpose_33", 0, 0, {}], ["conv2d_157", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_164", "inbound_nodes": [[["concatenate_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_165", "inbound_nodes": [[["conv2d_164", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_34", "inbound_nodes": [[["conv2d_165", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_34", "inbound_nodes": [[["conv2d_transpose_34", 0, 0, {}], ["conv2d_155", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_166", "inbound_nodes": [[["concatenate_34", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_167", "inbound_nodes": [[["conv2d_166", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_35", "inbound_nodes": [[["conv2d_167", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_35", "inbound_nodes": [[["conv2d_transpose_35", 0, 0, {}], ["conv2d_153", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_168", "inbound_nodes": [[["concatenate_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_169", "inbound_nodes": [[["conv2d_168", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_170", "inbound_nodes": [[["conv2d_169", 0, 0, {}]]]}, {"class_name": "Cropping2D", "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "cropping2d_8", "inbound_nodes": [[["conv2d_170", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "zero_padding2d_8", "inbound_nodes": [[["cropping2d_8", 0, 0, {}]]]}], "input_layers": [["RGB_Input", 0, 0]], "output_layers": [["zero_padding2d_8", 0, 0]]}}, "training_config": {"loss": "dice_p_bce", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "dice_coef", "dtype": "float32", "fn": "dice_coef"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "true_positive_rate", "dtype": "float32", "fn": "true_positive_rate"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 9.999999974752427e-07, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Б"■
_tf_keras_input_layer▐{"class_name": "InputLayer", "name": "RGB_Input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "RGB_Input"}}
┌
+regularization_losses
,trainable_variables
-	variables
.	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"╔
_tf_keras_layerп{"class_name": "GaussianNoise", "name": "gaussian_noise_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gaussian_noise_8", "trainable": true, "dtype": "float32", "stddev": 0.1}}
╝	
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4regularization_losses
5trainable_variables
6	variables
7	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}}
ў	

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
б__call__
+в&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_152", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_152", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}}
ў	

>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
г__call__
+д&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_153", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_153", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 8]}}
Г
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ў	

Hkernel
Ibias
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
з__call__
+и&call_and_return_all_conditional_losses"╧
_tf_keras_layer╡{"class_name": "Conv2D", "name": "conv2d_154", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_154", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 8]}}
°	

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
й__call__
+к&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_155", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_155", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 16]}}
Г
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
л__call__
+м&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_33", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
°	

Xkernel
Ybias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
н__call__
+о&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_156", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_156", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
°	

^kernel
_bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
п__call__
+░&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_157", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_157", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
Г
dregularization_losses
etrainable_variables
f	variables
g	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_34", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
°	

hkernel
ibias
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
│__call__
+┤&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_158", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_158", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
°	

nkernel
obias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_159", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_159", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
Г
tregularization_losses
utrainable_variables
v	variables
w	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_35", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ў	

xkernel
ybias
zregularization_losses
{trainable_variables
|	variables
}	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_160", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_160", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
¤	

~kernel
bias
Аregularization_losses
Бtrainable_variables
В	variables
Г	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"class_name": "Conv2D", "name": "conv2d_161", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_161", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
│

Дkernel
	Еbias
Жregularization_losses
Зtrainable_variables
И	variables
Й	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"Ж	
_tf_keras_layerь{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
х
Кregularization_losses
Лtrainable_variables
М	variables
Н	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Concatenate", "name": "concatenate_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_32", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16, 16, 64]}, {"class_name": "TensorShape", "items": [null, 16, 16, 64]}]}
А

Оkernel
	Пbias
Рregularization_losses
Сtrainable_variables
Т	variables
У	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"╙
_tf_keras_layer╣{"class_name": "Conv2D", "name": "conv2d_162", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_162", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
■	
Фkernel
	Хbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
├__call__
+─&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_163", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_163", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
│

Ъkernel
	Ыbias
Ьregularization_losses
Эtrainable_variables
Ю	variables
Я	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"Ж	
_tf_keras_layerь{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
х
аregularization_losses
бtrainable_variables
в	variables
г	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Concatenate", "name": "concatenate_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_33", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 32]}, {"class_name": "TensorShape", "items": [null, 32, 32, 32]}]}
■	
дkernel
	еbias
жregularization_losses
зtrainable_variables
и	variables
й	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_164", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_164", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
■	
кkernel
	лbias
мregularization_losses
нtrainable_variables
о	variables
п	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_165", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_165", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
│

░kernel
	▒bias
▓regularization_losses
│trainable_variables
┤	variables
╡	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"Ж	
_tf_keras_layerь{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
х
╢regularization_losses
╖trainable_variables
╕	variables
╣	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Concatenate", "name": "concatenate_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_34", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64, 64, 16]}, {"class_name": "TensorShape", "items": [null, 64, 64, 16]}]}
■	
║kernel
	╗bias
╝regularization_losses
╜trainable_variables
╛	variables
┐	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_166", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_166", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 32]}}
■	
└kernel
	┴bias
┬regularization_losses
├trainable_variables
─	variables
┼	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_167", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_167", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 16]}}
▓

╞kernel
	╟bias
╚regularization_losses
╔trainable_variables
╩	variables
╦	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"Е	
_tf_keras_layerы{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 16]}}
ц
╠regularization_losses
═trainable_variables
╬	variables
╧	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Concatenate", "name": "concatenate_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_35", "trainable": true, "dtype": "float32", "axis": 3}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 8]}, {"class_name": "TensorShape", "items": [null, 128, 128, 8]}]}
 	
╨kernel
	╤bias
╥regularization_losses
╙trainable_variables
╘	variables
╒	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"class_name": "Conv2D", "name": "conv2d_168", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_168", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 16]}}
¤	
╓kernel
	╫bias
╪regularization_losses
┘trainable_variables
┌	variables
█	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_169", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_169", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 8]}}
Б

▄kernel
	▌bias
▐regularization_losses
▀trainable_variables
р	variables
с	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"class_name": "Conv2D", "name": "conv2d_170", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_170", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 8]}}
Е
тregularization_losses
уtrainable_variables
ф	variables
х	keras_api
▀__call__
+р&call_and_return_all_conditional_losses"Ё
_tf_keras_layer╓{"class_name": "Cropping2D", "name": "cropping2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "cropping2d_8", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
П
цregularization_losses
чtrainable_variables
ш	variables
щ	keras_api
с__call__
+т&call_and_return_all_conditional_losses"·
_tf_keras_layerр{"class_name": "ZeroPadding2D", "name": "zero_padding2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "zero_padding2d_8", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
╠
	ъiter
ыbeta_1
ьbeta_2

эdecay
юlearning_rate0m║1m╗8m╝9m╜>m╛?m┐Hm└Im┴Nm┬Om├Xm─Ym┼^m╞_m╟hm╚im╔nm╩om╦xm╠ym═~m╬m╧	Дm╨	Еm╤	Оm╥	Пm╙	Фm╘	Хm╒	Ъm╓	Ыm╫	дm╪	еm┘	кm┌	лm█	░m▄	▒m▌	║m▐	╗m▀	└mр	┴mс	╞mт	╟mу	╨mф	╤mх	╓mц	╫mч	▄mш	▌mщ0vъ1vы8vь9vэ>vю?vяHvЁIvёNvЄOvєXvЇYvї^vЎ_vўhv°iv∙nv·ov√xv№yv¤~v■v 	ДvА	ЕvБ	ОvВ	ПvГ	ФvД	ХvЕ	ЪvЖ	ЫvЗ	дvИ	еvЙ	кvК	лvЛ	░vМ	▒vН	║vО	╗vП	└vР	┴vС	╞vТ	╟vУ	╨vФ	╤vХ	╓vЦ	╫vЧ	▄vШ	▌vЩ"
	optimizer
 "
trackable_list_wrapper
░
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
Д22
Е23
О24
П25
Ф26
Х27
Ъ28
Ы29
д30
е31
к32
л33
░34
▒35
║36
╗37
└38
┴39
╞40
╟41
╨42
╤43
╓44
╫45
▄46
▌47"
trackable_list_wrapper
└
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
Д24
Е25
О26
П27
Ф28
Х29
Ъ30
Ы31
д32
е33
к34
л35
░36
▒37
║38
╗39
└40
┴41
╞42
╟43
╨44
╤45
╓46
╫47
▄48
▌49"
trackable_list_wrapper
╙
&regularization_losses
яmetrics
'trainable_variables
Ёnon_trainable_variables
 ёlayer_regularization_losses
(	variables
Єlayer_metrics
єlayers
Ъ__call__
Ь_default_save_signature
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
-
уserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
+regularization_losses
Їmetrics
,trainable_variables
їnon_trainable_variables
 Ўlayer_regularization_losses
-	variables
ўlayer_metrics
°layers
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_8/gamma
(:&2batch_normalization_8/beta
1:/ (2!batch_normalization_8/moving_mean
5:3 (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
╡
4regularization_losses
∙metrics
5trainable_variables
·non_trainable_variables
 √layer_regularization_losses
6	variables
№layer_metrics
¤layers
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_152/kernel
:2conv2d_152/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
╡
:regularization_losses
■metrics
;trainable_variables
 non_trainable_variables
 Аlayer_regularization_losses
<	variables
Бlayer_metrics
Вlayers
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_153/kernel
:2conv2d_153/bias
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
╡
@regularization_losses
Гmetrics
Atrainable_variables
Дnon_trainable_variables
 Еlayer_regularization_losses
B	variables
Жlayer_metrics
Зlayers
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Dregularization_losses
Иmetrics
Etrainable_variables
Йnon_trainable_variables
 Кlayer_regularization_losses
F	variables
Лlayer_metrics
Мlayers
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_154/kernel
:2conv2d_154/bias
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
╡
Jregularization_losses
Нmetrics
Ktrainable_variables
Оnon_trainable_variables
 Пlayer_regularization_losses
L	variables
Рlayer_metrics
Сlayers
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_155/kernel
:2conv2d_155/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
╡
Pregularization_losses
Тmetrics
Qtrainable_variables
Уnon_trainable_variables
 Фlayer_regularization_losses
R	variables
Хlayer_metrics
Цlayers
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Tregularization_losses
Чmetrics
Utrainable_variables
Шnon_trainable_variables
 Щlayer_regularization_losses
V	variables
Ъlayer_metrics
Ыlayers
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_156/kernel
: 2conv2d_156/bias
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
╡
Zregularization_losses
Ьmetrics
[trainable_variables
Эnon_trainable_variables
 Юlayer_regularization_losses
\	variables
Яlayer_metrics
аlayers
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_157/kernel
: 2conv2d_157/bias
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
╡
`regularization_losses
бmetrics
atrainable_variables
вnon_trainable_variables
 гlayer_regularization_losses
b	variables
дlayer_metrics
еlayers
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
dregularization_losses
жmetrics
etrainable_variables
зnon_trainable_variables
 иlayer_regularization_losses
f	variables
йlayer_metrics
кlayers
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_158/kernel
:@2conv2d_158/bias
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
╡
jregularization_losses
лmetrics
ktrainable_variables
мnon_trainable_variables
 нlayer_regularization_losses
l	variables
оlayer_metrics
пlayers
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_159/kernel
:@2conv2d_159/bias
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
╡
pregularization_losses
░metrics
qtrainable_variables
▒non_trainable_variables
 ▓layer_regularization_losses
r	variables
│layer_metrics
┤layers
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
tregularization_losses
╡metrics
utrainable_variables
╢non_trainable_variables
 ╖layer_regularization_losses
v	variables
╕layer_metrics
╣layers
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
,:*@А2conv2d_160/kernel
:А2conv2d_160/bias
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
╡
zregularization_losses
║metrics
{trainable_variables
╗non_trainable_variables
 ╝layer_regularization_losses
|	variables
╜layer_metrics
╛layers
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
-:+АА2conv2d_161/kernel
:А2conv2d_161/bias
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
╕
Аregularization_losses
┐metrics
Бtrainable_variables
└non_trainable_variables
 ┴layer_regularization_losses
В	variables
┬layer_metrics
├layers
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
5:3@А2conv2d_transpose_32/kernel
&:$@2conv2d_transpose_32/bias
 "
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
╕
Жregularization_losses
─metrics
Зtrainable_variables
┼non_trainable_variables
 ╞layer_regularization_losses
И	variables
╟layer_metrics
╚layers
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Кregularization_losses
╔metrics
Лtrainable_variables
╩non_trainable_variables
 ╦layer_regularization_losses
М	variables
╠layer_metrics
═layers
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
,:*А@2conv2d_162/kernel
:@2conv2d_162/bias
 "
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
╕
Рregularization_losses
╬metrics
Сtrainable_variables
╧non_trainable_variables
 ╨layer_regularization_losses
Т	variables
╤layer_metrics
╥layers
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_163/kernel
:@2conv2d_163/bias
 "
trackable_list_wrapper
0
Ф0
Х1"
trackable_list_wrapper
0
Ф0
Х1"
trackable_list_wrapper
╕
Цregularization_losses
╙metrics
Чtrainable_variables
╘non_trainable_variables
 ╒layer_regularization_losses
Ш	variables
╓layer_metrics
╫layers
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_33/kernel
&:$ 2conv2d_transpose_33/bias
 "
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
╕
Ьregularization_losses
╪metrics
Эtrainable_variables
┘non_trainable_variables
 ┌layer_regularization_losses
Ю	variables
█layer_metrics
▄layers
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
аregularization_losses
▌metrics
бtrainable_variables
▐non_trainable_variables
 ▀layer_regularization_losses
в	variables
рlayer_metrics
сlayers
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
+:)@ 2conv2d_164/kernel
: 2conv2d_164/bias
 "
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
╕
жregularization_losses
тmetrics
зtrainable_variables
уnon_trainable_variables
 фlayer_regularization_losses
и	variables
хlayer_metrics
цlayers
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_165/kernel
: 2conv2d_165/bias
 "
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
╕
мregularization_losses
чmetrics
нtrainable_variables
шnon_trainable_variables
 щlayer_regularization_losses
о	variables
ъlayer_metrics
ыlayers
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
4:2 2conv2d_transpose_34/kernel
&:$2conv2d_transpose_34/bias
 "
trackable_list_wrapper
0
░0
▒1"
trackable_list_wrapper
0
░0
▒1"
trackable_list_wrapper
╕
▓regularization_losses
ьmetrics
│trainable_variables
эnon_trainable_variables
 юlayer_regularization_losses
┤	variables
яlayer_metrics
Ёlayers
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢regularization_losses
ёmetrics
╖trainable_variables
Єnon_trainable_variables
 єlayer_regularization_losses
╕	variables
Їlayer_metrics
їlayers
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_166/kernel
:2conv2d_166/bias
 "
trackable_list_wrapper
0
║0
╗1"
trackable_list_wrapper
0
║0
╗1"
trackable_list_wrapper
╕
╝regularization_losses
Ўmetrics
╜trainable_variables
ўnon_trainable_variables
 °layer_regularization_losses
╛	variables
∙layer_metrics
·layers
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_167/kernel
:2conv2d_167/bias
 "
trackable_list_wrapper
0
└0
┴1"
trackable_list_wrapper
0
└0
┴1"
trackable_list_wrapper
╕
┬regularization_losses
√metrics
├trainable_variables
№non_trainable_variables
 ¤layer_regularization_losses
─	variables
■layer_metrics
 layers
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_35/kernel
&:$2conv2d_transpose_35/bias
 "
trackable_list_wrapper
0
╞0
╟1"
trackable_list_wrapper
0
╞0
╟1"
trackable_list_wrapper
╕
╚regularization_losses
Аmetrics
╔trainable_variables
Бnon_trainable_variables
 Вlayer_regularization_losses
╩	variables
Гlayer_metrics
Дlayers
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╠regularization_losses
Еmetrics
═trainable_variables
Жnon_trainable_variables
 Зlayer_regularization_losses
╬	variables
Иlayer_metrics
Йlayers
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_168/kernel
:2conv2d_168/bias
 "
trackable_list_wrapper
0
╨0
╤1"
trackable_list_wrapper
0
╨0
╤1"
trackable_list_wrapper
╕
╥regularization_losses
Кmetrics
╙trainable_variables
Лnon_trainable_variables
 Мlayer_regularization_losses
╘	variables
Нlayer_metrics
Оlayers
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_169/kernel
:2conv2d_169/bias
 "
trackable_list_wrapper
0
╓0
╫1"
trackable_list_wrapper
0
╓0
╫1"
trackable_list_wrapper
╕
╪regularization_losses
Пmetrics
┘trainable_variables
Рnon_trainable_variables
 Сlayer_regularization_losses
┌	variables
Тlayer_metrics
Уlayers
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_170/kernel
:2conv2d_170/bias
 "
trackable_list_wrapper
0
▄0
▌1"
trackable_list_wrapper
0
▄0
▌1"
trackable_list_wrapper
╕
▐regularization_losses
Фmetrics
▀trainable_variables
Хnon_trainable_variables
 Цlayer_regularization_losses
р	variables
Чlayer_metrics
Шlayers
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
тregularization_losses
Щmetrics
уtrainable_variables
Ъnon_trainable_variables
 Ыlayer_regularization_losses
ф	variables
Ьlayer_metrics
Эlayers
▀__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
цregularization_losses
Юmetrics
чtrainable_variables
Яnon_trainable_variables
 аlayer_regularization_losses
ш	variables
бlayer_metrics
вlayers
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
@
г0
д1
е2
ж3"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
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
┐

зtotal

иcount
й	variables
к	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
√

лtotal

мcount
н
_fn_kwargs
о	variables
п	keras_api"п
_tf_keras_metricФ{"class_name": "MeanMetricWrapper", "name": "dice_coef", "dtype": "float32", "config": {"name": "dice_coef", "dtype": "float32", "fn": "dice_coef"}}
Н

░total

▒count
▓
_fn_kwargs
│	variables
┤	keras_api"┴
_tf_keras_metricж{"class_name": "MeanMetricWrapper", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
Ц

╡total

╢count
╖
_fn_kwargs
╕	variables
╣	keras_api"╩
_tf_keras_metricп{"class_name": "MeanMetricWrapper", "name": "true_positive_rate", "dtype": "float32", "config": {"name": "true_positive_rate", "dtype": "float32", "fn": "true_positive_rate"}}
:  (2total
:  (2count
0
з0
и1"
trackable_list_wrapper
.
й	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
л0
м1"
trackable_list_wrapper
.
о	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
░0
▒1"
trackable_list_wrapper
.
│	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╡0
╢1"
trackable_list_wrapper
.
╕	variables"
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
::8@А2!Adam/conv2d_transpose_32/kernel/m
+:)@2Adam/conv2d_transpose_32/bias/m
1:/А@2Adam/conv2d_162/kernel/m
": @2Adam/conv2d_162/bias/m
0:.@@2Adam/conv2d_163/kernel/m
": @2Adam/conv2d_163/bias/m
9:7 @2!Adam/conv2d_transpose_33/kernel/m
+:) 2Adam/conv2d_transpose_33/bias/m
0:.@ 2Adam/conv2d_164/kernel/m
":  2Adam/conv2d_164/bias/m
0:.  2Adam/conv2d_165/kernel/m
":  2Adam/conv2d_165/bias/m
9:7 2!Adam/conv2d_transpose_34/kernel/m
+:)2Adam/conv2d_transpose_34/bias/m
0:. 2Adam/conv2d_166/kernel/m
": 2Adam/conv2d_166/bias/m
0:.2Adam/conv2d_167/kernel/m
": 2Adam/conv2d_167/bias/m
9:72!Adam/conv2d_transpose_35/kernel/m
+:)2Adam/conv2d_transpose_35/bias/m
0:.2Adam/conv2d_168/kernel/m
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
::8@А2!Adam/conv2d_transpose_32/kernel/v
+:)@2Adam/conv2d_transpose_32/bias/v
1:/А@2Adam/conv2d_162/kernel/v
": @2Adam/conv2d_162/bias/v
0:.@@2Adam/conv2d_163/kernel/v
": @2Adam/conv2d_163/bias/v
9:7 @2!Adam/conv2d_transpose_33/kernel/v
+:) 2Adam/conv2d_transpose_33/bias/v
0:.@ 2Adam/conv2d_164/kernel/v
":  2Adam/conv2d_164/bias/v
0:.  2Adam/conv2d_165/kernel/v
":  2Adam/conv2d_165/bias/v
9:7 2!Adam/conv2d_transpose_34/kernel/v
+:)2Adam/conv2d_transpose_34/bias/v
0:. 2Adam/conv2d_166/kernel/v
": 2Adam/conv2d_166/bias/v
0:.2Adam/conv2d_167/kernel/v
": 2Adam/conv2d_167/bias/v
9:72!Adam/conv2d_transpose_35/kernel/v
+:)2Adam/conv2d_transpose_35/bias/v
0:.2Adam/conv2d_168/kernel/v
": 2Adam/conv2d_168/bias/v
0:.2Adam/conv2d_169/kernel/v
": 2Adam/conv2d_169/bias/v
0:.2Adam/conv2d_170/kernel/v
": 2Adam/conv2d_170/bias/v
ъ2ч
'__inference_model_8_layer_call_fn_94500
'__inference_model_8_layer_call_fn_95324
'__inference_model_8_layer_call_fn_94256
'__inference_model_8_layer_call_fn_95219└
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
╓2╙
B__inference_model_8_layer_call_and_return_conditional_losses_95114
B__inference_model_8_layer_call_and_return_conditional_losses_94869
B__inference_model_8_layer_call_and_return_conditional_losses_94011
B__inference_model_8_layer_call_and_return_conditional_losses_93872└
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
 __inference__wrapped_model_92807┬
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
	RGB_Input         АА
Ю2Ы
0__inference_gaussian_noise_8_layer_call_fn_95344
0__inference_gaussian_noise_8_layer_call_fn_95349┤
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
╘2╤
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95339
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95335┤
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
5__inference_batch_normalization_8_layer_call_fn_95477
5__inference_batch_normalization_8_layer_call_fn_95464
5__inference_batch_normalization_8_layer_call_fn_95400
5__inference_batch_normalization_8_layer_call_fn_95413┤
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
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95433
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95369
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95387
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95451┤
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
╘2╤
*__inference_conv2d_152_layer_call_fn_95497в
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
E__inference_conv2d_152_layer_call_and_return_conditional_losses_95488в
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
*__inference_conv2d_153_layer_call_fn_95517в
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
E__inference_conv2d_153_layer_call_and_return_conditional_losses_95508в
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
Ш2Х
0__inference_max_pooling2d_32_layer_call_fn_92923р
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
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_92917р
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
╘2╤
*__inference_conv2d_154_layer_call_fn_95537в
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
E__inference_conv2d_154_layer_call_and_return_conditional_losses_95528в
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
*__inference_conv2d_155_layer_call_fn_95557в
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
E__inference_conv2d_155_layer_call_and_return_conditional_losses_95548в
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
Ш2Х
0__inference_max_pooling2d_33_layer_call_fn_92935р
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
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_92929р
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
╘2╤
*__inference_conv2d_156_layer_call_fn_95577в
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
E__inference_conv2d_156_layer_call_and_return_conditional_losses_95568в
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
*__inference_conv2d_157_layer_call_fn_95597в
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
E__inference_conv2d_157_layer_call_and_return_conditional_losses_95588в
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
Ш2Х
0__inference_max_pooling2d_34_layer_call_fn_92947р
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
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_92941р
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
╘2╤
*__inference_conv2d_158_layer_call_fn_95617в
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
E__inference_conv2d_158_layer_call_and_return_conditional_losses_95608в
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
*__inference_conv2d_159_layer_call_fn_95637в
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
E__inference_conv2d_159_layer_call_and_return_conditional_losses_95628в
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
Ш2Х
0__inference_max_pooling2d_35_layer_call_fn_92959р
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
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_92953р
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
╘2╤
*__inference_conv2d_160_layer_call_fn_95657в
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
E__inference_conv2d_160_layer_call_and_return_conditional_losses_95648в
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
*__inference_conv2d_161_layer_call_fn_95677в
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
E__inference_conv2d_161_layer_call_and_return_conditional_losses_95668в
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
У2Р
3__inference_conv2d_transpose_32_layer_call_fn_93003╪
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
annotationsк *8в5
3К0,                           А
о2л
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_92993╪
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
annotationsк *8в5
3К0,                           А
╪2╒
.__inference_concatenate_32_layer_call_fn_95690в
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
є2Ё
I__inference_concatenate_32_layer_call_and_return_conditional_losses_95684в
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
*__inference_conv2d_162_layer_call_fn_95710в
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
E__inference_conv2d_162_layer_call_and_return_conditional_losses_95701в
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
*__inference_conv2d_163_layer_call_fn_95730в
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
E__inference_conv2d_163_layer_call_and_return_conditional_losses_95721в
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
Т2П
3__inference_conv2d_transpose_33_layer_call_fn_93047╫
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
annotationsк *7в4
2К/+                           @
н2к
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_93037╫
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
annotationsк *7в4
2К/+                           @
╪2╒
.__inference_concatenate_33_layer_call_fn_95743в
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
є2Ё
I__inference_concatenate_33_layer_call_and_return_conditional_losses_95737в
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
*__inference_conv2d_164_layer_call_fn_95763в
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
E__inference_conv2d_164_layer_call_and_return_conditional_losses_95754в
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
*__inference_conv2d_165_layer_call_fn_95783в
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
E__inference_conv2d_165_layer_call_and_return_conditional_losses_95774в
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
Т2П
3__inference_conv2d_transpose_34_layer_call_fn_93091╫
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
annotationsк *7в4
2К/+                            
н2к
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_93081╫
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
annotationsк *7в4
2К/+                            
╪2╒
.__inference_concatenate_34_layer_call_fn_95796в
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
є2Ё
I__inference_concatenate_34_layer_call_and_return_conditional_losses_95790в
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
*__inference_conv2d_166_layer_call_fn_95816в
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
E__inference_conv2d_166_layer_call_and_return_conditional_losses_95807в
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
*__inference_conv2d_167_layer_call_fn_95836в
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
E__inference_conv2d_167_layer_call_and_return_conditional_losses_95827в
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
Т2П
3__inference_conv2d_transpose_35_layer_call_fn_93135╫
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
annotationsк *7в4
2К/+                           
н2к
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_93125╫
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
annotationsк *7в4
2К/+                           
╪2╒
.__inference_concatenate_35_layer_call_fn_95849в
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
є2Ё
I__inference_concatenate_35_layer_call_and_return_conditional_losses_95843в
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
*__inference_conv2d_168_layer_call_fn_95869в
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
E__inference_conv2d_168_layer_call_and_return_conditional_losses_95860в
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
*__inference_conv2d_169_layer_call_fn_95889в
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
E__inference_conv2d_169_layer_call_and_return_conditional_losses_95880в
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
*__inference_conv2d_170_layer_call_fn_95909в
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
E__inference_conv2d_170_layer_call_and_return_conditional_losses_95900в
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
Ф2С
,__inference_cropping2d_8_layer_call_fn_93150р
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
п2м
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_93144р
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
0__inference_zero_padding2d_8_layer_call_fn_93163р
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
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_93157р
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
#__inference_signature_wrapper_94615	RGB_Input"Ф
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
 А
 __inference__wrapped_model_92807█L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌<в9
2в/
-К*
	RGB_Input         АА
к "MкJ
H
zero_padding2d_84К1
zero_padding2d_8         ААы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95369Ц0123MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95387Ц0123MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ╩
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95433v0123=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ ╩
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95451v0123=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ ├
5__inference_batch_normalization_8_layer_call_fn_95400Й0123MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ├
5__inference_batch_normalization_8_layer_call_fn_95413Й0123MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           в
5__inference_batch_normalization_8_layer_call_fn_95464i0123=в:
3в0
*К'
inputs         АА
p
к ""К         ААв
5__inference_batch_normalization_8_layer_call_fn_95477i0123=в:
3в0
*К'
inputs         АА
p 
к ""К         АА№
I__inference_concatenate_32_layer_call_and_return_conditional_losses_95684о|вy
rвo
mЪj
<К9
inputs/0+                           @
*К'
inputs/1         @
к ".в+
$К!
0         А
Ъ ╘
.__inference_concatenate_32_layer_call_fn_95690б|вy
rвo
mЪj
<К9
inputs/0+                           @
*К'
inputs/1         @
к "!К         А√
I__inference_concatenate_33_layer_call_and_return_conditional_losses_95737н|вy
rвo
mЪj
<К9
inputs/0+                            
*К'
inputs/1            
к "-в*
#К 
0           @
Ъ ╙
.__inference_concatenate_33_layer_call_fn_95743а|вy
rвo
mЪj
<К9
inputs/0+                            
*К'
inputs/1            
к " К           @√
I__inference_concatenate_34_layer_call_and_return_conditional_losses_95790н|вy
rвo
mЪj
<К9
inputs/0+                           
*К'
inputs/1         @@
к "-в*
#К 
0         @@ 
Ъ ╙
.__inference_concatenate_34_layer_call_fn_95796а|вy
rвo
mЪj
<К9
inputs/0+                           
*К'
inputs/1         @@
к " К         @@  
I__inference_concatenate_35_layer_call_and_return_conditional_losses_95843▒~в{
tвq
oЪl
<К9
inputs/0+                           
,К)
inputs/1         АА
к "/в,
%К"
0         АА
Ъ ╫
.__inference_concatenate_35_layer_call_fn_95849д~в{
tвq
oЪl
<К9
inputs/0+                           
,К)
inputs/1         АА
к ""К         АА╣
E__inference_conv2d_152_layer_call_and_return_conditional_losses_95488p899в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_152_layer_call_fn_95497c899в6
/в,
*К'
inputs         АА
к ""К         АА╣
E__inference_conv2d_153_layer_call_and_return_conditional_losses_95508p>?9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ С
*__inference_conv2d_153_layer_call_fn_95517c>?9в6
/в,
*К'
inputs         АА
к ""К         АА╡
E__inference_conv2d_154_layer_call_and_return_conditional_losses_95528lHI7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@
Ъ Н
*__inference_conv2d_154_layer_call_fn_95537_HI7в4
-в*
(К%
inputs         @@
к " К         @@╡
E__inference_conv2d_155_layer_call_and_return_conditional_losses_95548lNO7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@
Ъ Н
*__inference_conv2d_155_layer_call_fn_95557_NO7в4
-в*
(К%
inputs         @@
к " К         @@╡
E__inference_conv2d_156_layer_call_and_return_conditional_losses_95568lXY7в4
-в*
(К%
inputs           
к "-в*
#К 
0            
Ъ Н
*__inference_conv2d_156_layer_call_fn_95577_XY7в4
-в*
(К%
inputs           
к " К            ╡
E__inference_conv2d_157_layer_call_and_return_conditional_losses_95588l^_7в4
-в*
(К%
inputs            
к "-в*
#К 
0            
Ъ Н
*__inference_conv2d_157_layer_call_fn_95597_^_7в4
-в*
(К%
inputs            
к " К            ╡
E__inference_conv2d_158_layer_call_and_return_conditional_losses_95608lhi7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_158_layer_call_fn_95617_hi7в4
-в*
(К%
inputs          
к " К         @╡
E__inference_conv2d_159_layer_call_and_return_conditional_losses_95628lno7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_159_layer_call_fn_95637_no7в4
-в*
(К%
inputs         @
к " К         @╢
E__inference_conv2d_160_layer_call_and_return_conditional_losses_95648mxy7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ О
*__inference_conv2d_160_layer_call_fn_95657`xy7в4
-в*
(К%
inputs         @
к "!К         А╖
E__inference_conv2d_161_layer_call_and_return_conditional_losses_95668n~8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_161_layer_call_fn_95677a~8в5
.в+
)К&
inputs         А
к "!К         А╕
E__inference_conv2d_162_layer_call_and_return_conditional_losses_95701oОП8в5
.в+
)К&
inputs         А
к "-в*
#К 
0         @
Ъ Р
*__inference_conv2d_162_layer_call_fn_95710bОП8в5
.в+
)К&
inputs         А
к " К         @╖
E__inference_conv2d_163_layer_call_and_return_conditional_losses_95721nФХ7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ П
*__inference_conv2d_163_layer_call_fn_95730aФХ7в4
-в*
(К%
inputs         @
к " К         @╖
E__inference_conv2d_164_layer_call_and_return_conditional_losses_95754nде7в4
-в*
(К%
inputs           @
к "-в*
#К 
0            
Ъ П
*__inference_conv2d_164_layer_call_fn_95763aде7в4
-в*
(К%
inputs           @
к " К            ╖
E__inference_conv2d_165_layer_call_and_return_conditional_losses_95774nкл7в4
-в*
(К%
inputs            
к "-в*
#К 
0            
Ъ П
*__inference_conv2d_165_layer_call_fn_95783aкл7в4
-в*
(К%
inputs            
к " К            ╖
E__inference_conv2d_166_layer_call_and_return_conditional_losses_95807n║╗7в4
-в*
(К%
inputs         @@ 
к "-в*
#К 
0         @@
Ъ П
*__inference_conv2d_166_layer_call_fn_95816a║╗7в4
-в*
(К%
inputs         @@ 
к " К         @@╖
E__inference_conv2d_167_layer_call_and_return_conditional_losses_95827n└┴7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@
Ъ П
*__inference_conv2d_167_layer_call_fn_95836a└┴7в4
-в*
(К%
inputs         @@
к " К         @@╗
E__inference_conv2d_168_layer_call_and_return_conditional_losses_95860r╨╤9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_168_layer_call_fn_95869e╨╤9в6
/в,
*К'
inputs         АА
к ""К         АА╗
E__inference_conv2d_169_layer_call_and_return_conditional_losses_95880r╓╫9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_169_layer_call_fn_95889e╓╫9в6
/в,
*К'
inputs         АА
к ""К         АА╗
E__inference_conv2d_170_layer_call_and_return_conditional_losses_95900r▄▌9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА
Ъ У
*__inference_conv2d_170_layer_call_fn_95909e▄▌9в6
/в,
*К'
inputs         АА
к ""К         ААц
N__inference_conv2d_transpose_32_layer_call_and_return_conditional_losses_92993УДЕJвG
@в=
;К8
inputs,                           А
к "?в<
5К2
0+                           @
Ъ ╛
3__inference_conv2d_transpose_32_layer_call_fn_93003ЖДЕJвG
@в=
;К8
inputs,                           А
к "2К/+                           @х
N__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_93037ТЪЫIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                            
Ъ ╜
3__inference_conv2d_transpose_33_layer_call_fn_93047ЕЪЫIвF
?в<
:К7
inputs+                           @
к "2К/+                            х
N__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_93081Т░▒IвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           
Ъ ╜
3__inference_conv2d_transpose_34_layer_call_fn_93091Е░▒IвF
?в<
:К7
inputs+                            
к "2К/+                           х
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_93125Т╞╟IвF
?в<
:К7
inputs+                           
к "?в<
5К2
0+                           
Ъ ╜
3__inference_conv2d_transpose_35_layer_call_fn_93135Е╞╟IвF
?в<
:К7
inputs+                           
к "2К/+                           ъ
G__inference_cropping2d_8_layer_call_and_return_conditional_losses_93144ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_cropping2d_8_layer_call_fn_93150СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ┐
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95335p=в:
3в0
*К'
inputs         АА
p
к "/в,
%К"
0         АА
Ъ ┐
K__inference_gaussian_noise_8_layer_call_and_return_conditional_losses_95339p=в:
3в0
*К'
inputs         АА
p 
к "/в,
%К"
0         АА
Ъ Ч
0__inference_gaussian_noise_8_layer_call_fn_95344c=в:
3в0
*К'
inputs         АА
p
к ""К         ААЧ
0__inference_gaussian_noise_8_layer_call_fn_95349c=в:
3в0
*К'
inputs         АА
p 
к ""К         ААю
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_92917ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_32_layer_call_fn_92923СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_92929ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_33_layer_call_fn_92935СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_92941ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_34_layer_call_fn_92947СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_92953ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_35_layer_call_fn_92959СRвO
HвE
CК@
inputs4                                    
к ";К84                                    М
B__inference_model_8_layer_call_and_return_conditional_losses_93872┼L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌DвA
:в7
-К*
	RGB_Input         АА
p

 
к "/в,
%К"
0         АА
Ъ М
B__inference_model_8_layer_call_and_return_conditional_losses_94011┼L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌DвA
:в7
-К*
	RGB_Input         АА
p 

 
к "/в,
%К"
0         АА
Ъ Й
B__inference_model_8_layer_call_and_return_conditional_losses_94869┬L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌Aв>
7в4
*К'
inputs         АА
p

 
к "/в,
%К"
0         АА
Ъ Й
B__inference_model_8_layer_call_and_return_conditional_losses_95114┬L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌Aв>
7в4
*К'
inputs         АА
p 

 
к "/в,
%К"
0         АА
Ъ ф
'__inference_model_8_layer_call_fn_94256╕L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌DвA
:в7
-К*
	RGB_Input         АА
p

 
к ""К         ААф
'__inference_model_8_layer_call_fn_94500╕L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌DвA
:в7
-К*
	RGB_Input         АА
p 

 
к ""К         ААс
'__inference_model_8_layer_call_fn_95219╡L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌Aв>
7в4
*К'
inputs         АА
p

 
к ""К         ААс
'__inference_model_8_layer_call_fn_95324╡L012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌Aв>
7в4
*К'
inputs         АА
p 

 
к ""К         ААР
#__inference_signature_wrapper_94615шL012389>?HINOXY^_hinoxy~ДЕОПФХЪЫдекл░▒║╗└┴╞╟╨╤╓╫▄▌IвF
в 
?к<
:
	RGB_Input-К*
	RGB_Input         АА"MкJ
H
zero_padding2d_84К1
zero_padding2d_8         ААю
K__inference_zero_padding2d_8_layer_call_and_return_conditional_losses_93157ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_zero_padding2d_8_layer_call_fn_93163СRвO
HвE
CК@
inputs4                                    
к ";К84                                    