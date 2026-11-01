.class public final Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineAppExtension"

.field private static final offlineAppViews:I = 0x4


# direct methods
.method public static final synthetic access$getOfflineAppViews$p()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    return v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final createShortCutsSuccess(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final createShortCutsSuccess(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/StatusLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppOnResume(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static final offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppOnResume(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static final offlineAppUpdate(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static final offlineAppUpdate(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private static final realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v2

    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0, p2}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    const-string p2, "offlineAppOnResume fail:"

    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private static final realOfflineAppOnResume(Landroid/widget/LinearLayout;)V
    .locals 5

    :try_start_0
    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v3, v2

    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, v2}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    const-string v1, "offlineAppOnResume fail:"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private static final realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getNetworkStatus()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NetworkUtils.getNetworkStatus:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v3, "offlineAppsSwitch"

    invoke-interface {v0, v3, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget-object p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    const-string p1, "offlineAppsSwitch is close"

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    const-string p0, "scanScene"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    return-void
.end method
