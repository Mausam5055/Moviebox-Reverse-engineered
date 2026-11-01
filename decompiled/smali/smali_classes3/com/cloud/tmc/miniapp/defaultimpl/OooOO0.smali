.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    return-object v0
.end method

.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOO:Z

    :cond_0
    return-void
.end method

.method public OooO00o(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setParallaxOffset(F)V

    :cond_0
    return-void
.end method

.method public OooO00o(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setEdgeLevel(I)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "tmcFragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setSwipeAlpha(F)V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V
    .locals 1

    const-string v0, "edgeLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setEdgeLevel(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V

    :cond_0
    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o()V

    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setEnableGesture(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    return-void
.end method
