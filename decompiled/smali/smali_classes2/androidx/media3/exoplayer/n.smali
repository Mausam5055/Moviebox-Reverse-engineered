.class final Landroidx/media3/exoplayer/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/x2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/n$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/d4;

.field private final b:Landroidx/media3/exoplayer/n$a;

.field private c:Landroidx/media3/exoplayer/w3;

.field private d:Landroidx/media3/exoplayer/x2;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/n$a;Landroidx/media3/common/util/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/n;->b:Landroidx/media3/exoplayer/n$a;

    new-instance p1, Landroidx/media3/exoplayer/d4;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/d4;-><init>(Landroidx/media3/common/util/i;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/n;->e:Z

    return-void
.end method

.method private e(Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/w3;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    invoke-interface {v0}, Landroidx/media3/exoplayer/w3;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    invoke-interface {v0}, Landroidx/media3/exoplayer/w3;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    invoke-interface {p1}, Landroidx/media3/exoplayer/w3;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private j(Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/n;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/n;->e:Z

    iget-boolean p1, p0, Landroidx/media3/exoplayer/n;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/d4;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/x2;

    invoke-interface {p1}, Landroidx/media3/exoplayer/x2;->getPositionUs()J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/n;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/d4;->getPositionUs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/d4;->d()V

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/n;->e:Z

    iget-boolean v2, p0, Landroidx/media3/exoplayer/n;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/d4;->c()V

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/d4;->a(J)V

    invoke-interface {p1}, Landroidx/media3/exoplayer/x2;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/d4;->b(Landroidx/media3/common/z;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->b:Landroidx/media3/exoplayer/n$a;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/n$a;->onPlaybackParametersChanged(Landroidx/media3/common/z;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/w3;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    iput-object p1, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/n;->e:Z

    :cond_0
    return-void
.end method

.method public b(Landroidx/media3/common/z;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/x2;->b(Landroidx/media3/common/z;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    invoke-interface {p1}, Landroidx/media3/exoplayer/x2;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/d4;->b(Landroidx/media3/common/z;)V

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/w3;)V
    .locals 2

    invoke-interface {p1}, Landroidx/media3/exoplayer/w3;->getMediaClock()Landroidx/media3/exoplayer/x2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    iput-object p1, p0, Landroidx/media3/exoplayer/n;->c:Landroidx/media3/exoplayer/w3;

    iget-object p1, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/d4;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/x2;->b(Landroidx/media3/common/z;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/d4;->a(J)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/n;->f:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->c()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/n;->f:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->d()V

    return-void
.end method

.method public getPlaybackParameters()Landroidx/media3/common/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/x2;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/x2;

    invoke-interface {v0}, Landroidx/media3/exoplayer/x2;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Z)J
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/n;->j(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/n;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/n;->a:Landroidx/media3/exoplayer/d4;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/d4;->i()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->d:Landroidx/media3/exoplayer/x2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/x2;

    invoke-interface {v0}, Landroidx/media3/exoplayer/x2;->i()Z

    move-result v0

    :goto_0
    return v0
.end method
