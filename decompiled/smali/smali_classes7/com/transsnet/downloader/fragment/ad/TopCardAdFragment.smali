.class public final Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lpy/k0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\r\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lpy/k0;",
        "<init>",
        "()V",
        "",
        "l0",
        "()Ljava/lang/String;",
        "",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "m0",
        "(Landroid/view/LayoutInflater;)Lpy/k0;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "getPageStateLayoutTitle",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "lazyLoadData",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "loadDefaultData",
        "k0",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    return-void
.end method

.method private final l0()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadListScene"

    return-object v0
.end method


# virtual methods
.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;->m0(Landroid/view/LayoutInflater;)Lpy/k0;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initViewData()V
    .locals 0

    return-void
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/k0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/k0;->c:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->affirm()V

    :cond_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public loadDefaultData()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/k0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/k0;->c:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->setSceneId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/k0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/k0;->c:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->initAd()V

    :cond_1
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;)Lpy/k0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpy/k0;->c(Landroid/view/LayoutInflater;)Lpy/k0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "TopCardAdFragment"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/k0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/k0;->c:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->destroy()V

    :cond_0
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method
