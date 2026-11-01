.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/r;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/r;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a:Landroidx/media3/exoplayer/source/r;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a:Landroidx/media3/exoplayer/source/r;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b:J

    return-wide v0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    return p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e:Z

    return p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f:Z

    return p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->g:Z

    return p0
.end method


# virtual methods
.method public h()Landroidx/media3/exoplayer/source/ClippingMediaSource;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;Landroidx/media3/exoplayer/source/ClippingMediaSource$a;)V

    return-object v0
.end method

.method public i(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e:Z

    return-object p0
.end method

.method public j(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    return-object p0
.end method

.method public k(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    return-object p0
.end method

.method public l(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f:Z

    return-object p0
.end method

.method public m(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b:J

    return-object p0
.end method
