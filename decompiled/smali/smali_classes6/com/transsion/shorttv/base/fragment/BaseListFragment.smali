.class public abstract Lcom/transsion/shorttv/base/fragment/BaseListFragment;
.super Lcom/transsion/shorttv/base/fragment/LazyFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/transsion/shorttv/base/fragment/LazyFragment<",
        "Lms/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u0017\u0010\u0019\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001f\u0010\u0013J\r\u0010 \u001a\u00020\n\u00a2\u0006\u0004\u0008 \u0010\u0005J\r\u0010!\u001a\u00020\n\u00a2\u0006\u0004\u0008!\u0010\u0005J\u0017\u0010#\u001a\u00020\n2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0011\u00a2\u0006\u0004\u0008#\u0010\u001eJ\r\u0010$\u001a\u00020\u0011\u00a2\u0006\u0004\u0008$\u0010\u0013J\u000f\u0010&\u001a\u00020%H&\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010*\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020)\u0018\u00010(H&\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\nH&\u00a2\u0006\u0004\u0008,\u0010\u0005J\u000f\u0010-\u001a\u00020\nH&\u00a2\u0006\u0004\u0008-\u0010\u0005R0\u00103\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020)\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u0010+\"\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/fragment/BaseListFragment;",
        "T",
        "Lcom/transsion/shorttv/base/fragment/LazyFragment;",
        "Lms/p;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "n0",
        "(Landroid/view/LayoutInflater;)Lms/p;",
        "",
        "initViewData",
        "initListener",
        "Landroidx/recyclerview/widget/RecyclerView$m;",
        "j0",
        "()Landroidx/recyclerview/widget/RecyclerView$m;",
        "q0",
        "",
        "r0",
        "()Z",
        "Landroid/view/View;",
        "l0",
        "()Landroid/view/View;",
        "C0",
        "emptyView",
        "A0",
        "(Landroid/view/View;)V",
        "t0",
        "isRefresh",
        "z0",
        "(Z)V",
        "s0",
        "x0",
        "u0",
        "gone",
        "v0",
        "isEmpty",
        "",
        "m0",
        "()Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "i0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "y0",
        "loadMore",
        "m",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "k0",
        "setMBaseAdapter",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "mBaseAdapter",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private m:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->l0()Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->A0(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setRvEmptyLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->p0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->o0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V

    return-void
.end method

.method private static final o0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->z0(Z)V

    sget-object p0, Lfs/b;->a:Lfs/b$a;

    const-string v0, "loading, please try again later ..."

    invoke-virtual {p0, v0}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->y0()V

    return-void
.end method

.method private static final p0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    const-string v1, "being refreshed, please try again later ..."

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->x0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->loadMore()V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->v0(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadMoreEnd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A0(Landroid/view/View;)V
    .locals 1

    const-string v0, "emptyView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public C0()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->z0(Z)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->x0()V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->B0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->n0(Landroid/view/LayoutInflater;)Lms/p;

    move-result-object p1

    return-object p1
.end method

.method public abstract i0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
.end method

.method public initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lms/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lms/p;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/shorttv/base/fragment/a;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/base/fragment/a;-><init>(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/base/fragment/b;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/base/fragment/b;-><init>(Lcom/transsion/shorttv/base/fragment/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lr6/f;->D(Lp6/f;)V

    :cond_1
    return-void
.end method

.method public initViewData()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lms/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "tvTitle"

    const-string v4, "ivBack"

    if-lez v2, :cond_0

    iget-object v2, v0, Lms/p;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v2, v0, Lms/p;->f:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lms/p;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v2, v0, Lms/p;->f:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lyr/b;->b(Landroid/view/View;)V

    :goto_0
    iget-object v0, v0, Lms/p;->f:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->q0()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public j0()Landroidx/recyclerview/widget/RecyclerView$m;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final k0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-object v0
.end method

.method public l0()Landroid/view/View;
    .locals 7

    new-instance v6, Lcom/transsion/shorttv/base/widget/StateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/transsion/shorttv/base/widget/StateView;-><init>(Landroid/content/Context;)V

    const-string v4, ""

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getEmptyDescText()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/shorttv/base/widget/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public abstract loadMore()V
.end method

.method public abstract m0()Ljava/lang/String;
.end method

.method public n0(Landroid/view/LayoutInflater;)Lms/p;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lms/p;->c(Landroid/view/LayoutInflater;)Lms/p;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public q0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lms/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lms/p;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->j0()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->i0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->r0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/shorttv/base/widget/g;

    iget-object v2, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/transsion/shorttv/base/widget/g;-><init>(Lr6/f;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_1
    return-void
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final s0()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->r()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lms/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lms/p;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->s()V

    :cond_0
    return-void
.end method

.method public final v0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr6/f;->t(Z)V

    :cond_0
    return-void
.end method

.method public final x0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->m:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method public abstract y0()V
.end method

.method public final z0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lms/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lms/p;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method
