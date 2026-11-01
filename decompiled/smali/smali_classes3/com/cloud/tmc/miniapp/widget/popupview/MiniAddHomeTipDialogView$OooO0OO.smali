.class public final Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefresh:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable(J)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 11

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string v3, "showAddHomeTipDialogController"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1, v3, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    const-wide/16 v3, 0x3a98

    :goto_1
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v5

    :goto_2
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    iget-object v7, v7, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentForegroundTime:->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result v7

    if-eqz v7, :cond_8

    cmp-long v7, v5, v3

    if-lez v7, :cond_7

    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    :cond_5
    const/16 v4, 0x53

    invoke-virtual {v3, v4, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    const-string v0, "not allow show ,return "

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/miniapp/utils/intercept/OooO00o;

    invoke-direct {v3}, Lcom/cloud/tmc/miniapp/utils/intercept/OooO00o;-><init>()V

    invoke-interface {v2, v3}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-virtual {v1, p1, v2, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setShowAddHomeDialogStatus(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v7

    sub-long/2addr v1, v7

    add-long/2addr v1, v3

    sub-long/2addr v1, v5

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->setShowAddHomeDialogDelayTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method
