.class public final Lqd/a;
.super Lqd/p;


# static fields
.field static final d:[C

.field static final e:[I

.field private static final f:[C


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lqd/a;->d:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lqd/a;->e:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lqd/a;->f:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqd/p;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lqd/a;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lqd/a;->c:I

    return-void
.end method

.method static h([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private i(I)V
    .locals 3

    iget-object v0, p0, Lqd/a;->b:[I

    iget v1, p0, Lqd/a;->c:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lqd/a;->c:I

    array-length p1, v0

    if-lt v1, p1, :cond_0

    mul-int/lit8 p1, v1, 0x2

    new-array p1, p1, [I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lqd/a;->b:[I

    :cond_0
    return-void
.end method

.method private j()I
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lqd/a;->c:I

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lqd/a;->l(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lqd/a;->f:[C

    sget-object v4, Lqd/a;->d:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lqd/a;->h([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lqd/a;->b:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lqd/a;->b:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    div-int/lit8 v2, v2, 0x2

    if-lt v3, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private k(Lid/a;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lqd/a;->c:I

    invoke-virtual {p1, v0}, Lid/a;->l(I)I

    move-result v1

    invoke-virtual {p1}, Lid/a;->m()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lid/a;->i(I)Z

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lqd/a;->i(I)V

    xor-int/lit8 v4, v4, 0x1

    move v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lqd/a;->i(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private l(I)I
    .locals 10

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lqd/a;->c:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lqd/a;->b:[I

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, p1

    move v6, v3

    move v7, v4

    :goto_0
    if-ge v5, v0, :cond_3

    aget v8, v1, v5

    if-ge v8, v6, :cond_1

    move v6, v8

    :cond_1
    if-le v8, v7, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, p1, 0x1

    move v7, v4

    :goto_1
    if-ge v5, v0, :cond_6

    aget v8, v1, v5

    if-ge v8, v3, :cond_4

    move v3, v8

    :cond_4
    if-le v8, v7, :cond_5

    move v7, v8

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    const/16 v0, 0x80

    move v5, v4

    move v7, v5

    :goto_2
    const/4 v8, 0x7

    if-ge v5, v8, :cond_9

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v3

    :goto_3
    shr-int/lit8 v0, v0, 0x1

    add-int v9, p1, v5

    aget v9, v1, v9

    if-le v9, v8, :cond_8

    or-int/2addr v7, v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    sget-object p1, Lqd/a;->e:[I

    array-length v0, p1

    if-ge v4, v0, :cond_b

    aget p1, p1, v4

    if-ne p1, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method

.method private m(I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v5, 0x2

    aput v3, v2, v5

    const/4 v6, 0x3

    aput v3, v2, v6

    new-array v7, v1, [I

    aput v3, v7, v3

    aput v3, v7, v4

    aput v3, v7, v5

    aput v3, v7, v6

    iget-object v6, v0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    move/from16 v9, p1

    move v8, v3

    :goto_0
    const/4 v10, 0x6

    if-gt v8, v6, :cond_1

    sget-object v11, Lqd/a;->e:[I

    iget-object v12, v0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    :goto_1
    if-ltz v10, :cond_0

    and-int/lit8 v12, v10, 0x1

    and-int/lit8 v13, v11, 0x1

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    aget v13, v2, v12

    iget-object v14, v0, Lqd/a;->b:[I

    add-int v15, v9, v10

    aget v14, v14, v15

    add-int/2addr v13, v14

    aput v13, v2, v12

    aget v13, v7, v12

    add-int/2addr v13, v4

    aput v13, v7, v12

    shr-int/2addr v11, v4

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-array v4, v1, [F

    new-array v1, v1, [F

    move v8, v3

    :goto_2
    if-ge v8, v5, :cond_2

    const/4 v9, 0x0

    aput v9, v1, v8

    add-int/lit8 v9, v8, 0x2

    aget v11, v2, v8

    int-to-float v11, v11

    aget v12, v7, v8

    int-to-float v12, v12

    div-float/2addr v11, v12

    aget v12, v2, v9

    int-to-float v13, v12

    aget v14, v7, v9

    int-to-float v15, v14

    div-float/2addr v13, v15

    add-float/2addr v11, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    aput v11, v1, v9

    aput v11, v4, v8

    int-to-float v11, v12

    mul-float/2addr v11, v13

    const/high16 v12, 0x3fc00000    # 1.5f

    add-float/2addr v11, v12

    int-to-float v12, v14

    div-float/2addr v11, v12

    aput v11, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move/from16 v2, p1

    :goto_3
    if-gt v3, v6, :cond_5

    sget-object v7, Lqd/a;->e:[I

    iget-object v8, v0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    aget v7, v7, v8

    move v8, v10

    :goto_4
    if-ltz v8, :cond_4

    and-int/lit8 v9, v8, 0x1

    and-int/lit8 v11, v7, 0x1

    mul-int/2addr v11, v5

    add-int/2addr v9, v11

    iget-object v11, v0, Lqd/a;->b:[I

    add-int v12, v2, v8

    aget v11, v11, v12

    int-to-float v11, v11

    aget v12, v1, v9

    cmpg-float v12, v11, v12

    if-ltz v12, :cond_3

    aget v9, v4, v9

    cmpl-float v9, v11, v9

    if-gtz v9, :cond_3

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_4
    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public c(ILid/a;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lqd/a;->b:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2}, Lqd/a;->k(Lid/a;)V

    invoke-direct {p0}, Lqd/a;->j()I

    move-result p2

    iget-object v2, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v2, p2

    :goto_0
    invoke-direct {p0, v2}, Lqd/a;->l(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    iget-object v6, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    int-to-char v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x8

    iget-object v7, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v1, :cond_0

    sget-object v7, Lqd/a;->f:[C

    sget-object v8, Lqd/a;->d:[C

    aget-char v4, v8, v4

    invoke-static {v7, v4}, Lqd/a;->h([CC)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Lqd/a;->c:I

    if-lt v6, v4, :cond_c

    :goto_1
    iget-object v4, p0, Lqd/a;->b:[I

    add-int/lit8 v2, v2, 0x7

    aget v4, v4, v2

    const/4 v7, -0x8

    move v8, v3

    :goto_2
    if-ge v7, v5, :cond_1

    iget-object v9, p0, Lqd/a;->b:[I

    add-int v10, v6, v7

    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v7, v1

    goto :goto_2

    :cond_1
    iget v5, p0, Lqd/a;->c:I

    if-ge v6, v5, :cond_3

    div-int/2addr v8, v0

    if-lt v4, v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_3
    invoke-direct {p0, p2}, Lqd/a;->m(I)V

    move v4, v3

    :goto_4
    iget-object v5, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    sget-object v6, Lqd/a;->d:[C

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v4, v1

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    sget-object v5, Lqd/a;->f:[C

    invoke-static {v5, v4}, Lqd/a;->h([CC)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Lqd/a;->h([CC)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    if-eqz p3, :cond_5

    sget-object v4, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    iget-object p3, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    move p3, v3

    move v4, p3

    :goto_5
    if-ge p3, p2, :cond_7

    iget-object v5, p0, Lqd/a;->b:[I

    aget v5, v5, p3

    add-int/2addr v4, v5

    add-int/2addr p3, v1

    goto :goto_5

    :cond_7
    int-to-float p3, v4

    :goto_6
    if-ge p2, v2, :cond_8

    iget-object v5, p0, Lqd/a;->b:[I

    aget v5, v5, p2

    add-int/2addr v4, v5

    add-int/2addr p2, v1

    goto :goto_6

    :cond_8
    int-to-float p2, v4

    new-instance v2, Lcom/google/zxing/j;

    iget-object v4, p0, Lqd/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/zxing/k;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/k;-><init>(FF)V

    new-instance p3, Lcom/google/zxing/k;

    invoke-direct {p3, p2, p1}, Lcom/google/zxing/k;-><init>(FF)V

    new-array p1, v0, [Lcom/google/zxing/k;

    aput-object v5, p1, v3

    aput-object p3, p1, v1

    sget-object p2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v2, v4, p3, p1, p2}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string p2, "]F0"

    invoke-virtual {v2, p1, p2}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v2

    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_c
    move v2, v6

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
