.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

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

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getMVideoViewModel(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->v()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$loadData(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getMAdapter$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/ui/adapter/e;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lr6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$loadMore(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
