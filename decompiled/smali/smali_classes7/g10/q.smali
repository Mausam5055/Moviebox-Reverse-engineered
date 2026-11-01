.class public Lg10/q;
.super Lg10/y;


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lg10/y;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lg10/q;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    aput v1, v0, v2

    const/16 v4, 0x1000

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x4

    aput v1, v0, v4

    const/16 v6, 0x30

    const/4 v7, 0x5

    aput v6, v0, v7

    const/4 v6, 0x6

    aput v1, v0, v6

    const/4 v8, 0x7

    aput v1, v0, v8

    const/16 v9, 0x4000

    const/16 v10, 0x8

    aput v9, v0, v10

    const/16 v9, 0x9

    aput v1, v0, v9

    const/16 v11, 0xa

    aput v1, v0, v11

    const/16 v11, 0xb

    aput v1, v0, v11

    const/16 v11, 0xc

    aput v1, v0, v11

    const/16 v11, 0xd

    aput v1, v0, v11

    const/16 v11, 0xe

    aput v1, v0, v11

    const/16 v11, 0xf

    aput v1, v0, v11

    const/16 v11, 0x10

    const v12, 0x22222222

    aput v12, v0, v11

    const/16 v11, 0x11

    aput v12, v0, v11

    const/16 v11, 0x12

    aput v12, v0, v11

    const/16 v11, 0x13

    aput v12, v0, v11

    const/16 v11, 0x14

    aput v12, v0, v11

    const/16 v11, 0x15

    aput v12, v0, v11

    const/16 v11, 0x16

    aput v12, v0, v11

    const/16 v11, 0x17

    aput v12, v0, v11

    const/16 v11, 0x18

    aput v12, v0, v11

    const/16 v11, 0x19

    aput v12, v0, v11

    const/16 v11, 0x1a

    aput v12, v0, v11

    const/16 v11, 0x1b

    aput v12, v0, v11

    const/16 v11, 0x1c

    aput v12, v0, v11

    const/16 v11, 0x1d

    aput v12, v0, v11

    const/16 v11, 0x1e

    aput v12, v0, v11

    const/16 v11, 0x1f

    aput v12, v0, v11

    new-array v0, v10, [I

    sput-object v0, Lg10/q;->b:[I

    const/16 v10, 0x130

    aput v10, v0, v1

    const v1, 0x11111110

    aput v1, v0, v3

    const v1, 0x22222211

    aput v1, v0, v2

    const v1, 0x14111222

    aput v1, v0, v5

    const v1, 0x11112111

    aput v1, v0, v4

    const v2, 0x11111165

    aput v2, v0, v7

    aput v1, v0, v6

    const v1, 0x1211111

    aput v1, v0, v8

    const-string v0, "ISO-2022-CN"

    sput-object v0, Lg10/q;->d:Ljava/lang/String;

    sput v9, Lg10/q;->c:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    sget-object v0, Lg10/q;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lg10/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    sget v0, Lg10/q;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    sget-object v0, Lg10/q;->b:[I

    return-object v0
.end method
