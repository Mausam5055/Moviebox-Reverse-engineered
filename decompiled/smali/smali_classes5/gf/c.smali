.class public abstract Lgf/c;
.super Ljava/lang/Object;


# direct methods
.method public static a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static b([I[I)I
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lgf/c;->c(II)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static c(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static d([B[B)I
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    invoke-static {v3, v4}, Lgf/c;->g(BB)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static e([I[I)I
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lgf/c;->h(II)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static f([S[S)I
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-short v3, p0, v2

    aget-short v4, p1, v2

    invoke-static {v3, v4}, Lgf/c;->i(SS)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static g(BB)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static h(II)I
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static i(SS)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
