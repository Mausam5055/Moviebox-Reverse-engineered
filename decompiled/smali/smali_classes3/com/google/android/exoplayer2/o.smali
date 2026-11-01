.class final Lcom/google/android/exoplayer2/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/h0;

.field private final b:Lcom/google/android/exoplayer2/o$a;

.field private c:Lcom/google/android/exoplayer2/x2;

.field private d:Lcom/google/android/exoplayer2/util/u;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/o$a;Lcom/google/android/exoplayer2/util/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->b:Lcom/google/android/exoplayer2/o$a;

    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/h0;-><init>(Lcom/google/android/exoplayer2/util/e;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->e:Z

    return-void
.end method

.method private e(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x2;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x2;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private i(Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->e:Z

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/o;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/u;->getPositionUs()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/o;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->getPositionUs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()V

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/o;->e:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/o;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->c()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->a(J)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/u;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->b(Lcom/google/android/exoplayer2/n2;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->b:Lcom/google/android/exoplayer2/o$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/o$a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/x2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->e:Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/n2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/u;->b(Lcom/google/android/exoplayer2/n2;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/u;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->b(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/x2;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->getMediaClock()Lcom/google/android/exoplayer2/util/u;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->c:Lcom/google/android/exoplayer2/x2;

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/u;->b(Lcom/google/android/exoplayer2/n2;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/h0;->a(J)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->f:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->c()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->f:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()V

    return-void
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/n2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/u;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/u;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Z)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o;->i(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
