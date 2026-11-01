.class public Lcom/mbridge/msdk/out/MBSplashHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MBSplashHandler"

.field private static canSkip:Z = true

.field private static defCountDownS:I = 0x5

.field private static logoSizeH:I = 0x0

.field private static logoSizeW:I = 0x0

.field private static orientation:I = 0x1


# instance fields
.field private splashProvider:Lcom/mbridge/msdk/splash/middle/c;

.field private unitId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-boolean v4, Lcom/mbridge/msdk/out/MBSplashHandler;->canSkip:Z

    sget v5, Lcom/mbridge/msdk/out/MBSplashHandler;->defCountDownS:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9

    sget v6, Lcom/mbridge/msdk/out/MBSplashHandler;->orientation:I

    sget v7, Lcom/mbridge/msdk/out/MBSplashHandler;->logoSizeH:I

    sget v8, Lcom/mbridge/msdk/out/MBSplashHandler;->logoSizeW:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/splash/middle/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/mbridge/msdk/splash/middle/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {v0, p4}, Lcom/mbridge/msdk/splash/middle/c;->c(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p5}, Lcom/mbridge/msdk/splash/middle/c;->b(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p6}, Lcom/mbridge/msdk/splash/middle/c;->a(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p7, p8}, Lcom/mbridge/msdk/splash/middle/c;->b(II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/mbridge/msdk/out/MBSplashHandler;->canSkip:Z

    sget v1, Lcom/mbridge/msdk/out/MBSplashHandler;->defCountDownS:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    sget v5, Lcom/mbridge/msdk/out/MBSplashHandler;->orientation:I

    sget v6, Lcom/mbridge/msdk/out/MBSplashHandler;->logoSizeH:I

    sget v7, Lcom/mbridge/msdk/out/MBSplashHandler;->logoSizeW:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;ZIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->unitId:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/splash/middle/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/mbridge/msdk/splash/middle/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/splash/middle/c;->c(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/splash/middle/c;->b(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p5}, Lcom/mbridge/msdk/splash/middle/c;->a(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p1, p6, p7}, Lcom/mbridge/msdk/splash/middle/c;->b(II)V

    return-void
.end method


# virtual methods
.method public allowClickSplash(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public createZoomOutByType(Lcom/mbridge/msdk/out/ZoomOutTypeEnum;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Lcom/mbridge/msdk/out/ZoomOutTypeEnum;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadAndShow(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public loadAndShow(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Ljava/lang/String;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public loadAndShowByToken(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/splash/middle/c;->b(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public loadAndShowByToken(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/splash/middle/c;->b(Ljava/lang/String;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->h()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->i()V

    :cond_0
    return-void
.end method

.method public preLoad()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/middle/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public preLoadByToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDevCloseView(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setLoadTimeOut(J)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/splash/middle/c;->a(J)V

    :cond_0
    return-void
.end method

.method public setLogoView(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/splash/middle/c;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setNotchScreenParameter(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/mbridge/msdk/splash/middle/c;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(I)V

    :cond_0
    return-void
.end method

.method public setSplashLoadListener(Lcom/mbridge/msdk/out/MBSplashLoadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Lcom/mbridge/msdk/out/MBSplashLoadListener;)V

    :cond_0
    return-void
.end method

.method public setSplashShowListener(Lcom/mbridge/msdk/out/MBSplashShowListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->a(Lcom/mbridge/msdk/out/MBSplashShowListener;)V

    :cond_0
    return-void
.end method

.method public setSupportZoomOut(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/middle/c;->d(Z)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/splash/middle/c;->c(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/splash/middle/c;->d(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/splash/middle/c;->c(Ljava/lang/String;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/splash/middle/c;->d(Ljava/lang/String;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public zoomOutAttacked()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->j()V

    :cond_0
    return-void
.end method

.method public zoomOutPlayFinish()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBSplashHandler;->splashProvider:Lcom/mbridge/msdk/splash/middle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/middle/c;->k()V

    :cond_0
    return-void
.end method
