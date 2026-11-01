.class public final Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0Oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o:Lkotlin/Lazy;

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->dialog_mini_open_app:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/p;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/p;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/q;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/q;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "miniappid"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string p2, ""

    invoke-interface {p1, p2, v0, p2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    new-instance v1, Lcom/cloud/tmc/integration/model/CSMKBean;

    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/model/CSMKBean;-><init>(Z)V

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1000886706715795456_web"

    const-string v2, "csmk"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v2, "120011"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const-string v4, "miniappid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v3, ""

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_NOSHOW:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const-string v4, "miniappid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const-string v5, "2"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v3, ""

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_NOSHOW:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO0O0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
