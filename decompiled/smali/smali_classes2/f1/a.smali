.class public abstract Lf1/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/view/View;Landroid/view/ViewParent;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/core/viewtree/R$id;->view_tree_disjoint_parent:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
