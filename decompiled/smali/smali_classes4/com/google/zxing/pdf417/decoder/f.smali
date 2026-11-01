.class Lcom/google/zxing/pdf417/decoder/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/c;

.field private final b:[Lcom/google/zxing/pdf417/decoder/d;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/pdf417/decoder/c;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/c;-><init>(Lcom/google/zxing/pdf417/decoder/c;)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->a:Lcom/google/zxing/pdf417/decoder/c;

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/c;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Lcom/google/zxing/pdf417/decoder/d;

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/pdf417/decoder/c;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->a:Lcom/google/zxing/pdf417/decoder/c;

    return-object v0
.end method

.method final b(I)Lcom/google/zxing/pdf417/decoder/d;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final c(I)Lcom/google/zxing/pdf417/decoder/d;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;->b(I)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final d()[Lcom/google/zxing/pdf417/decoder/d;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    return-object v0
.end method

.method final e(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->a:Lcom/google/zxing/pdf417/decoder/c;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method final f(ILcom/google/zxing/pdf417/decoder/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/f;->b:[Lcom/google/zxing/pdf417/decoder/d;

    array-length v4, v3

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v3, v5

    if-nez v7, :cond_0

    const-string v7, "%3d:    |   %n"

    add-int/lit8 v8, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v0

    invoke-virtual {v2, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v6, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const-string v8, "%3d: %3d|%3d%n"

    add-int/lit8 v9, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v0

    aput-object v10, v11, v1

    const/4 v6, 0x2

    aput-object v7, v11, v6

    invoke-virtual {v2, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v6, v9

    :goto_1
    add-int/2addr v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    return-object v0

    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
.end method
