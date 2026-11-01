.class public final Lud/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lud/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lud/b;->f:Lud/b;

    iput-object v0, p0, Lud/a;->a:Lud/b;

    return-void
.end method

.method private b(Lud/c;)[I
    .locals 5

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v4}, Lud/b;->e()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v3}, Lud/c;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v4, v3}, Lud/b;->g(I)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method

.method private c(Lud/c;Lud/c;[I)[I
    .locals 7

    invoke-virtual {p2}, Lud/c;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    new-array p1, v1, [I

    return-object p1

    :cond_0
    new-array v3, v0, [I

    :goto_0
    if-gt v2, v0, :cond_1

    sub-int v4, v0, v2

    iget-object v5, p0, Lud/a;->a:Lud/b;

    invoke-virtual {p2, v2}, Lud/c;->c(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lud/b;->i(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lud/c;

    iget-object v0, p0, Lud/a;->a:Lud/b;

    invoke-direct {p2, v0, v3}, Lud/c;-><init>(Lud/b;[I)V

    array-length v0, p3

    new-array v2, v0, [I

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lud/a;->a:Lud/b;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Lud/b;->g(I)I

    move-result v4

    iget-object v5, p0, Lud/a;->a:Lud/b;

    invoke-virtual {p1, v4}, Lud/c;->b(I)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lud/b;->j(II)I

    move-result v5

    iget-object v6, p0, Lud/a;->a:Lud/b;

    invoke-virtual {p2, v4}, Lud/c;->b(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lud/b;->g(I)I

    move-result v4

    iget-object v6, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v6, v5, v4}, Lud/b;->i(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private d(Lud/c;Lud/c;I)[Lud/c;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v2

    invoke-virtual {p2}, Lud/c;->d()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :cond_0
    iget-object v2, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v2}, Lud/b;->f()Lud/c;

    move-result-object v2

    iget-object v3, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v3}, Lud/b;->d()Lud/c;

    move-result-object v3

    :goto_0
    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    if-lt v4, v5, :cond_3

    invoke-virtual {p1}, Lud/c;->e()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v4}, Lud/b;->f()Lud/c;

    move-result-object v4

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v5

    invoke-virtual {p1, v5}, Lud/c;->c(I)I

    move-result v5

    iget-object v6, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v6, v5}, Lud/b;->g(I)I

    move-result v5

    :goto_1
    invoke-virtual {p2}, Lud/c;->d()I

    move-result v6

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v7

    if-lt v6, v7, :cond_1

    invoke-virtual {p2}, Lud/c;->e()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lud/c;->d()I

    move-result v6

    invoke-virtual {p1}, Lud/c;->d()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lud/a;->a:Lud/b;

    invoke-virtual {p2}, Lud/c;->d()I

    move-result v8

    invoke-virtual {p2, v8}, Lud/c;->c(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lud/b;->i(II)I

    move-result v7

    iget-object v8, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v8, v6, v7}, Lud/b;->b(II)Lud/c;

    move-result-object v8

    invoke-virtual {v4, v8}, Lud/c;->a(Lud/c;)Lud/c;

    move-result-object v4

    invoke-virtual {p1, v6, v7}, Lud/c;->h(II)Lud/c;

    move-result-object v6

    invoke-virtual {p2, v6}, Lud/c;->j(Lud/c;)Lud/c;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Lud/c;->g(Lud/c;)Lud/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lud/c;->j(Lud/c;)Lud/c;

    move-result-object v3

    invoke-virtual {v3}, Lud/c;->i()Lud/c;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2, v0}, Lud/c;->c(I)I

    move-result p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lud/a;->a:Lud/b;

    invoke-virtual {p3, p2}, Lud/b;->g(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lud/c;->f(I)Lud/c;

    move-result-object p3

    invoke-virtual {p1, p2}, Lud/c;->f(I)Lud/c;

    move-result-object p1

    new-array p2, v1, [Lud/c;

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object p2

    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a([II[I)I
    .locals 9

    new-instance v0, Lud/c;

    iget-object v1, p0, Lud/a;->a:Lud/b;

    invoke-direct {v0, v1, p1}, Lud/c;-><init>(Lud/b;[I)V

    new-array v1, p2, [I

    const/4 v2, 0x0

    move v3, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget-object v6, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v6, v3}, Lud/b;->c(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lud/c;->b(I)I

    move-result v6

    sub-int v7, p2, v3

    aput v6, v1, v7

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v0}, Lud/b;->d()Lud/c;

    move-result-object v0

    if-eqz p3, :cond_3

    array-length v3, p3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget v6, p3, v4

    iget-object v7, p0, Lud/a;->a:Lud/b;

    array-length v8, p1

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Lud/b;->c(I)I

    move-result v6

    new-instance v7, Lud/c;

    iget-object v8, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v8, v2, v6}, Lud/b;->j(II)I

    move-result v6

    filled-new-array {v6, v5}, [I

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lud/c;-><init>(Lud/b;[I)V

    invoke-virtual {v0, v7}, Lud/c;->g(Lud/c;)Lud/c;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p3, Lud/c;

    iget-object v0, p0, Lud/a;->a:Lud/b;

    invoke-direct {p3, v0, v1}, Lud/c;-><init>(Lud/b;[I)V

    iget-object v0, p0, Lud/a;->a:Lud/b;

    invoke-virtual {v0, p2, v5}, Lud/b;->b(II)Lud/c;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lud/a;->d(Lud/c;Lud/c;I)[Lud/c;

    move-result-object p2

    aget-object p3, p2, v2

    aget-object p2, p2, v5

    invoke-direct {p0, p3}, Lud/a;->b(Lud/c;)[I

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lud/a;->c(Lud/c;Lud/c;[I)[I

    move-result-object p2

    :goto_2
    array-length p3, v0

    if-ge v2, p3, :cond_5

    array-length p3, p1

    sub-int/2addr p3, v5

    iget-object v1, p0, Lud/a;->a:Lud/b;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lud/b;->h(I)I

    move-result v1

    sub-int/2addr p3, v1

    if-ltz p3, :cond_4

    iget-object v1, p0, Lud/a;->a:Lud/b;

    aget v3, p1, p3

    aget v4, p2, v2

    invoke-virtual {v1, v3, v4}, Lud/b;->j(II)I

    move-result v1

    aput v1, p1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    :cond_5
    array-length p1, v0

    return p1
.end method
