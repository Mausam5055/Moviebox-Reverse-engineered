.class public abstract Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/PageContext;
.implements Lcom/cloud/tmc/integration/ui/action/TitleBarAction;
.implements Lcom/cloud/tmc/integration/ui/action/TabBarAction;
.implements Lcom/cloud/tmc/integration/ui/action/KeyBoardAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;
    }
.end annotation


# instance fields
.field protected app:Lcom/cloud/tmc/integration/structure/App;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field protected page:Lcom/cloud/tmc/integration/structure/Page;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    return-void
.end method


# virtual methods
.method public abstract exitFullScreen()Ljava/lang/Boolean;
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCurrentPath()Ljava/lang/String;
.end method

.method public getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    return-void
.end method

.method public abstract setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
