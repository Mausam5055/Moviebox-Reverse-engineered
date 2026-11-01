.class public final Lcom/transsion/home/fragment/tab/SubTabFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/SubTabFragment;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$e;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

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
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$e;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$e;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->R0(Lcom/transsion/home/fragment/tab/SubTabFragment;)Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$e;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->S0(Lcom/transsion/home/fragment/tab/SubTabFragment;)V

    :cond_1
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
