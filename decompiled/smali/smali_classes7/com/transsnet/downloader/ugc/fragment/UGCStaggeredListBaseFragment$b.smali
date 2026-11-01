.class public final Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->w0()Landroidx/recyclerview/widget/RecyclerView$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 3

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ltz p4, :cond_b

    if-lt p4, v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {v0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsnet/downloader/ugc/adapter/c;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_4

    return-void

    :cond_4
    instance-of p4, p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p3

    instance-of p4, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p4, :cond_5

    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    goto :goto_1

    :cond_5
    move-object p3, v2

    :goto_1
    if-nez p3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-eqz p3, :cond_7

    move-object v2, p2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    :cond_7
    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result p2

    const/16 p3, 0xc

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result p3

    const/16 p4, 0x8

    invoke-static {p4}, Ldk/a;->b(I)I

    move-result p4

    if-nez p2, :cond_9

    iput p3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_9
    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :catch_0
    :cond_b
    :goto_2
    return-void
.end method
