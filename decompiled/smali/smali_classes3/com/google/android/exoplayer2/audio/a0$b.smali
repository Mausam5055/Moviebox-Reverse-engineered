.class final Lcom/google/android/exoplayer2/audio/a0$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/a0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/a0;Lcom/google/android/exoplayer2/audio/a0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/a0$b;-><init>(Lcom/google/android/exoplayer2/audio/a0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->X0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->X0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/r$a;->B(J)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->Y0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/x2$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->Y0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/x2$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x2$a;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->Y0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/x2$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->Y0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/x2$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x2$a;->b()V

    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/a0;->f1()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->X0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->C(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0$b;->a:Lcom/google/android/exoplayer2/audio/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->X0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/r$a;->D(IJJ)V

    return-void
.end method
