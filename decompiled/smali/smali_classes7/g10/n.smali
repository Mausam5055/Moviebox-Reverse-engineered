.class public Lg10/n;
.super Lg10/y;


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lg10/y;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lg10/n;->a:[I

    const/4 v1, 0x0

    const v2, 0x11111111

    aput v2, v0, v1

    const v3, 0x111111

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x11110111

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v7, 0x5

    aput v2, v0, v7

    const v2, 0x33333333

    const/4 v8, 0x6

    aput v2, v0, v8

    const v2, 0x11111133

    const/4 v9, 0x7

    aput v2, v0, v9

    const/16 v2, 0x8

    const v10, 0x22222222

    aput v10, v0, v2

    const/16 v2, 0x9

    aput v10, v0, v2

    const/16 v2, 0xa

    aput v10, v0, v2

    const/16 v2, 0xb

    aput v10, v0, v2

    const/16 v2, 0xc

    aput v10, v0, v2

    const/16 v2, 0xd

    aput v10, v0, v2

    const/16 v2, 0xe

    aput v10, v0, v2

    const/16 v2, 0xf

    const v10, 0x42222222

    aput v10, v0, v2

    const/16 v2, 0x10

    const v10, 0x66666665

    aput v10, v0, v2

    const/16 v2, 0x11

    const v10, 0x66666666

    aput v10, v0, v2

    const/16 v11, 0x12

    aput v10, v0, v11

    const/16 v11, 0x13

    aput v10, v0, v11

    const/16 v11, 0x14

    aput v10, v0, v11

    const/16 v11, 0x15

    aput v10, v0, v11

    const/16 v11, 0x16

    aput v10, v0, v11

    const/16 v11, 0x17

    aput v10, v0, v11

    const/16 v11, 0x18

    aput v10, v0, v11

    const/16 v11, 0x19

    aput v10, v0, v11

    const/16 v11, 0x1a

    aput v10, v0, v11

    const/16 v11, 0x1b

    aput v10, v0, v11

    const/16 v11, 0x1c

    aput v10, v0, v11

    const/16 v11, 0x1d

    aput v10, v0, v11

    const/16 v11, 0x1e

    aput v10, v0, v11

    const/16 v10, 0x1f

    const v11, 0x6666666

    aput v11, v0, v10

    new-array v0, v8, [I

    sput-object v0, Lg10/n;->b:[I

    const v8, 0x13000001

    aput v8, v0, v1

    const v1, 0x22111111

    aput v1, v0, v4

    const v1, 0x1122222

    aput v1, v0, v3

    const v1, 0x11110014

    aput v1, v0, v6

    const v1, 0x12111511

    aput v1, v0, v5

    aput v2, v0, v7

    const-string v0, "GB18030"

    sput-object v0, Lg10/n;->d:Ljava/lang/String;

    sput v9, Lg10/n;->c:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    sget-object v0, Lg10/n;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lg10/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    sget v0, Lg10/n;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    sget-object v0, Lg10/n;->b:[I

    return-object v0
.end method
