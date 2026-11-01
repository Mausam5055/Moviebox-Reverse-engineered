.class final Landroidx/media3/exoplayer/source/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/k$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lg2/z;

.field private final c:[B

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;

.field private f:Lcom/google/common/util/concurrent/r;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/source/j;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->a:Landroid/net/Uri;

    new-instance p3, Landroidx/media3/common/r$b;

    invoke-direct {p3}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p3, p2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p2

    new-instance p3, Lg2/z;

    new-instance v0, Landroidx/media3/common/f0;

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/media3/common/r;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v2}, Landroidx/media3/common/f0;-><init>([Landroidx/media3/common/r;)V

    new-array p2, v1, [Landroidx/media3/common/f0;

    aput-object v0, p2, v3

    invoke-direct {p3, p2}, Lg2/z;-><init>([Landroidx/media3/common/f0;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/k;->b:Lg2/z;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->c:[B

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/source/k;)Lg2/z;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/k;->b:Lg2/z;

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/source/k;)[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/k;->c:[B

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 0

    return-wide p1
.end method

.method public discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/source/k$a;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/k$a;-><init>(Landroidx/media3/exoplayer/source/k;)V

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->c(Landroidx/media3/exoplayer/source/q;)V

    new-instance p1, Landroidx/media3/exoplayer/source/j$a;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/k;->a:Landroid/net/Uri;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/j$a;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->b:Lg2/z;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->f:Lcom/google/common/util/concurrent/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    return-wide p1
.end method
