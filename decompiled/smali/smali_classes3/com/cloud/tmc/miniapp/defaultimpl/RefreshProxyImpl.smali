.class public final Lcom/cloud/tmc/miniapp/defaultimpl/RefreshProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IRefreshProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableLoadMore(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)V
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableLoadMore(Z)V

    :cond_0
    return-void
.end method

.method public enableRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)V
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableRefresh(Z)V

    :cond_0
    return-void
.end method

.method public startPullDownRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->startRefresh()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopPullDownRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->stopRefresh()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopPullUpRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->stopLoadMore()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
