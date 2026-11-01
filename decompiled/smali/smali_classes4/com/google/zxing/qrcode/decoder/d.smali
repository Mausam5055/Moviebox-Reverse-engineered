.class public final Lcom/google/zxing/qrcode/decoder/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkd/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkd/c;

    sget-object v1, Lkd/a;->l:Lkd/a;

    invoke-direct {v0, v1}, Lkd/c;-><init>(Lkd/a;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/d;->a:Lkd/c;

    return-void
.end method

.method private a([BI)I
    .locals 5

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/d;->a:Lkd/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lkd/c;->a([II)I

    move-result v0
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    aget v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method

.method private b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lid/d;
    .locals 13

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->e()Lcom/google/zxing/qrcode/decoder/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->d()Lcom/google/zxing/qrcode/decoder/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/e;->d()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->c()[B

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/qrcode/decoder/b;->b([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/b;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/b;->c()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v5, [B

    array-length v4, p1

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v8, p1, v5

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/b;->a()[B

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/b;->c()I

    move-result v8

    invoke-direct {p0, v9, v8}, Lcom/google/zxing/qrcode/decoder/d;->a([BI)I

    move-result v10

    add-int/2addr v6, v10

    move v10, v3

    :goto_2
    if-ge v10, v8, :cond_1

    add-int/lit8 v11, v7, 0x1

    aget-byte v12, v9, v10

    aput-byte v12, v2, v7

    add-int/lit8 v10, v10, 0x1

    move v7, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/c;->a([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lid/d;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lid/d;->n(Ljava/lang/Integer;)V

    return-object p1
.end method


# virtual methods
.method public c(Lid/b;Ljava/util/Map;)Lid/d;
    .locals 4

    new-instance v0, Lcom/google/zxing/qrcode/decoder/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/a;-><init>(Lid/b;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/d;->b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lid/d;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->f()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/decoder/a;->g(Z)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->e()Lcom/google/zxing/qrcode/decoder/g;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->d()Lcom/google/zxing/qrcode/decoder/e;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->b()V

    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/d;->b(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lid/d;

    move-result-object p2

    new-instance v0, Lcom/google/zxing/qrcode/decoder/f;

    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/decoder/f;-><init>(Z)V

    invoke-virtual {p2, v0}, Lid/d;->p(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw v1
.end method
