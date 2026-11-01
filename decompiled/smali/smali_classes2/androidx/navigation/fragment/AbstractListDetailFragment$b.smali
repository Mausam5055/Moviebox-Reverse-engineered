.class public final Landroidx/navigation/fragment/AbstractListDetailFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/fragment/AbstractListDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/navigation/fragment/AbstractListDetailFragment;

.field final synthetic b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/navigation/fragment/AbstractListDetailFragment;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$b;->a:Landroidx/navigation/fragment/AbstractListDetailFragment;

    iput-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$b;->a:Landroidx/navigation/fragment/AbstractListDetailFragment;

    invoke-static {p1}, Landroidx/navigation/fragment/AbstractListDetailFragment;->V(Landroidx/navigation/fragment/AbstractListDetailFragment;)Landroidx/activity/u;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/activity/u;->setEnabled(Z)V

    return-void
.end method
