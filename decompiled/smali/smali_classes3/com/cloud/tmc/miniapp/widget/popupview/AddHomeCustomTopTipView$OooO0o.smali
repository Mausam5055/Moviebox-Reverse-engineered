.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    const-string v1, "AddHomeToast"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

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
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v5, :cond_4

    check-cast v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAddScreenVisibleStatus()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_5
    move v3, v1

    :goto_3
    if-nez v3, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    const-string v0, "addScreenVisibleStatus is false"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->getDelayDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_4

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_7
    const-wide/16 v5, 0x3a98

    :goto_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getOnPauseStopTimeStamp()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-lez v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappResumeTimestamp()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappForegroundTime()J

    move-result-wide v7

    :goto_5
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentForegroundTime:->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result v3

    if-eqz v3, :cond_d

    cmp-long v3, v7, v5

    if-lez v3, :cond_c

    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    :cond_9
    const/16 v0, 0x51

    invoke-virtual {v3, v0, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    const-string v0, "not allow return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v2, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;->OooO00o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    const-string v0, "dev dialog is showing, return top topview"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0O0()V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;)Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->getMMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v9

    sub-long/2addr v3, v9

    add-long/2addr v3, v5

    sub-long/2addr v3, v7

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->setShowAddHomeTopTipsStatus(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-long/2addr v1, v5

    sub-long/2addr v1, v7

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->setShowAddHomeTopTipsDelayTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :goto_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    return-void
.end method
