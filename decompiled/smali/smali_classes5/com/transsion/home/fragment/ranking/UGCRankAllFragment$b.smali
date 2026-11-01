.class public final Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

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

    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->h0(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->i(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "UGCRankAllFragment"

    const-string v2, "noNetWorkListener: network connected, hide error and reload"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/d0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lgl/d0;->e:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->i0(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/d0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgl/d0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->lazyLoadData()V

    :cond_3
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
