.class public Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;
.super Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;


# static fields
.field public static final synthetic j:I


# instance fields
.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewRect(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getEncryptPrice(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressBarOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyAppendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyAppendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->hideView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic L(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewScale(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyInsertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyInsertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewReload(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPlay(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPause(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerResume(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->init(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerStop(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->click(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerMute(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeAd(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->broadcast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showAlertView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeWeb(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadads(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createWebview(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCutout(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z0(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendSubView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public broadcast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->broadcast(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->click(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public closeAd(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeAd(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d2;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public closeWeb(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeWeb(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public createView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public createWebview(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createWebview(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getCutout(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCutout(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getEncryptPrice(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getEncryptPrice(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c2;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a2;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b2;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public hideView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->hideView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->init(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$o0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public loadads(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadads(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onlyAppendSubView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyAppendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onlyAppendViewTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyAppendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onlyInsertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyInsertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$p0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onlyInsertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->onlyInsertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$q0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerMute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerMute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerPause(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPause(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$x0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerPlay(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPlay(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$w0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerResume(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerStop(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerStop(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$z0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$h1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public progressBarOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressBarOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public progressOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$e2;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JS-Video-Brigde"

    const-string v1, "VIDEOBridge readyStatus"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$i;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$b0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$d;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$l0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$k0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setViewRect(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewRect(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$a0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setViewScale(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewScale(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public showAlertView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showAlertView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$c1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public showView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$j0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public soundOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$n1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public statistics(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$g0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$f;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$r0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public videoOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$y1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$m1;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$u0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$v0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$s0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public webviewReload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewReload(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication$t0;-><init>(Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
