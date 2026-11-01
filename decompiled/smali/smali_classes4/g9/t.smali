.class public abstract Lg9/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/t$a;
    }
.end annotation


# direct methods
.method public static a(Lg9/m;)Z
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lg9/m;->peekFully([BII)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v0

    const-wide/32 v4, 0x664c6143

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static b(Lg9/m;)I
    .locals 4

    invoke-interface {p0}, Lg9/m;->resetPeekPosition()V

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lg9/m;->peekFully([BII)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    const/16 v2, 0x3ffe

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lg9/m;->resetPeekPosition()V

    return v0

    :cond_0
    invoke-interface {p0}, Lg9/m;->resetPeekPosition()V

    const-string p0, "First frame does not start with sync code."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static c(Lg9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/metadata/id3/b;->b:Lcom/google/android/exoplayer2/metadata/id3/b$a;

    :goto_0
    new-instance v1, Lg9/y;

    invoke-direct {v1}, Lg9/y;-><init>()V

    invoke-virtual {v1, p0, p1}, Lg9/y;->a(Lg9/m;Lcom/google/android/exoplayer2/metadata/id3/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static d(Lg9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    invoke-interface {p0}, Lg9/m;->resetPeekPosition()V

    invoke-interface {p0}, Lg9/m;->getPeekPosition()J

    move-result-wide v0

    invoke-static {p0, p1}, Lg9/t;->c(Lg9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    invoke-interface {p0}, Lg9/m;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p0, v0}, Lg9/m;->skipFully(I)V

    return-object p1
.end method

.method public static e(Lg9/m;Lg9/t$a;)Z
    .locals 7

    invoke-interface {p0}, Lg9/m;->resetPeekPosition()V

    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/util/c0;->a:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lg9/m;->peekFully([BII)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->g()Z

    move-result v2

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result v4

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result v0

    add-int/2addr v0, v1

    if-nez v4, :cond_0

    invoke-static {p0}, Lg9/t;->h(Lg9/m;)Lg9/v;

    move-result-object p0

    iput-object p0, p1, Lg9/t$a;->a:Lg9/v;

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lg9/t$a;->a:Lg9/v;

    if-eqz v5, :cond_4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    invoke-static {p0, v0}, Lg9/t;->g(Lg9/m;I)Lg9/v$a;

    move-result-object p0

    invoke-virtual {v5, p0}, Lg9/v;->b(Lg9/v$a;)Lg9/v;

    move-result-object p0

    iput-object p0, p1, Lg9/t$a;->a:Lg9/v;

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    invoke-static {p0, v0}, Lg9/t;->j(Lg9/m;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v5, p0}, Lg9/v;->c(Ljava/util/List;)Lg9/v;

    move-result-object p0

    iput-object p0, p1, Lg9/t$a;->a:Lg9/v;

    goto :goto_0

    :cond_2
    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    new-instance v4, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v6

    invoke-interface {p0, v6, v3, v0}, Lg9/m;->readFully([BII)V

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v5, p0}, Lg9/v;->a(Ljava/util/List;)Lg9/v;

    move-result-object p0

    iput-object p0, p1, Lg9/t$a;->a:Lg9/v;

    goto :goto_0

    :cond_3
    invoke-interface {p0, v0}, Lg9/m;->skipFully(I)V

    :goto_0
    return v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static f(Lcom/google/android/exoplayer2/util/d0;)Lg9/v$a;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x12

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    :cond_0
    aput-wide v6, v3, v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    new-instance p0, Lg9/v$a;

    invoke-direct {p0, v3, v4}, Lg9/v$a;-><init>([J[J)V

    return-object p0
.end method

.method private static g(Lg9/m;I)Lg9/v$a;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lg9/m;->readFully([BII)V

    invoke-static {v0}, Lg9/t;->f(Lcom/google/android/exoplayer2/util/d0;)Lg9/v$a;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lg9/m;)Lg9/v;
    .locals 3

    const/16 v0, 0x26

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lg9/m;->readFully([BII)V

    new-instance p0, Lg9/v;

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lg9/v;-><init>([BI)V

    return-object p0
.end method

.method public static i(Lg9/m;)V
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lg9/m;->readFully([BII)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v0

    const-wide/32 v2, 0x664c6143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed to read FLAC stream marker."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static j(Lg9/m;I)Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lg9/m;->readFully([BII)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {v0, v2, v2}, Lg9/h0;->j(Lcom/google/android/exoplayer2/util/d0;ZZ)Lg9/h0$b;

    move-result-object p0

    iget-object p0, p0, Lg9/h0$b;->b:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
