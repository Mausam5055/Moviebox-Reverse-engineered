.class public Lr6/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lp6/f;

.field private c:Z

.field private d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field private e:Z

.field private f:Lq6/a;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr6/f;->c:Z

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-static {}, Lr6/j;->a()Lq6/a;

    move-result-object v0

    iput-object v0, p0, Lr6/f;->f:Lq6/a;

    iput-boolean p1, p0, Lr6/f;->h:Z

    iput-boolean p1, p0, Lr6/f;->i:Z

    iput p1, p0, Lr6/f;->j:I

    return-void
.end method

.method private static final G(Lr6/f;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lr6/f;->w()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lr6/f;->w()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lr6/f;->g:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lr6/f;->w()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lr6/f;)V
    .locals 0

    invoke-static {p0}, Lr6/f;->o(Lr6/f;)V

    return-void
.end method

.method public static synthetic b(Lr6/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lr6/f;->G(Lr6/f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lr6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 0

    invoke-static {p0, p1}, Lr6/f;->g(Lr6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V
    .locals 0

    invoke-static {p0, p1}, Lr6/f;->h(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V

    return-void
.end method

.method private static final g(Lr6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p1}, Lr6/f;->q(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr6/f;->c:Z

    :cond_0
    return-void
.end method

.method private static final h(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V
    .locals 2

    const-string v0, "$manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E([I)[I

    invoke-direct {p1, v0}, Lr6/f;->l([I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    iget-object v1, p1, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-eq p0, v1, :cond_0

    iput-boolean v0, p1, Lr6/f;->c:Z

    :cond_0
    return-void
.end method

.method private final l([I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-le v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private final n()V
    .locals 2

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lr6/b;

    invoke-direct {v1, p0}, Lr6/b;-><init>(Lr6/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr6/f;->b:Lp6/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lp6/f;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final o(Lr6/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr6/f;->b:Lp6/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lp6/f;->a()V

    :cond_0
    return-void
.end method

.method private final q(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic u(Lr6/f;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lr6/f;->t(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadMoreEnd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6/f;->g:Z

    return-void
.end method

.method public final B(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6/f;->i:Z

    return-void
.end method

.method public final C(Lq6/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lr6/f;->f:Lq6/a;

    return-void
.end method

.method public D(Lp6/f;)V
    .locals 0

    iput-object p1, p0, Lr6/f;->b:Lp6/f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr6/f;->z(Z)V

    return-void
.end method

.method public final E(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lr6/f;->j:I

    :cond_0
    return-void
.end method

.method public final F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lr6/c;

    invoke-direct {v0, p0}, Lr6/c;-><init>(Lr6/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-boolean v0, p0, Lr6/f;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lr6/f;->j:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-boolean p1, p0, Lr6/f;->c:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lr6/f;->n()V

    return-void
.end method

.method public final f()V
    .locals 5

    iget-boolean v0, p0, Lr6/f;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr6/f;->c:Z

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_3

    new-instance v2, Lr6/d;

    invoke-direct {v2, p0, v1}, Lr6/d;-><init>(Lr6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_4

    new-instance v2, Lr6/e;

    invoke-direct {v2, v1, p0}, Lr6/e;-><init>(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    iget-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object v0
.end method

.method public final j()Lq6/a;
    .locals 1

    iget-object v0, p0, Lr6/f;->f:Lq6/a;

    return-object v0
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    move-result v1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->V()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Lr6/f;->b:Lp6/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr6/f;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lr6/f;->e:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lr6/f;->k:Z

    return v0
.end method

.method public final r()Z
    .locals 2

    iget-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0}, Lr6/f;->f()V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lr6/f;->e:Z

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 2

    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-direct {p0}, Lr6/f;->n()V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lr6/f;->b:Lp6/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr6/f;->z(Z)V

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    :cond_0
    return-void
.end method

.method public final y(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6/f;->h:Z

    return-void
.end method

.method public final z(Z)V
    .locals 1

    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result v0

    iput-boolean p1, p0, Lr6/f;->k:Z

    invoke-virtual {p0}, Lr6/f;->m()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object p1, p0, Lr6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object p1, p0, Lr6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lr6/f;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method
