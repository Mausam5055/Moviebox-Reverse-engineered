.class public final Lcom/google/zxing/datamatrix/decoder/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkd/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkd/c;

    sget-object v1, Lkd/a;->m:Lkd/a;

    invoke-direct {v0, v1}, Lkd/c;-><init>(Lkd/a;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/c;->a:Lkd/c;

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
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/c;->a:Lkd/c;

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


# virtual methods
.method public b(Lid/b;)Lid/d;
    .locals 10

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/a;-><init>(Lid/b;)V

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/a;->b()Lcom/google/zxing/datamatrix/decoder/d;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/a;->c()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/zxing/datamatrix/decoder/b;->b([BLcom/google/zxing/datamatrix/decoder/d;)[Lcom/google/zxing/datamatrix/decoder/b;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/b;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/b;->a()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/b;->c()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/c;->a([BI)I

    move-result v7

    add-int/2addr v4, v7

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_1

    mul-int v8, v7, v2

    add-int/2addr v8, v3

    aget-byte v9, v6, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->a([B)Lid/d;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lid/d;->n(Ljava/lang/Integer;)V

    return-object p1
.end method
