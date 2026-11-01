.class public final Lcom/transsion/shorttv_pugc/base/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# instance fields
.field private a:Lr6/f;

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(Lr6/f;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->a:Lr6/f;

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->b:[I

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->b:[I

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->b:[I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E([I)[I

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->b:[I

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/f;->e([I)I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->c:I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->c:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->c:I

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported layoutManager."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget v3, p1, v0

    if-le v3, v2, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
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

    iget p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->c:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->a:Lr6/f;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lr6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget-object p2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/f;->a:Lr6/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lr6/f;->w()V

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/f;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
