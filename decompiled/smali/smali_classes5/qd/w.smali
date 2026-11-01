.class public abstract Lqd/w;
.super Lqd/p;


# static fields
.field static final d:[I

.field static final e:[I

.field static final f:[I

.field static final g:[[I

.field static final h:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Lqd/v;

.field private final c:Lqd/k;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lqd/w;->d:[I

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lqd/w;->e:[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lqd/w;->f:[I

    const/16 v2, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x3

    const/4 v5, 0x2

    filled-new-array {v4, v5, v0, v0}, [I

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    filled-new-array {v5, v5, v5, v0}, [I

    move-result-object v6

    aput-object v6, v3, v0

    filled-new-array {v5, v0, v5, v5}, [I

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v6, 0x4

    filled-new-array {v0, v6, v0, v0}, [I

    move-result-object v8

    aput-object v8, v3, v4

    filled-new-array {v0, v0, v4, v5}, [I

    move-result-object v8

    aput-object v8, v3, v6

    filled-new-array {v0, v5, v4, v0}, [I

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v3, v9

    filled-new-array {v0, v0, v0, v6}, [I

    move-result-object v6

    aput-object v6, v3, v1

    filled-new-array {v0, v4, v0, v5}, [I

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v3, v6

    filled-new-array {v0, v5, v0, v4}, [I

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v3, v6

    filled-new-array {v4, v0, v0, v5}, [I

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v3, v4

    sput-object v3, Lqd/w;->g:[[I

    const/16 v1, 0x14

    new-array v4, v1, [[I

    sput-object v4, Lqd/w;->h:[[I

    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    sget-object v4, Lqd/w;->g:[[I

    add-int/lit8 v5, v3, -0xa

    aget-object v4, v4, v5

    array-length v5, v4

    new-array v5, v5, [I

    move v6, v7

    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_0

    array-length v8, v4

    sub-int/2addr v8, v6

    sub-int/2addr v8, v0

    aget v8, v4, v8

    aput v8, v5, v6

    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    sget-object v4, Lqd/w;->h:[[I

    aput-object v5, v4, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqd/p;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqd/w;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lqd/v;

    invoke-direct {v0}, Lqd/v;-><init>()V

    iput-object v0, p0, Lqd/w;->b:Lqd/v;

    new-instance v0, Lqd/k;

    invoke-direct {v0}, Lqd/k;-><init>()V

    iput-object v0, p0, Lqd/w;->c:Lqd/k;

    return-void
.end method

.method static i(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lqd/w;->r(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method static j(Lid/a;[II[[I)I
    .locals 4

    invoke-static {p0, p2, p1}, Lqd/p;->f(Lid/a;I[I)V

    array-length p0, p3

    const p2, 0x3ef5c28f    # 0.48f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p3, v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {p1, v2, v3}, Lqd/p;->e([I[IF)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_0

    move v0, v1

    move p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method static n(Lid/a;IZ[I)[I
    .locals 1

    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lqd/w;->o(Lid/a;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static o(Lid/a;IZ[I[I)[I
    .locals 8

    invoke-virtual {p0}, Lid/a;->m()I

    move-result v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lid/a;->l(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lid/a;->k(I)I

    move-result p1

    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    move v3, p2

    move v4, v2

    move p2, p1

    :goto_1
    if-ge p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lid/a;->i(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v3, :cond_1

    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_3

    const v5, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v5}, Lqd/p;->e([I[IF)F

    move-result v5

    const v7, 0x3ef5c28f    # 0.48f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    filled-new-array {p2, p1}, [I

    move-result-object p0

    return-object p0

    :cond_2
    aget v5, p4, v2

    aget v7, p4, v6

    add-int/2addr v5, v7

    add-int/2addr p2, v5

    add-int/lit8 v5, v4, -0x1

    const/4 v7, 0x2

    invoke-static {p4, v7, p4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v2, p4, v5

    aput v2, p4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_2
    aput v6, p4, v4

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method static p(Lid/a;)[I
    .locals 7

    sget-object v0, Lqd/w;->d:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-nez v3, :cond_1

    sget-object v2, Lqd/w;->d:[I

    array-length v5, v2

    invoke-static {v0, v1, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {p0, v4, v1, v2, v0}, Lqd/w;->o(Lid/a;IZ[I[I)[I

    move-result-object v2

    aget v4, v2, v1

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int v6, v5, v4

    sub-int v6, v4, v6

    if-ltz v6, :cond_0

    invoke-virtual {p0, v6, v4, v1}, Lid/a;->o(IIZ)Z

    move-result v3

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static r(Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_0

    if-gt v4, v3, :cond_0

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    rsub-int p0, v2, 0x3e8

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method


# virtual methods
.method public c(ILid/a;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    invoke-static {p2}, Lqd/w;->p(Lid/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lqd/w;->m(ILid/a;[ILjava/util/Map;)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method

.method h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lqd/w;->i(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method k(Lid/a;I)[I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lqd/w;->d:[I

    invoke-static {p1, p2, v0, v1}, Lqd/w;->n(Lid/a;IZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected abstract l(Lid/a;[ILjava/lang/StringBuilder;)I
.end method

.method public m(ILid/a;[ILjava/util/Map;)Lcom/google/zxing/j;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/l;

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    new-instance v5, Lcom/google/zxing/k;

    aget v6, p3, v0

    aget v7, p3, v1

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v4

    int-to-float v7, p1

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/k;-><init>(FF)V

    invoke-interface {v3, v5}, Lcom/google/zxing/l;->a(Lcom/google/zxing/k;)V

    :cond_1
    iget-object v5, p0, Lqd/w;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0, p2, p3, v5}, Lqd/w;->l(Lid/a;[ILjava/lang/StringBuilder;)I

    move-result v6

    if-eqz v3, :cond_2

    new-instance v7, Lcom/google/zxing/k;

    int-to-float v8, v6

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/k;-><init>(FF)V

    invoke-interface {v3, v7}, Lcom/google/zxing/l;->a(Lcom/google/zxing/k;)V

    :cond_2
    invoke-virtual {p0, p2, v6}, Lqd/w;->k(Lid/a;I)[I

    move-result-object v6

    if-eqz v3, :cond_3

    new-instance v7, Lcom/google/zxing/k;

    aget v8, v6, v0

    aget v9, v6, v1

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v4

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/k;-><init>(FF)V

    invoke-interface {v3, v7}, Lcom/google/zxing/l;->a(Lcom/google/zxing/k;)V

    :cond_3
    aget v3, v6, v1

    aget v7, v6, v0

    sub-int v7, v3, v7

    add-int/2addr v7, v3

    invoke-virtual {p2}, Lid/a;->m()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-virtual {p2, v3, v7, v0}, Lid/a;->o(IIZ)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_c

    invoke-virtual {p0, v3}, Lqd/w;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    aget v5, p3, v1

    aget p3, p3, v0

    add-int/2addr v5, p3

    int-to-float p3, v5

    div-float/2addr p3, v4

    aget v5, v6, v1

    aget v7, v6, v0

    add-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lqd/w;->q()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    new-instance v7, Lcom/google/zxing/j;

    new-instance v8, Lcom/google/zxing/k;

    int-to-float v9, p1

    invoke-direct {v8, p3, v9}, Lcom/google/zxing/k;-><init>(FF)V

    new-instance p3, Lcom/google/zxing/k;

    invoke-direct {p3, v5, v9}, Lcom/google/zxing/k;-><init>(FF)V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/k;

    aput-object v8, v5, v0

    aput-object p3, v5, v1

    invoke-direct {v7, v3, v2, v5, v4}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    :try_start_0
    iget-object p3, p0, Lqd/w;->b:Lqd/v;

    aget v5, v6, v1

    invoke-virtual {p3, p1, p2, v5}, Lqd/v;->a(ILid/a;I)Lcom/google/zxing/j;

    move-result-object p1

    sget-object p2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/google/zxing/j;->g(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/zxing/j;->e()[Lcom/google/zxing/k;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/google/zxing/j;->a([Lcom/google/zxing/k;)V

    invoke-virtual {p1}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v0

    :goto_1
    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [I

    :goto_2
    if-eqz v2, :cond_7

    array-length p2, v2

    move p3, v0

    :goto_3
    if-ge p3, p2, :cond_6

    aget p4, v2, p3

    if-ne p1, p4, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr p3, v1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_4
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v4, p1, :cond_8

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, p1, :cond_9

    :cond_8
    iget-object p1, p0, Lqd/w;->c:Lqd/k;

    invoke-virtual {p1, v3}, Lqd/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    sget-object p2, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v7, p2, p1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_9
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, p1, :cond_a

    const/4 v0, 0x4

    :cond_a
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "]E"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v7

    :cond_b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method abstract q()Lcom/google/zxing/BarcodeFormat;
.end method
