# Set-Renewal
## SYNOPSIS
Sets the renewal settings for a subscription.
## DESCRIPTION
The Set-Renewal function is used to update the renewal settings for a subscription in an API. It takes in various parameters such as customer ID, product ID, SKU ID, plan ID, subscription ID, quantity, auto-renew setting, and subscription name. It then constructs the necessary API endpoint and request body to update the subscription's renewal settings.
# PARAMETERS

## **-customerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer associated with the subscription.

  ## **-ProductId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the product associated with the subscription.

  ## **-SkuID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the SKU associated with the subscription. (ccpSkuId)

  ## **-PlanID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the plan associated with the subscription. (ccpPlanId)

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the subscription to be updated.

  ## **-Quantity**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The quantity of the subscription.

  ## **-AutoRenew**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The auto-renew setting for the subscription. Valid values are "auto-off" and "auto-on".

  ## **-SubscriptionName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The display name of the subscription.

 #### EXAMPLE 1
```powershell
P
>
 
S
e
t
-
R
e
n
e
w
a
l
 
-
c
u
s
t
o
m
e
r
I
D
 
"
1
2
3
4
5
"
 
-
P
r
o
d
u
c
t
I
d
 
"
M
i
c
r
o
s
o
f
t
3
6
5
E
a
n
d
F
N
C
E
-
u
k
n
c
e
"
 
-
S
k
u
I
D
 
"
U
S
C
F
Q
7
T
T
C
0
L
H
1
8
0
0
0
1
"
 
-
P
l
a
n
I
D
 
"
M
i
c
r
o
s
o
f
t
-
3
6
5
-
B
u
s
i
n
e
s
s
-
B
a
s
i
c
"
 
-
S
u
b
s
c
r
i
p
t
i
o
n
I
D
 
"
b
9
b
d
9
b
3
0
-
6
a
e
3
-
4
d
1
5
-
c
4
3
8
-
f
3
c
d
e
8
9
8
8
8
e
a
"
 
-
Q
u
a
n
t
i
t
y
 
1
 
-
A
u
t
o
R
e
n
e
w
 
"
a
u
t
o
-
o
n
"
 
-
S
u
b
s
c
r
i
p
t
i
o
n
N
a
m
e
 
"
M
i
c
r
o
s
o
f
t
 
3
6
5
 
B
u
s
i
n
e
s
s
 
B
a
s
i
c
"
```

