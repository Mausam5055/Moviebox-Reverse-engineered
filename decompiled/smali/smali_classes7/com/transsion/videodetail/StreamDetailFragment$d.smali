.class public final Lcom/transsion/videodetail/StreamDetailFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$d;->a:Lcom/transsion/videodetail/StreamDetailFragment;

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

    iget-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$d;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {p1}, Lcom/transsion/videodetail/StreamDetailFragment;->L0(Lcom/transsion/videodetail/StreamDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$d;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {p1}, Lcom/transsion/videodetail/StreamDetailFragment;->S0(Lcom/transsion/videodetail/StreamDetailFragment;)Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/videodetail/VideoDetailViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/videodetail/StreamDetailFragment$d;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {p2}, Lcom/transsion/videodetail/StreamDetailFragment;->S0(Lcom/transsion/videodetail/StreamDetailFragment;)Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/videodetail/VideoDetailViewModel;->w()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getSe()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getEp()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {p2, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->M0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V

    :cond_1
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
