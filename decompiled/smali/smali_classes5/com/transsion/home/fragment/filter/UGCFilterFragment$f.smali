.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->t1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.transsion.home.view.layoutmanager.OffsetGridLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/home/view/layoutmanager/OffsetGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->a:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v0

    :cond_1
    if-nez p2, :cond_3

    if-lez v1, :cond_3

    iget p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->a:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lr6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget-object p2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lr6/f;->w()V

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->c:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lgl/o;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lgl/o;->b:Lgl/f0;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lgl/f0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lgl/o;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lgl/o;->b:Lgl/f0;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    iget-object p2, p2, Lgl/f0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "llTabFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    invoke-static {p3}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->W0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lgl/o;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lgl/o;->b:Lgl/f0;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lgl/f0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment$f;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
