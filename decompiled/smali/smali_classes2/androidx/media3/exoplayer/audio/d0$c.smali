.class final Landroidx/media3/exoplayer/audio/d0$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/audio/d0;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/d0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/d0;Landroidx/media3/exoplayer/audio/d0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d0$c;-><init>(Landroidx/media3/exoplayer/audio/d0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "DecoderAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->n(Ljava/lang/Exception;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/x$a;->H(J)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/z;->c(Landroidx/media3/exoplayer/audio/AudioSink$b;)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/z;->b(Landroidx/media3/exoplayer/audio/AudioSink$b;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/d0;->Q(Landroidx/media3/exoplayer/audio/d0;Z)Z

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/z;->a(Landroidx/media3/exoplayer/audio/AudioSink$b;)V

    return-void
.end method

.method public j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->o(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->p(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/d0;->c0()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->I(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d0$c;->a:Landroidx/media3/exoplayer/audio/d0;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/d0;->R(Landroidx/media3/exoplayer/audio/d0;)Landroidx/media3/exoplayer/audio/x$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/x$a;->J(IJJ)V

    return-void
.end method
