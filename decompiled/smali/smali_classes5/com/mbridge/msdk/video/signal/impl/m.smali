.class public Lcom/mbridge/msdk/video/signal/impl/m;
.super Lcom/mbridge/msdk/video/signal/impl/e;


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/impl/e;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    return-void
.end method


# virtual methods
.method public configurationChanged(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/signal/impl/e;->configurationChanged(III)V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->configurationChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public endCardShowing()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/e;->endCardShowing()Z

    move-result v0

    return v0
.end method

.method public hideAlertWebview()V
    .locals 1

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/e;->hideAlertWebview()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->hideAlertWebview()V

    :cond_0
    return-void
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/e;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public miniCardShowing()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->miniCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/e;->miniCardShowing()Z

    move-result v0

    return v0
.end method

.method public readyStatus(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->readyStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/e;->readyStatus(I)V

    return-void
.end method

.method public resizeMiniCard(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/signal/impl/e;->resizeMiniCard(III)V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->resizeMiniCard(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showAlertWebView()Z
    .locals 1

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/e;->showAlertWebView()Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showAlertWebView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showEndcard(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/e;->showEndcard(I)V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showEndcard(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showMiniCard(IIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Lcom/mbridge/msdk/video/signal/impl/e;->showMiniCard(IIIII)V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showMiniCard(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showVideoClickView(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/e;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    :cond_0
    return-void
.end method

.method public showVideoEndCover()V
    .locals 1

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/e;->showVideoEndCover()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/m;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoEndCover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
