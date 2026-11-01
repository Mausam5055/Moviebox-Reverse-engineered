.class public final Lhf/i;
.super Lhf/a;


# instance fields
.field private c:[S


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lhf/a;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [S

    iput-object p1, p0, Lhf/i;->c:[S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(I)V
    .locals 3

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v0

    iget-object v1, p0, Lhf/i;->c:[S

    array-length v2, v1

    sub-int/2addr v2, v0

    if-ge v2, p1, :cond_0

    array-length p1, v1

    array-length v2, v1

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    new-array p1, p1, [S

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lhf/i;->c:[S

    :cond_0
    return-void
.end method


# virtual methods
.method public g()[S
    .locals 4

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v0

    iget-object v1, p0, Lhf/i;->c:[S

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-array v2, v0, [S

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public h(S)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhf/i;->f(I)V

    iget-object v1, p0, Lhf/i;->c:[S

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v2

    aput-short p1, v1, v2

    invoke-virtual {p0, v0}, Lhf/a;->a(I)V

    return-void
.end method

.method public i(SS)V
    .locals 0

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    invoke-virtual {p0, p2}, Lhf/i;->h(S)V

    return-void
.end method

.method public j(SSS)V
    .locals 0

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    invoke-virtual {p0, p2}, Lhf/i;->h(S)V

    invoke-virtual {p0, p3}, Lhf/i;->h(S)V

    return-void
.end method

.method public k(SSSS)V
    .locals 0

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    invoke-virtual {p0, p2}, Lhf/i;->h(S)V

    invoke-virtual {p0, p3}, Lhf/i;->h(S)V

    invoke-virtual {p0, p4}, Lhf/i;->h(S)V

    return-void
.end method

.method public l(SSSSS)V
    .locals 0

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    invoke-virtual {p0, p2}, Lhf/i;->h(S)V

    invoke-virtual {p0, p3}, Lhf/i;->h(S)V

    invoke-virtual {p0, p4}, Lhf/i;->h(S)V

    invoke-virtual {p0, p5}, Lhf/i;->h(S)V

    return-void
.end method

.method public m([B)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-byte v6, p1, v3

    if-eqz v4, :cond_0

    and-int/lit16 v4, v6, 0xff

    move v5, v4

    move v4, v1

    goto :goto_1

    :cond_0
    shl-int/lit8 v4, v6, 0x8

    or-int/2addr v4, v5

    int-to-short v5, v4

    invoke-virtual {p0, v5}, Lhf/i;->h(S)V

    move v5, v4

    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    int-to-short p1, v5

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    :cond_2
    return-void
.end method

.method public n([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lhf/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o([J)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lhf/i;->r(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p([S)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lhf/i;->h(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 1

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    shr-int/lit8 p1, p1, 0x10

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    return-void
.end method

.method public r(J)V
    .locals 2

    long-to-int v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    const/16 v0, 0x30

    shr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    return-void
.end method
