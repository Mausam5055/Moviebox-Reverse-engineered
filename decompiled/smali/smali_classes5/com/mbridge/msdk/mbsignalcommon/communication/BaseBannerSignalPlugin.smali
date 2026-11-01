.class public abstract Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;
.super Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPluginDiff;


# instance fields
.field private final g:Ljava/lang/String;

.field public h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPluginDiff;-><init>()V

    const-string v0, "BannerSignalPlugin"

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "click"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->click(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "getFileInfo"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "getNetstat"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "handlerH5Exception"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "increaseOfferFrequence"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "init"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->init(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->initialize(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    :try_start_0
    instance-of v0, p1, Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string p2, "BannerSignalPlugin"

    const-string v0, "initialize"

    invoke-static {p2, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "install"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->install(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSignalCommunication(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onSignalCommunication"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "openURL"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->openURL(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "readyStatus"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "reportUrls"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "resetCountdown"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sendImpressions"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "toggleCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const-string v0, "triggerCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BaseBannerSignalPlugin;->h:Lcom/mbridge/msdk/mbsignalcommon/communication/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/b;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
