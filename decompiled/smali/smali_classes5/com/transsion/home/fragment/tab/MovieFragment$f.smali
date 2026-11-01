.class public final Lcom/transsion/home/fragment/tab/MovieFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/MovieFragment;->lazyLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/MovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/MovieFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

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
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->M0(Lcom/transsion/home/fragment/tab/MovieFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->Q0(Lcom/transsion/home/fragment/tab/MovieFragment;)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_8

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    sub-int/2addr p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/MovieItem;

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/home/bean/MovieItem;->getChannelId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->L0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/bean/MovieItem;->getSelectItems()Ljava/util/Map;

    move-result-object v1

    :cond_6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lr6/f;->w()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->L0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/transsion/home/fragment/tab/MovieFragment;->F0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$f;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->L0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/transsion/home/fragment/tab/MovieFragment;->F0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
