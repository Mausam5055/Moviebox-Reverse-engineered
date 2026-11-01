.class public final Lcom/transsion/home/fragment/rank/RankAllFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/rank/RankAllFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

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

    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->q0(Lcom/transsion/home/fragment/rank/RankAllFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->i(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->q0(Lcom/transsion/home/fragment/rank/RankAllFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->lazyLoadData()V

    :cond_2
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
