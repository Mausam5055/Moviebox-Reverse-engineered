.class public interface abstract Lcom/cloud/tmc/integration/structure/PageContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContentView()Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getErrorView()Lcom/cloud/tmc/integration/structure/ui/ErrorView;
.end method

.method public abstract getLoadingView()Lcom/cloud/tmc/integration/structure/ui/LoadingView;
.end method

.method public abstract getPageContainer()Lcom/cloud/tmc/integration/structure/ui/PageContainer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getProgressBar()Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract refreshApp()V
.end method
