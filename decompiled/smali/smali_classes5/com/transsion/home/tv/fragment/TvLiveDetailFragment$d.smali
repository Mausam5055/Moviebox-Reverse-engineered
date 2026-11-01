.class public final Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->I0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->J0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->I0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->G0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->J0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpl/a;->c()V

    :cond_1
    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->G0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpl/a;->d()V

    :cond_1
    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 1

    const-string p2, "errorInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->I0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p2, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p2, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->J0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->K0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p2}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lpl/a;->e(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_1
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->G0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lpl/a;->g()V

    :cond_1
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->I0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->J0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpl/a;->h()V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->I0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->G0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->L0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->H0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->J0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->E0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lpl/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpl/a;->i()V

    :cond_1
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method
