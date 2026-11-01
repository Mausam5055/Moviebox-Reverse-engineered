.class final Landroidx/media3/exoplayer/audio/a0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/media/AudioTrack;

.field private final b:Landroid/media/AudioTimestamp;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/a0$a;->a:Landroid/media/AudioTrack;

    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/a0$a;->b:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a0$a;->f:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/a0$a;->e:J

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a0$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a0$a;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a0$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a0$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->d:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    iget-boolean v5, p0, Landroidx/media3/exoplayer/audio/a0$a;->f:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/a0$a;->g:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/exoplayer/audio/a0$a;->g:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->f:Z

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->c:J

    :cond_1
    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/a0$a;->d:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->g:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/a0$a;->c:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/a0$a;->e:J

    :cond_2
    return v0
.end method
