.class public final Lcom/transsion/moviedetail/fragment/StarringFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/StarringFragment;->lazyLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/StarringFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/StarringFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/StarringFragment$a;->a:Lcom/transsion/moviedetail/fragment/StarringFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/StarringFragment$a;->a:Lcom/transsion/moviedetail/fragment/StarringFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/n;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/StarringFragment$a;->a:Lcom/transsion/moviedetail/fragment/StarringFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/n;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    :cond_1
    return-void
.end method
