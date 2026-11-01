.class public Lcom/cloud/tmc/integration/structure/app/TmcAppContext;
.super Lcom/cloud/tmc/integration/structure/app/BaseAppContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcintegration:AppContext"


# instance fields
.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageContainer:Landroid/view/ViewGroup;

.field protected mTabContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;-><init>(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mTabContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyTabBarTransparent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
    .locals 2

    const-class v0, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;->createFragmentManager(Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Tmcintegration:AppContext"

    const-string v1, "getData error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabBarContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public moveToBackground()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/CommonUtils;->enableKeepAlive(Lcom/cloud/tmc/integration/structure/App;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->moveToBackground()Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->onDestroy()V

    return-void
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->start(Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
