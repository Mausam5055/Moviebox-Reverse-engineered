.class public final Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $llOfflineApps:Landroid/widget/LinearLayout;

.field public final synthetic $llOfflineAppsMore:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineAppsMore:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineApps:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->result$lambda$5$lambda$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->result$lambda$5(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    return-void
.end method

.method private static final result$lambda$5(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 11

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, ""

    const-string v2, "$offlineApps"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$context"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->access$getOfflineAppViews$p()I

    move-result v5

    if-le p1, v5, :cond_4

    const-string p1, "status"

    const-string v3, "more"

    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, v1, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v4

    :goto_3
    const/4 v3, 0x4

    if-ge v2, v3, :cond_11

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v2, v5, :cond_8

    if-eqz p3, :cond_6

    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v6

    :cond_6
    if-nez v6, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    if-eqz p3, :cond_9

    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v6

    :goto_4
    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-eqz p3, :cond_b

    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    :cond_b
    move-object v5, v6

    :goto_6
    instance-of v7, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    if-eqz v7, :cond_c

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    goto :goto_7

    :cond_c
    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_10

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    move-object v8, v1

    :cond_d
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    move-object v9, v1

    :cond_e
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f

    move-object v10, v1

    :cond_f
    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o()V

    iget-object v7, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0OO:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6, v6}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :cond_10
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_APP_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "miniappid"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v1, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_12

    new-instance p0, Lcom/cloud/tmc/miniapp/ui/extension/g;

    invoke-direct {p0, p4}, Lcom/cloud/tmc/miniapp/ui/extension/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :goto_9
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "offlineAppUpdate fail:"

    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_a
    return-void
.end method

.method private static final result$lambda$5$lambda$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "more"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, ""

    invoke-interface {p1, v2, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "openMCScene"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1000886706715795456"

    const-string v1, "120011"

    invoke-static {p0, v0, v1, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public result(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offlineApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineAppsMore:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineApps:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$context:Landroid/content/Context;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/extension/h;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/h;-><init>(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
