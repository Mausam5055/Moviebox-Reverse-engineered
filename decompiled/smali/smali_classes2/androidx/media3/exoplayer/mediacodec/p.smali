.class public final Landroidx/media3/exoplayer/mediacodec/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/p$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;

.field private final b:Landroidx/media3/exoplayer/mediacodec/p$b;

.field private c:Landroid/media/LoudnessCodecController;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/p$b;->a:Landroidx/media3/exoplayer/mediacodec/p$b;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/p;-><init>(Landroidx/media3/exoplayer/mediacodec/p$b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/mediacodec/p$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p;->b:Landroidx/media3/exoplayer/mediacodec/p$b;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/p$b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/p;->b:Landroidx/media3/exoplayer/mediacodec/p$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/media/MediaCodec;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/l;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/n;->a(Landroid/media/LoudnessCodecController;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/media/MediaCodec;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/m;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/n;->a(Landroid/media/LoudnessCodecController;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/p$a;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/mediacodec/p$a;-><init>(Landroidx/media3/exoplayer/mediacodec/p;)V

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/o;->a(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {p1, v1}, Landroidx/media3/exoplayer/mediacodec/l;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
