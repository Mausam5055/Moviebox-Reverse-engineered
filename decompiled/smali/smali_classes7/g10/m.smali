.class public Lg10/m;
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

    sput-object v0, Lg10/m;->a:[I

    const/4 v1, 0x0

    const v2, 0x22222222

    aput v2, v0, v1

    const v3, 0x222222

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x22220222

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v7, 0x5

    aput v2, v0, v7

    const/4 v8, 0x6

    aput v2, v0, v8

    const/4 v9, 0x7

    aput v2, v0, v9

    const/16 v10, 0x8

    aput v2, v0, v10

    const/16 v10, 0x9

    aput v2, v0, v10

    const/16 v10, 0xa

    aput v2, v0, v10

    const/16 v10, 0xb

    aput v2, v0, v10

    const/16 v10, 0xc

    aput v2, v0, v10

    const/16 v10, 0xd

    aput v2, v0, v10

    const/16 v10, 0xe

    aput v2, v0, v10

    const/16 v10, 0xf

    aput v2, v0, v10

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v10, 0x11

    const/high16 v11, 0x6000000

    aput v11, v0, v10

    const/16 v10, 0x12

    aput v1, v0, v10

    const/16 v10, 0x13

    aput v1, v0, v10

    const/16 v10, 0x14

    const v11, 0x44444430

    aput v11, v0, v10

    const/16 v10, 0x15

    const v11, 0x11111155

    aput v11, v0, v10

    const/16 v10, 0x16

    const v11, 0x11111111

    aput v11, v0, v10

    const/16 v10, 0x17

    aput v11, v0, v10

    const/16 v10, 0x18

    const v11, 0x33331311

    aput v11, v0, v10

    const/16 v10, 0x19

    const v11, 0x33333333

    aput v11, v0, v10

    const/16 v10, 0x1a

    aput v11, v0, v10

    const/16 v10, 0x1b

    aput v11, v0, v10

    const/16 v10, 0x1c

    aput v11, v0, v10

    const/16 v10, 0x1d

    aput v11, v0, v10

    const/16 v10, 0x1e

    aput v11, v0, v10

    const/16 v10, 0x1f

    const v11, 0x3333333

    aput v11, v0, v10

    new-array v0, v8, [I

    sput-object v0, Lg10/m;->b:[I

    const v8, 0x14333011

    aput v8, v0, v1

    const v1, 0x22111111

    aput v1, v0, v4

    const v1, 0x10122222

    aput v1, v0, v3

    const v1, 0x11111000

    aput v1, v0, v6

    const v1, 0x101115

    aput v1, v0, v5

    aput v2, v0, v7

    const-string v0, "x-euc-tw"

    sput-object v0, Lg10/m;->d:Ljava/lang/String;

    sput v9, Lg10/m;->c:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    sget-object v0, Lg10/m;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lg10/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    sget v0, Lg10/m;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    sget-object v0, Lg10/m;->b:[I

    return-object v0
.end method
