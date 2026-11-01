.class public abstract Lcom/google/zxing/datamatrix/encoder/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/CharSequence;I)I
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    return v1
.end method

.method public static b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/c;Lcom/google/zxing/c;Z)Ljava/lang/String;
    .locals 9

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/c;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/a;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/a;-><init>()V

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/h;

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/h;-><init>()V

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/i;

    invoke-direct {v3}, Lcom/google/zxing/datamatrix/encoder/i;-><init>()V

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/d;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/d;-><init>()V

    new-instance v5, Lcom/google/zxing/datamatrix/encoder/b;

    invoke-direct {v5}, Lcom/google/zxing/datamatrix/encoder/b;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/google/zxing/datamatrix/encoder/e;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v8, 0x2

    aput-object v2, v6, v8

    const/4 v2, 0x3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    aput-object v4, v6, v2

    const/4 v3, 0x5

    aput-object v5, v6, v3

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/f;

    invoke-direct {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/google/zxing/datamatrix/encoder/f;->n(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v4, p2, p3}, Lcom/google/zxing/datamatrix/encoder/f;->l(Lcom/google/zxing/c;Lcom/google/zxing/c;)V

    const-string p1, "[)>\u001e05\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xec

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    invoke-virtual {v4, v8}, Lcom/google/zxing/datamatrix/encoder/f;->m(I)V

    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    goto :goto_0

    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xed

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    invoke-virtual {v4, v8}, Lcom/google/zxing/datamatrix/encoder/f;->m(I)V

    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/zxing/datamatrix/encoder/c;->d(Lcom/google/zxing/datamatrix/encoder/f;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->j()V

    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    aget-object p0, v6, v7

    invoke-interface {p0, v4}, Lcom/google/zxing/datamatrix/encoder/e;->a(Lcom/google/zxing/datamatrix/encoder/f;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->j()V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    move-result p0

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->p()V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->g()Lnd/d;

    move-result-object p1

    invoke-virtual {p1}, Lnd/d;->a()I

    move-result p1

    if-ge p0, p1, :cond_4

    if-eqz v7, :cond_4

    if-eq v7, v3, :cond_4

    if-eq v7, v2, :cond_4

    const/16 p0, 0xfe

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    :cond_4
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_5

    const/16 p2, 0x81

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Lcom/google/zxing/datamatrix/encoder/g;->r(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    if-le p2, v2, :cond_0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_0
    if-ne p2, v2, :cond_1

    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private static d([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static e(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static f(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static g(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static h(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static i(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static j(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static k(C)Z
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/g;->m(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static l(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static m(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static n(Ljava/lang/CharSequence;II)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/g;->o(Ljava/lang/CharSequence;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p1, 0x3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    if-ne v0, v2, :cond_3

    add-int/lit8 p2, p1, 0x4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge p1, p2, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method static o(Ljava/lang/CharSequence;II)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_1

    new-array v12, v3, [F

    aput v2, v12, v10

    aput v5, v12, v11

    aput v5, v12, v7

    aput v5, v12, v9

    aput v5, v12, v8

    const/high16 v2, 0x3fa00000    # 1.25f

    aput v2, v12, v6

    goto :goto_0

    :cond_1
    new-array v12, v3, [F

    aput v5, v12, v10

    aput v4, v12, v11

    aput v4, v12, v7

    aput v4, v12, v9

    aput v4, v12, v8

    const/high16 v13, 0x40100000    # 2.25f

    aput v13, v12, v6

    aput v2, v12, p2

    :goto_0
    new-array v2, v3, [B

    new-array v3, v3, [I

    move v13, v10

    :goto_1
    add-int v14, v1, v13

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const v5, 0x7fffffff

    if-ne v14, v15, :cond_7

    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v12, v3, v5, v2}, Lcom/google/zxing/datamatrix/encoder/g;->c([F[II[B)I

    move-result v0

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->d([B)I

    move-result v1

    aget v3, v3, v10

    if-ne v3, v0, :cond_2

    return v10

    :cond_2
    if-ne v1, v11, :cond_6

    aget-byte v0, v2, v6

    if-lez v0, :cond_3

    return v6

    :cond_3
    aget-byte v0, v2, v8

    if-lez v0, :cond_4

    return v8

    :cond_4
    aget-byte v0, v2, v7

    if-lez v0, :cond_5

    return v7

    :cond_5
    aget-byte v0, v2, v9

    if-lez v0, :cond_6

    return v9

    :cond_6
    return v11

    :cond_7
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    add-int/lit8 v13, v13, 0x1

    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    move-result v15

    if-eqz v15, :cond_8

    aget v15, v12, v10

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    aput v15, v12, v10

    goto :goto_2

    :cond_8
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    move-result v15

    if-eqz v15, :cond_9

    aget v15, v12, v10

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v12, v10

    add-float/2addr v5, v4

    aput v5, v12, v10

    goto :goto_2

    :cond_9
    aget v5, v12, v10

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v12, v10

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    aput v5, v12, v10

    :goto_2
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->h(C)Z

    move-result v5

    const v6, 0x3faaaaab

    const v15, 0x402aaaab

    const v17, 0x3f2aaaab

    if-eqz v5, :cond_a

    aget v5, v12, v11

    add-float v5, v5, v17

    aput v5, v12, v11

    goto :goto_3

    :cond_a
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    move-result v5

    if-eqz v5, :cond_b

    aget v5, v12, v11

    add-float/2addr v5, v15

    aput v5, v12, v11

    goto :goto_3

    :cond_b
    aget v5, v12, v11

    add-float/2addr v5, v6

    aput v5, v12, v11

    :goto_3
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->j(C)Z

    move-result v5

    if-eqz v5, :cond_c

    aget v5, v12, v7

    add-float v5, v5, v17

    aput v5, v12, v7

    goto :goto_4

    :cond_c
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    move-result v5

    if-eqz v5, :cond_d

    aget v5, v12, v7

    add-float/2addr v5, v15

    aput v5, v12, v7

    goto :goto_4

    :cond_d
    aget v5, v12, v7

    add-float/2addr v5, v6

    aput v5, v12, v7

    :goto_4
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    move-result v5

    if-eqz v5, :cond_e

    aget v5, v12, v9

    add-float v5, v5, v17

    aput v5, v12, v9

    goto :goto_5

    :cond_e
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    move-result v5

    if-eqz v5, :cond_f

    aget v5, v12, v9

    const v6, 0x408aaaab

    add-float/2addr v5, v6

    aput v5, v12, v9

    goto :goto_5

    :cond_f
    aget v5, v12, v9

    const v6, 0x40555555

    add-float/2addr v5, v6

    aput v5, v12, v9

    :goto_5
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    move-result v5

    if-eqz v5, :cond_10

    aget v5, v12, v8

    const/high16 v6, 0x3f400000    # 0.75f

    add-float/2addr v5, v6

    aput v5, v12, v8

    goto :goto_6

    :cond_10
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    move-result v5

    if-eqz v5, :cond_11

    aget v5, v12, v8

    const/high16 v6, 0x40880000    # 4.25f

    add-float/2addr v5, v6

    aput v5, v12, v8

    goto :goto_6

    :cond_11
    aget v5, v12, v8

    const/high16 v6, 0x40500000    # 3.25f

    add-float/2addr v5, v6

    aput v5, v12, v8

    :goto_6
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->l(C)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x5

    aget v6, v12, v5

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v6, v14

    aput v6, v12, v5

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_12
    const/4 v5, 0x5

    aget v6, v12, v5

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v6, v14

    aput v6, v12, v5

    :goto_7
    if-lt v13, v8, :cond_1f

    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    const v6, 0x7fffffff

    invoke-static {v12, v3, v6, v2}, Lcom/google/zxing/datamatrix/encoder/g;->c([F[II[B)I

    aget v6, v3, v10

    aget v15, v3, v5

    aget v4, v3, v11

    aget v14, v3, v7

    aget v7, v3, v9

    aget v9, v3, v8

    invoke-static {v15, v4, v14, v7, v9}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    move-result v4

    if-ge v6, v4, :cond_13

    return v10

    :cond_13
    aget v4, v3, v5

    aget v5, v3, v10

    if-lt v4, v5, :cond_14

    add-int/lit8 v4, v4, 0x1

    aget v5, v3, v11

    const/4 v6, 0x2

    aget v7, v3, v6

    const/4 v9, 0x3

    aget v14, v3, v9

    aget v15, v3, v8

    invoke-static {v5, v7, v14, v15}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    move-result v5

    if-ge v4, v5, :cond_15

    :cond_14
    const/4 v6, 0x5

    goto/16 :goto_b

    :cond_15
    aget v4, v3, v8

    add-int/2addr v4, v11

    const/4 v5, 0x5

    aget v7, v3, v5

    aget v14, v3, v11

    aget v15, v3, v6

    aget v5, v3, v9

    aget v9, v3, v10

    invoke-static {v7, v14, v15, v5, v9}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    move-result v5

    if-ge v4, v5, :cond_16

    return v8

    :cond_16
    aget v4, v3, v6

    add-int/2addr v4, v11

    const/4 v5, 0x5

    aget v7, v3, v5

    aget v9, v3, v11

    aget v14, v3, v8

    const/4 v15, 0x3

    aget v8, v3, v15

    aget v5, v3, v10

    invoke-static {v7, v9, v14, v8, v5}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    move-result v5

    if-ge v4, v5, :cond_17

    return v6

    :cond_17
    aget v4, v3, v15

    add-int/2addr v4, v11

    const/4 v5, 0x5

    aget v7, v3, v5

    aget v8, v3, v11

    const/4 v9, 0x4

    aget v14, v3, v9

    aget v9, v3, v6

    aget v6, v3, v10

    invoke-static {v7, v8, v14, v9, v6}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    move-result v6

    if-ge v4, v6, :cond_18

    return v15

    :cond_18
    aget v4, v3, v11

    add-int/2addr v4, v11

    aget v6, v3, v10

    aget v7, v3, v5

    const/4 v5, 0x4

    aget v8, v3, v5

    const/4 v9, 0x2

    aget v14, v3, v9

    invoke-static {v6, v7, v8, v14}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    move-result v6

    if-ge v4, v6, :cond_1e

    aget v4, v3, v11

    aget v6, v3, v15

    if-ge v4, v6, :cond_19

    return v11

    :cond_19
    if-ne v4, v6, :cond_1d

    add-int/2addr v1, v13

    add-int/2addr v1, v11

    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->m(C)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v4, 0x3

    return v4

    :cond_1a
    const/4 v4, 0x3

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_9

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    :goto_9
    return v11

    :cond_1d
    const/4 v4, 0x3

    :goto_a
    const/4 v6, 0x5

    goto :goto_c

    :cond_1e
    move v4, v15

    goto :goto_a

    :goto_b
    return v6

    :cond_1f
    move v6, v5

    move v5, v8

    move v4, v9

    move v9, v7

    :goto_c
    move v8, v5

    move v7, v9

    const/high16 v5, 0x3f800000    # 1.0f

    move v9, v4

    const/high16 v4, 0x40000000    # 2.0f

    goto/16 :goto_1
.end method

.method private static p(IIII)I
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static q(IIIII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    move-result p0

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static r(I)C
    .locals 2

    mul-int/lit16 p0, p0, 0x95

    rem-int/lit16 p0, p0, 0xfd

    add-int/lit16 v0, p0, 0x82

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x7c

    :goto_0
    int-to-char p0, v0

    return p0
.end method
