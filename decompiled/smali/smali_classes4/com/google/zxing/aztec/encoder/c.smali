.class public abstract Lcom/google/zxing/aztec/encoder/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static a(Lid/a;II)[I
    .locals 7

    new-array p2, p2, [I

    invoke-virtual {p0}, Lid/a;->m()I

    move-result v0

    div-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_1

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lid/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-int v5, p1, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aput v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private static b(Lid/b;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    move v2, v1

    :goto_1
    add-int v3, p1, v0

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v2, v1}, Lid/b;->r(II)V

    invoke-virtual {p0, v2, v3}, Lid/b;->r(II)V

    invoke-virtual {p0, v1, v2}, Lid/b;->r(II)V

    invoke-virtual {p0, v3, v2}, Lid/b;->r(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    invoke-virtual {p0, v0, v0}, Lid/b;->r(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lid/b;->r(II)V

    invoke-virtual {p0, v0, v1}, Lid/b;->r(II)V

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lid/b;->r(II)V

    invoke-virtual {p0, p1, v1}, Lid/b;->r(II)V

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p1, p2}, Lid/b;->r(II)V

    return-void
.end method

.method private static c(Lid/b;ZILid/a;)V
    .locals 2

    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :goto_0
    const/4 p1, 0x7

    if-ge v0, p1, :cond_9

    add-int/lit8 p1, p2, -0x3

    add-int/2addr p1, v0

    invoke-virtual {p3, v0}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, -0x5

    invoke-virtual {p0, p1, v1}, Lid/b;->r(II)V

    :cond_0
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p2, 0x5

    invoke-virtual {p0, v1, p1}, Lid/b;->r(II)V

    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x5

    invoke-virtual {p0, p1, v1}, Lid/b;->r(II)V

    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, p2, -0x5

    invoke-virtual {p0, v1, p1}, Lid/b;->r(II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/16 p1, 0xa

    if-ge v0, p1, :cond_9

    add-int/lit8 p1, p2, -0x5

    add-int/2addr p1, v0

    div-int/lit8 v1, v0, 0x5

    add-int/2addr p1, v1

    invoke-virtual {p3, v0}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {p0, p1, v1}, Lid/b;->r(II)V

    :cond_5
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, p2, 0x7

    invoke-virtual {p0, v1, p1}, Lid/b;->r(II)V

    :cond_6
    rsub-int/lit8 v1, v0, 0x1d

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p2, 0x7

    invoke-virtual {p0, p1, v1}, Lid/b;->r(II)V

    :cond_7
    rsub-int/lit8 v1, v0, 0x27

    invoke-virtual {p3, v1}, Lid/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {p0, v1, p1}, Lid/b;->r(II)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .locals 1

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/aztec/encoder/c;->e([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static e([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .locals 21

    const/4 v0, 0x2

    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a()Lid/a;

    move-result-object v1

    invoke-virtual {v1}, Lid/a;->m()I

    move-result v2

    mul-int v2, v2, p1

    div-int/lit8 v2, v2, 0x64

    const/16 v3, 0xb

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lid/a;->m()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_5

    if-gez p2, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    if-gt v9, v5, :cond_4

    invoke-static {v9, v4}, Lcom/google/zxing/aztec/encoder/c;->j(IZ)I

    move-result v5

    sget-object v10, Lcom/google/zxing/aztec/encoder/c;->a:[I

    aget v10, v10, v9

    rem-int v11, v5, v10

    sub-int v11, v5, v11

    invoke-static {v1, v10}, Lcom/google/zxing/aztec/encoder/c;->i(Lid/a;I)Lid/a;

    move-result-object v1

    invoke-virtual {v1}, Lid/a;->m()I

    move-result v12

    add-int/2addr v12, v2

    const-string v2, "Data to large for user specified layer"

    if-gt v12, v11, :cond_3

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lid/a;->m()I

    move-result v11

    mul-int/lit8 v12, v10, 0x40

    if-gt v11, v12, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const-string v1, "Illegal value %s for layers"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v9, 0x0

    move v10, v7

    move v11, v10

    :goto_1
    if-gt v10, v5, :cond_1d

    const/4 v12, 0x3

    if-gt v10, v12, :cond_6

    move v12, v8

    goto :goto_2

    :cond_6
    move v12, v7

    :goto_2
    if-eqz v12, :cond_7

    add-int/lit8 v13, v10, 0x1

    goto :goto_3

    :cond_7
    move v13, v10

    :goto_3
    invoke-static {v13, v12}, Lcom/google/zxing/aztec/encoder/c;->j(IZ)I

    move-result v14

    if-le v4, v14, :cond_8

    move v3, v8

    goto/16 :goto_11

    :cond_8
    if-eqz v9, :cond_9

    sget-object v15, Lcom/google/zxing/aztec/encoder/c;->a:[I

    aget v15, v15, v13

    if-eq v11, v15, :cond_a

    :cond_9
    sget-object v9, Lcom/google/zxing/aztec/encoder/c;->a:[I

    aget v9, v9, v13

    invoke-static {v1, v9}, Lcom/google/zxing/aztec/encoder/c;->i(Lid/a;I)Lid/a;

    move-result-object v11

    move-object/from16 v20, v11

    move v11, v9

    move-object/from16 v9, v20

    :cond_a
    rem-int v15, v14, v11

    sub-int v15, v14, v15

    if-eqz v12, :cond_b

    invoke-virtual {v9}, Lid/a;->m()I

    move-result v3

    mul-int/lit8 v5, v11, 0x40

    if-le v3, v5, :cond_b

    goto/16 :goto_10

    :cond_b
    invoke-virtual {v9}, Lid/a;->m()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v15, :cond_1c

    move-object v1, v9

    move v10, v11

    move v4, v12

    move v9, v13

    move v5, v14

    :cond_c
    :goto_4
    invoke-static {v1, v5, v10}, Lcom/google/zxing/aztec/encoder/c;->f(Lid/a;II)Lid/a;

    move-result-object v2

    invoke-virtual {v1}, Lid/a;->m()I

    move-result v1

    div-int/2addr v1, v10

    invoke-static {v4, v9, v1}, Lcom/google/zxing/aztec/encoder/c;->g(ZII)Lid/a;

    move-result-object v3

    if-eqz v4, :cond_d

    const/16 v5, 0xb

    goto :goto_5

    :cond_d
    const/16 v5, 0xe

    :goto_5
    mul-int/lit8 v10, v9, 0x4

    add-int/2addr v5, v10

    new-array v10, v5, [I

    if-eqz v4, :cond_f

    move v11, v7

    :goto_6
    if-ge v11, v5, :cond_e

    aput v11, v10, v11

    add-int/2addr v11, v8

    goto :goto_6

    :cond_e
    move v11, v5

    goto :goto_8

    :cond_f
    add-int/lit8 v11, v5, 0x1

    div-int/lit8 v12, v5, 0x2

    add-int/lit8 v13, v12, -0x1

    div-int/lit8 v13, v13, 0xf

    mul-int/2addr v13, v0

    add-int/2addr v11, v13

    div-int/lit8 v13, v11, 0x2

    move v14, v7

    :goto_7
    if-ge v14, v12, :cond_10

    div-int/lit8 v15, v14, 0xf

    add-int/2addr v15, v14

    sub-int v16, v12, v14

    add-int/lit8 v16, v16, -0x1

    sub-int v17, v13, v15

    add-int/lit8 v17, v17, -0x1

    aput v17, v10, v16

    add-int v16, v12, v14

    add-int/2addr v15, v13

    add-int/2addr v15, v8

    aput v15, v10, v16

    add-int/2addr v14, v8

    goto :goto_7

    :cond_10
    :goto_8
    new-instance v12, Lid/b;

    invoke-direct {v12, v11}, Lid/b;-><init>(I)V

    move v13, v7

    move v14, v13

    :goto_9
    if-ge v13, v9, :cond_18

    sub-int v15, v9, v13

    mul-int/2addr v15, v6

    if-eqz v4, :cond_11

    const/16 v16, 0x9

    goto :goto_a

    :cond_11
    const/16 v16, 0xc

    :goto_a
    add-int v15, v15, v16

    :goto_b
    if-ge v7, v15, :cond_17

    mul-int/lit8 v16, v7, 0x2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v0, :cond_16

    add-int v18, v14, v16

    add-int v8, v18, v6

    invoke-virtual {v2, v8}, Lid/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_12

    mul-int/lit8 v8, v13, 0x2

    add-int v18, v8, v6

    aget v0, v10, v18

    add-int/2addr v8, v7

    aget v8, v10, v8

    invoke-virtual {v12, v0, v8}, Lid/b;->r(II)V

    const/4 v0, 0x2

    :cond_12
    mul-int/lit8 v8, v15, 0x2

    add-int/2addr v8, v14

    add-int v8, v8, v16

    add-int/2addr v8, v6

    invoke-virtual {v2, v8}, Lid/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_13

    mul-int/lit8 v8, v13, 0x2

    add-int v0, v8, v7

    aget v0, v10, v0

    const/16 v18, 0x1

    add-int/lit8 v19, v5, -0x1

    sub-int v19, v19, v8

    sub-int v19, v19, v6

    aget v8, v10, v19

    invoke-virtual {v12, v0, v8}, Lid/b;->r(II)V

    :cond_13
    const/4 v0, 0x4

    mul-int/lit8 v8, v15, 0x4

    add-int/2addr v8, v14

    add-int v8, v8, v16

    add-int/2addr v8, v6

    invoke-virtual {v2, v8}, Lid/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    add-int/lit8 v17, v5, -0x1

    const/4 v8, 0x2

    mul-int/lit8 v18, v13, 0x2

    sub-int v17, v17, v18

    sub-int v8, v17, v6

    aget v8, v10, v8

    sub-int v17, v17, v7

    aget v0, v10, v17

    invoke-virtual {v12, v8, v0}, Lid/b;->r(II)V

    :cond_14
    mul-int/lit8 v0, v15, 0x6

    add-int/2addr v0, v14

    add-int v0, v0, v16

    add-int/2addr v0, v6

    invoke-virtual {v2, v0}, Lid/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    add-int/lit8 v8, v5, -0x1

    const/16 v17, 0x2

    mul-int/lit8 v18, v13, 0x2

    sub-int v8, v8, v18

    sub-int/2addr v8, v7

    aget v8, v10, v8

    add-int v18, v18, v6

    aget v0, v10, v18

    invoke-virtual {v12, v8, v0}, Lid/b;->r(II)V

    :cond_15
    const/4 v0, 0x1

    add-int/2addr v6, v0

    move v8, v0

    const/4 v0, 0x2

    goto :goto_c

    :cond_16
    move v0, v8

    add-int/2addr v7, v0

    const/4 v0, 0x2

    const/4 v6, 0x4

    goto/16 :goto_b

    :cond_17
    move v0, v8

    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    add-int/2addr v13, v0

    const/4 v0, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_18
    invoke-static {v12, v4, v11, v3}, Lcom/google/zxing/aztec/encoder/c;->c(Lid/b;ZILid/a;)V

    if-eqz v4, :cond_19

    const/4 v0, 0x2

    div-int/lit8 v0, v11, 0x2

    const/4 v2, 0x5

    invoke-static {v12, v0, v2}, Lcom/google/zxing/aztec/encoder/c;->b(Lid/b;II)V

    goto :goto_f

    :cond_19
    const/4 v0, 0x2

    div-int/lit8 v2, v11, 0x2

    const/4 v3, 0x7

    invoke-static {v12, v2, v3}, Lcom/google/zxing/aztec/encoder/c;->b(Lid/b;II)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_d
    div-int/lit8 v6, v5, 0x2

    const/4 v0, 0x1

    sub-int/2addr v6, v0

    if-ge v7, v6, :cond_1b

    and-int/lit8 v6, v2, 0x1

    :goto_e
    if-ge v6, v11, :cond_1a

    sub-int v0, v2, v3

    invoke-virtual {v12, v0, v6}, Lid/b;->r(II)V

    add-int v8, v2, v3

    invoke-virtual {v12, v8, v6}, Lid/b;->r(II)V

    invoke-virtual {v12, v6, v0}, Lid/b;->r(II)V

    invoke-virtual {v12, v6, v8}, Lid/b;->r(II)V

    const/4 v0, 0x2

    add-int/2addr v6, v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x2

    add-int/lit8 v7, v7, 0xf

    add-int/lit8 v3, v3, 0x10

    goto :goto_d

    :cond_1b
    :goto_f
    new-instance v0, Lcom/google/zxing/aztec/encoder/a;

    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/a;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/zxing/aztec/encoder/a;->c(Z)V

    invoke-virtual {v0, v11}, Lcom/google/zxing/aztec/encoder/a;->f(I)V

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/encoder/a;->d(I)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/a;->b(I)V

    invoke-virtual {v0, v12}, Lcom/google/zxing/aztec/encoder/a;->e(Lid/b;)V

    return-object v0

    :cond_1c
    :goto_10
    const/4 v3, 0x1

    :goto_11
    add-int/2addr v10, v3

    move v8, v3

    const/16 v3, 0xb

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lid/a;II)Lid/a;
    .locals 3

    invoke-virtual {p0}, Lid/a;->m()I

    move-result v0

    div-int/2addr v0, p2

    new-instance v1, Lkd/d;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/c;->h(I)Lkd/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lkd/d;-><init>(Lkd/a;)V

    div-int v2, p1, p2

    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/c;->a(Lid/a;II)[I

    move-result-object p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v2}, Lkd/d;->b([II)V

    rem-int/2addr p1, p2

    new-instance v0, Lid/a;

    invoke-direct {v0}, Lid/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lid/a;->c(II)V

    array-length p1, p0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p0, v1

    invoke-virtual {v0, v2, p2}, Lid/a;->c(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static g(ZII)Lid/a;
    .locals 2

    new-instance v0, Lid/a;

    invoke-direct {v0}, Lid/a;-><init>()V

    const/4 v1, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x2

    invoke-virtual {v0, p1, p0}, Lid/a;->c(II)V

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x6

    invoke-virtual {v0, p2, p0}, Lid/a;->c(II)V

    const/16 p0, 0x1c

    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->f(Lid/a;II)Lid/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x5

    invoke-virtual {v0, p1, p0}, Lid/a;->c(II)V

    add-int/lit8 p2, p2, -0x1

    const/16 p0, 0xb

    invoke-virtual {v0, p2, p0}, Lid/a;->c(II)V

    const/16 p0, 0x28

    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->f(Lid/a;II)Lid/a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static h(I)Lkd/a;
    .locals 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    sget-object p0, Lkd/a;->h:Lkd/a;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported word size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lkd/a;->i:Lkd/a;

    return-object p0

    :cond_2
    sget-object p0, Lkd/a;->n:Lkd/a;

    return-object p0

    :cond_3
    sget-object p0, Lkd/a;->j:Lkd/a;

    return-object p0

    :cond_4
    sget-object p0, Lkd/a;->k:Lkd/a;

    return-object p0
.end method

.method static i(Lid/a;I)Lid/a;
    .locals 9

    new-instance v0, Lid/a;

    invoke-direct {v0}, Lid/a;-><init>()V

    invoke-virtual {p0}, Lid/a;->m()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, p1, :cond_2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_0

    invoke-virtual {p0, v8}, Lid/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v7, v3

    if-ne v6, v3, :cond_3

    invoke-virtual {v0, v6, p1}, Lid/a;->c(II)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lid/a;->c(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v7, p1}, Lid/a;->c(II)V

    :goto_3
    add-int/2addr v5, p1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static j(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method
