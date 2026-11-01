.class public Lg10/v;
.super Lg10/y;


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lg10/y;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lg10/v;->a:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const v2, 0x200100

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v4, 0x3000

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x4

    aput v1, v0, v4

    const v6, 0x333330

    const/4 v7, 0x5

    aput v6, v0, v7

    const/4 v6, 0x6

    aput v1, v0, v6

    const/4 v8, 0x7

    aput v1, v0, v8

    const/16 v9, 0x8

    aput v1, v0, v9

    const/16 v9, 0x9

    aput v1, v0, v9

    const/16 v9, 0xa

    aput v1, v0, v9

    const/16 v9, 0xb

    aput v1, v0, v9

    const/16 v9, 0xc

    aput v1, v0, v9

    const/16 v9, 0xd

    aput v1, v0, v9

    const/16 v9, 0xe

    aput v1, v0, v9

    const/16 v9, 0xf

    aput v1, v0, v9

    const/16 v9, 0x10

    aput v1, v0, v9

    const/16 v9, 0x11

    aput v1, v0, v9

    const/16 v9, 0x12

    aput v1, v0, v9

    const/16 v9, 0x13

    aput v1, v0, v9

    const/16 v9, 0x14

    aput v1, v0, v9

    const/16 v9, 0x15

    aput v1, v0, v9

    const/16 v9, 0x16

    aput v1, v0, v9

    const/16 v9, 0x17

    aput v1, v0, v9

    const/16 v9, 0x18

    aput v1, v0, v9

    const/16 v9, 0x19

    aput v1, v0, v9

    const/16 v9, 0x1a

    aput v1, v0, v9

    const/16 v9, 0x1b

    aput v1, v0, v9

    const/16 v9, 0x1c

    aput v1, v0, v9

    const/16 v9, 0x1d

    aput v1, v0, v9

    const/16 v9, 0x1e

    aput v1, v0, v9

    const/16 v9, 0x1f

    const/high16 v10, 0x54000000

    aput v10, v0, v9

    new-array v0, v8, [I

    sput-object v0, Lg10/v;->b:[I

    const v8, 0x11341775

    aput v8, v0, v1

    const v1, 0x22221111

    aput v1, v0, v3

    const v1, 0x11666622

    aput v1, v0, v2

    const v1, 0x66266666

    aput v1, v0, v5

    const v1, 0x17756666

    aput v1, v0, v4

    const v1, 0x66616685

    aput v1, v0, v7

    const v1, 0x116666

    aput v1, v0, v6

    const-string v0, "UTF-16BE"

    sput-object v0, Lg10/v;->d:Ljava/lang/String;

    sput v6, Lg10/v;->c:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    sget-object v0, Lg10/v;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lg10/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    sget v0, Lg10/v;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    sget-object v0, Lg10/v;->b:[I

    return-object v0
.end method
