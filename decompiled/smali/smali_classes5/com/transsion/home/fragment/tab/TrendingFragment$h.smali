.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$h;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->b1(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "TrendingFragment"

    const-string v2, "onConnected"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->a1(Lcom/transsion/home/fragment/tab/TrendingFragment;Z)V

    :cond_3
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$h;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->Z0(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    return-void
.end method
