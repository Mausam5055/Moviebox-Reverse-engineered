.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6/a;

    instance-of v3, v2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
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
    .locals 7

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---onCompletion, to play, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audioPlay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioListener()Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    :cond_2
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
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->i(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->k(Lcom/transsion/player/orplayer/f;Lao/e;)V

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
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 7

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---onPlayerRelease, top, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audioPlay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioListener()Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    :cond_2
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
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioListener()Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    :cond_2
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

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
    .locals 7

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->F(Lcom/transsion/player/orplayer/f;Lao/e;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---onVideoPause, to play, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audioPlay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioListener()Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 7

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->I(Lcom/transsion/player/orplayer/f;Lao/e;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$b;->a(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---onVideoStart, to play, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audioPlay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioStatus(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioListener()Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    :cond_2
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method
