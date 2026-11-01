.class public Lcom/mbridge/msdk/out/MBRewardVideoHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MBRewardVideoHandler"


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmContent:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private confirmTitle:Ljava/lang/String;

.field private controller:Lcom/mbridge/msdk/reward/controller/a;

.field private isConfigAlertDialogTextController:Z

.field private isRewardPlusOpen:Z

.field private isSetListenerController:Z

.field private isSilent:I

.field private listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

.field private placementId:Ljava/lang/String;

.field private unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSilent:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isConfigAlertDialogTextController:Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->b(Landroid/content/Context;)V

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->initData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSilent:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isConfigAlertDialogTextController:Z

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->initData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndCreateController()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->initMBRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->configController()V

    return-void
.end method

.method private configController()V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isConfigAlertDialogTextController:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmText:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->cancelText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isConfigAlertDialogTextController:Z

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    iget-boolean v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isRewardPlusOpen:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->f(Z)V

    return-void
.end method

.method private initData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    return-void
.end method

.method private initMBRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/reward/controller/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/reward/controller/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->d(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBRewardVideoHandler"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearBitmapCache()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBRewardVideoHandler"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearVideoCache()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->c(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public loadFormSelfFilling()V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->configController()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    iput p1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSilent:I

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/reward/controller/a;->a(I)V

    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->confirmText:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->cancelText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isConfigAlertDialogTextController:Z

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/newreward/function/common/MBridgeGlobalCommon;->setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setRewardPlus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isRewardPlusOpen:Z

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/reward/controller/a;->f(Z)V

    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V
    .locals 4

    iput-object p1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    iget-object v3, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v1}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    invoke-direct {v2, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->isSetListenerController:Z

    :cond_1
    return-void
.end method

.method public show()V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->checkAndCreateController()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method
