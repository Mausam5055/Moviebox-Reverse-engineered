.class public interface abstract Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract attachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
.end method

.method public abstract checkInvalidPage()V
.end method

.method public abstract createFragment(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract detachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
.end method

.method public abstract exitPage(Lcom/cloud/tmc/integration/structure/Page;ZZ)Z
.end method

.method public abstract exitTabCachePage(Lcom/cloud/tmc/integration/structure/Page;Z)Z
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract findFragmentPreForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract findHeaderFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFragmentSize()I
.end method

.method public abstract getFragments()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInnerManager()Landroidx/fragment/app/FragmentManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getReadyFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
.end method

.method public abstract isRootFragment(Lcom/cloud/tmc/integration/structure/Page;)Z
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract moveTabPageToCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;ZZ)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
.end method

.method public abstract resetFragmentToTop(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
.end method

.method public abstract switchTab(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
.end method
