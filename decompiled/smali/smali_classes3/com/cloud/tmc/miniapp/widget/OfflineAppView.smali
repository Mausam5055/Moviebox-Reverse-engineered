.class public final Lcom/cloud/tmc/miniapp/widget/OfflineAppView;
.super Landroid/widget/LinearLayout;


# instance fields
.field public OooO:Ljava/lang/String;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Landroid/widget/ImageView;

.field public OooO0OO:Landroid/widget/TextView;

.field public OooO0Oo:Landroid/widget/TextView;

.field public OooO0o:Ljava/lang/String;

.field public OooO0o0:Z

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "OfflineAppExtension"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oo:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/cloud/tmc/miniapp/R$layout;->mini_view_offlineapp:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/cloud/tmc/miniapp/R$id;->iv_icon:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.iv_icon)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0O0:Landroid/widget/ImageView;

    sget p2, Lcom/cloud/tmc/miniapp/R$id;->tv_name:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.tv_name)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0OO:Landroid/widget/TextView;

    sget p2, Lcom/cloud/tmc/miniapp/R$id;->tv_button:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.tv_button)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0Oo:Landroid/widget/TextView;

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0O0:Landroid/widget/ImageView;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/m;

    invoke-direct {p3, p0, p1}, Lcom/cloud/tmc/miniapp/widget/m;-><init>(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0Oo:Landroid/widget/TextView;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/n;

    invoke-direct {p3, p0, p1}, Lcom/cloud/tmc/miniapp/widget/n;-><init>(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o:Ljava/lang/String;

    const-string p3, "init fail:"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0O0:Landroid/widget/ImageView;

    const/high16 p0, 0x41400000    # 12.0f

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v5

    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->mini_icon_placeholder:I

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o0:Z

    if-eqz v0, :cond_1

    const-string v0, "mfah"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    const-string v1, "120011"

    invoke-static {p1, v0, v1, p2}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    const-string v1, "miniappid"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string p0, ""

    invoke-interface {p1, p0, p2, p0, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o0:Z

    const-string v0, "miniappid"

    const-string v1, "type"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v3, ""

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "120011"

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "open"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v3, p2, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oo:Ljava/lang/String;

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "get"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v3, p2, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/l;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/l;-><init>(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o:Ljava/lang/String;

    const-string v2, "updateImage fail:"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oo:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    const-class p1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    const-string p2, "1000886706715795456"

    invoke-interface {p1, p4, p2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO:Ljava/lang/String;

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v0, p2, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o0:Z

    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string p2, "addHomeSwitch"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o:Ljava/lang/String;

    const-string p2, "addHomeSwitch close"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o0:Z

    :cond_3
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0o0:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_offlineapps_open:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_offlineapps_get:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
