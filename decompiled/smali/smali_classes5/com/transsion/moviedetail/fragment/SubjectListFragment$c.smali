.class public final Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->c:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->a:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported layoutManager."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->a:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->c:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;

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

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->c:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;

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
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
