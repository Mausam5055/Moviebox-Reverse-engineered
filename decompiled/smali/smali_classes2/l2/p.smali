.class public abstract Ll2/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/p$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/16 v5, 0x10

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    sput-object v6, Ll2/p;->a:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    sput-object v6, Ll2/p;->b:[I

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    sput-object v6, Ll2/p;->c:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    sput-object v6, Ll2/p;->d:[I

    const/16 v6, 0xa

    const/16 v7, 0xc

    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v8

    sput-object v8, Ll2/p;->e:[I

    const/16 v8, 0xf

    const/16 v9, 0x9

    filled-new-array {v4, v9, v7, v8}, [I

    move-result-object v8

    sput-object v8, Ll2/p;->f:[I

    filled-new-array {v1, v2, v4, v0}, [I

    move-result-object v1

    sput-object v1, Ll2/p;->g:[I

    const/16 v1, 0xd

    const/16 v2, 0xb

    filled-new-array {v9, v2, v1, v5}, [I

    move-result-object v1

    sput-object v1, Ll2/p;->h:[I

    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v0

    sput-object v0, Ll2/p;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data

    :array_3
    .array-data 4
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1f400
        0x5622
        0xac44
        0x15888
        0x2b110
        0x56220
        0x2ee0
        0x5dc0
        0xbb80
        0x17700
        0x2ee00
        0x5dc00
    .end array-data
.end method

.method private static a([BI)V
    .locals 3

    add-int/lit8 v0, p1, -0x2

    aget-byte v1, p0, v0

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2}, Landroidx/media3/common/util/a1;->v([BIII)I

    move-result p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "CRC check failed"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static b([B)I
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_0
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    goto :goto_2

    :cond_0
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    :goto_1
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    move v0, v5

    goto :goto_2

    :cond_1
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    goto :goto_1

    :cond_2
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_3

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 p0, p0, 0xe

    :cond_3
    return p0
.end method

.method public static c(I)I
    .locals 1

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_7

    const v0, -0x180fe80

    if-eq p0, v0, :cond_7

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_7

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_3

    :cond_0
    const v0, 0x64582025

    if-eq p0, v0, :cond_6

    const v0, 0x25205864

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    const v0, 0x40411bf2

    if-eq p0, v0, :cond_5

    const v0, -0xde4bec0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x71c442e8

    if-eq p0, v0, :cond_4

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x2

    return p0

    :cond_7
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method private static d([B)Landroidx/media3/common/util/i0;
    .locals 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Ll2/p;->e([B)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/common/util/i0;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/i0;-><init>([B)V

    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/i0;-><init>([B)V

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->b()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/i0;->f(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->n([B)V

    return-object v1

    :cond_3
    :goto_2
    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/i0;-><init>([B)V

    return-object v0
.end method

.method private static e([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/16 v1, 0x25

    if-eq p0, v1, :cond_0

    const/16 v1, -0xe

    if-eq p0, v1, :cond_0

    const/16 v1, -0x18

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static f(Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_1

    const/16 p0, 0x1000

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_0
    and-int/lit16 p0, p0, 0xfc

    :goto_1
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_2
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_5
    :goto_4
    const/16 p0, 0x400

    return p0
.end method

.method public static g([B)I
    .locals 6

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v2

    :goto_0
    and-int/lit16 p0, p0, 0xfc

    :goto_1
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_3

    :cond_0
    aget-byte v0, p0, v2

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v3

    :goto_2
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1

    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    goto :goto_2

    :cond_2
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v4

    goto :goto_0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static h([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;
    .locals 6

    invoke-static {p0}, Ll2/p;->d([B)Landroidx/media3/common/util/i0;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    sget-object v1, Ll2/p;->a:[I

    aget v0, v1, v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    sget-object v2, Ll2/p;->b:[I

    aget v1, v2, v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    sget-object v3, Ll2/p;->c:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    add-int/2addr v0, p0

    new-instance p0, Landroidx/media3/common/r$b;

    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    const-string p1, "audio/vnd.dts"

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    return-object p0
.end method

.method public static i([B)Ll2/p$b;
    .locals 17

    invoke-static/range {p0 .. p0}, Ll2/p;->d([B)Landroidx/media3/common/util/i0;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x8

    if-nez v3, :cond_0

    const/16 v3, 0x10

    move v6, v5

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    move v6, v4

    :goto_0
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v13

    add-int/2addr v13, v7

    mul-int/lit16 v13, v13, 0x200

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v14

    if-eqz v14, :cond_1

    const/16 v14, 0x24

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v11

    add-int/2addr v11, v7

    if-ne v14, v7, :cond_5

    if-ne v11, v7, :cond_5

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v11

    move v14, v9

    :goto_1
    if-ge v14, v2, :cond_3

    shr-int v15, v11, v14

    and-int/2addr v15, v7

    if-ne v15, v7, :cond_2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    add-int/2addr v2, v7

    shl-int/2addr v2, v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v11

    add-int/2addr v11, v7

    :goto_2
    if-ge v9, v11, :cond_4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move v9, v13

    goto :goto_3

    :cond_5
    const-string v0, "Multiple audio presentations or assets not supported"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    move v10, v8

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/i0;->r(I)V

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_7

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_8
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->s(I)V

    :cond_9
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->r(I)V

    sget-object v2, Ll2/p;->d:[I

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    add-int/2addr v0, v7

    move v11, v2

    goto :goto_4

    :cond_a
    const v0, -0x7fffffff

    move v11, v0

    move v0, v8

    :goto_4
    if-eqz v6, :cond_e

    if-eqz v10, :cond_d

    if-eq v10, v7, :cond_c

    if-ne v10, v1, :cond_b

    const v1, 0xbb80

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported reference clock code in DTS HD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    const v1, 0xac44

    goto :goto_5

    :cond_d
    const/16 v1, 0x7d00

    :goto_5
    int-to-long v2, v9

    const-wide/32 v4, 0xf4240

    int-to-long v6, v1

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    :goto_6
    move-wide v13, v1

    goto :goto_7

    :cond_e
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    :goto_7
    new-instance v1, Ll2/p$b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    move-object v8, v1

    move v10, v0

    invoke-direct/range {v8 .. v16}, Ll2/p$b;-><init>(Ljava/lang/String;IIIJILl2/p$a;)V

    return-object v1
.end method

.method public static j([B)I
    .locals 1

    invoke-static {p0}, Ll2/p;->d([B)Landroidx/media3/common/util/i0;

    move-result-object p0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static k([BLjava/util/concurrent/atomic/AtomicInteger;)Ll2/p$b;
    .locals 17

    invoke-static/range {p0 .. p0}, Ll2/p;->d([B)Landroidx/media3/common/util/i0;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    const v2, 0x40411bf2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v2, Ll2/p;->e:[I

    invoke-static {v0, v2, v4}, Ll2/p;->m(Landroidx/media3/common/util/i0;[IZ)I

    move-result v2

    add-int/2addr v2, v4

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v5, p0

    invoke-static {v5, v2}, Ll2/p;->a([BI)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v4, :cond_2

    if-ne v6, v5, :cond_1

    const/16 v6, 0x180

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported base duration index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    const/16 v6, 0x1e0

    goto :goto_1

    :cond_3
    const/16 v6, 0x200

    :goto_1
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v8

    add-int/2addr v8, v4

    mul-int/2addr v6, v8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v8

    if-eqz v8, :cond_6

    if-eq v8, v4, :cond_5

    if-ne v8, v5, :cond_4

    const v7, 0xbb80

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported clock rate index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    const v7, 0xac44

    goto :goto_2

    :cond_6
    const/16 v7, 0x7d00

    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x24

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_7
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    shl-int v5, v4, v5

    mul-int/2addr v5, v7

    int-to-long v8, v6

    const-wide/32 v10, 0xf4240

    int-to-long v12, v7

    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v6

    :goto_3
    move v11, v5

    move-wide v13, v6

    goto :goto_4

    :cond_8
    const-string v0, "Only supports full channel mask-based audio presentation"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    const v5, -0x7fffffff

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :goto_4
    move v5, v3

    move v6, v5

    :goto_5
    if-ge v5, v1, :cond_a

    sget-object v7, Ll2/p;->f:[I

    invoke-static {v0, v7, v4}, Ll2/p;->m(Landroidx/media3/common/util/i0;[IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    sget-object v1, Ll2/p;->g:[I

    invoke-static {v0, v1, v4}, Ll2/p;->m(Landroidx/media3/common/util/i0;[IZ)I

    move-result v1

    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_6

    :cond_b
    move-object/from16 v5, p1

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Ll2/p;->h:[I

    invoke-static {v0, v1, v4}, Ll2/p;->m(Landroidx/media3/common/util/i0;[IZ)I

    move-result v3

    :cond_c
    add-int/2addr v6, v3

    add-int v12, v2, v6

    new-instance v0, Ll2/p$b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    const/4 v10, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Ll2/p$b;-><init>(Ljava/lang/String;IIIJILl2/p$a;)V

    return-object v0
.end method

.method public static l([B)I
    .locals 2

    invoke-static {p0}, Ll2/p;->d([B)Landroidx/media3/common/util/i0;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    sget-object v0, Ll2/p;->i:[I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ll2/p;->m(Landroidx/media3/common/util/i0;[IZ)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method private static m(Landroidx/media3/common/util/i0;[IZ)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    move p2, v0

    :goto_1
    if-ge v0, v2, :cond_1

    aget v1, p1, v0

    const/4 v3, 0x1

    shl-int v1, v3, v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p2

    :cond_2
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
