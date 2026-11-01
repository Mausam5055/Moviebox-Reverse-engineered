.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

.field public final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v1, "showAddHomeBottomTipsController"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v3, v0, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    const-wide/16 v3, 0x3a98

    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v5

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentForegroundTime:->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result v0

    if-eqz v0, :cond_9

    cmp-long v0, v5, v3

    if-lez v0, :cond_8

    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    :cond_5
    const/16 v1, 0x52

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v0, "not allow show, return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v0, "dev dialog is showing, return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO0O0:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-virtual {v0, p1, v2, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->setShowAddHomeBottomTipsStatus(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v0

    sub-long/2addr v7, v0

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-virtual {p1, v7, v8}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->setShowAddHomeBottomTipsDelayTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return-void
.end method
