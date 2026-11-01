.class public Lg10/g;
.super Lg10/y;


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lg10/y;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lg10/g;->a:[I

    const v1, 0x22222221

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x222222

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const v4, 0x22222222

    aput v4, v0, v1

    const v5, 0x22220222

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v4, v0, v5

    const/4 v5, 0x5

    aput v4, v0, v5

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v5, 0x7

    aput v4, v0, v5

    const/16 v5, 0x8

    aput v4, v0, v5

    const/16 v5, 0x9

    aput v4, v0, v5

    const/16 v5, 0xa

    aput v4, v0, v5

    const/16 v5, 0xb

    aput v4, v0, v5

    const/16 v5, 0xc

    aput v4, v0, v5

    const/16 v5, 0xd

    aput v4, v0, v5

    const/16 v5, 0xe

    aput v4, v0, v5

    const/16 v5, 0xf

    aput v4, v0, v5

    const/16 v5, 0x10

    const v7, 0x22222202

    aput v7, v0, v5

    const/16 v5, 0x11

    const v7, 0x1012122

    aput v7, v0, v5

    const/16 v5, 0x12

    const v7, 0x22222220

    aput v7, v0, v5

    const/16 v5, 0x13

    const v7, 0x11012122

    aput v7, v0, v5

    const/16 v5, 0x14

    aput v4, v0, v5

    const/16 v5, 0x15

    aput v4, v0, v5

    const/16 v5, 0x16

    aput v4, v0, v5

    const/16 v5, 0x17

    aput v4, v0, v5

    const/16 v4, 0x18

    const v5, 0x11111111

    aput v5, v0, v4

    const/16 v4, 0x19

    aput v5, v0, v4

    const/16 v4, 0x1a

    const v7, 0x21111111

    aput v7, v0, v4

    const/16 v4, 0x1b

    aput v5, v0, v4

    const/16 v4, 0x1c

    aput v5, v0, v4

    const/16 v4, 0x1d

    aput v5, v0, v4

    const/16 v4, 0x1e

    aput v7, v0, v4

    const/16 v4, 0x1f

    aput v5, v0, v4

    new-array v0, v6, [I

    sput-object v0, Lg10/g;->b:[I

    const v4, 0x22111031

    aput v4, v0, v2

    const v2, 0x14510412

    aput v2, v0, v3

    const/16 v2, 0x41

    aput v2, v0, v1

    const-string v0, "windows-1252"

    sput-object v0, Lg10/g;->d:Ljava/lang/String;

    sput v6, Lg10/g;->c:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    sget-object v0, Lg10/g;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lg10/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    sget v0, Lg10/g;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    sget-object v0, Lg10/g;->b:[I

    return-object v0
.end method
