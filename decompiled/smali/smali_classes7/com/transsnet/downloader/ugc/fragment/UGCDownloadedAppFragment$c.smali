.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->l0()Landroidx/recyclerview/widget/RecyclerView$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->i0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsnet/downloader/ugc/adapter/c;

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    instance-of p4, p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz p4, :cond_8

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p3

    instance-of p4, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-eqz p3, :cond_4

    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result p2

    const/16 p3, 0xc

    invoke-static {p3}, Ldk/a;->b(I)I

    move-result p3

    const/16 p4, 0x8

    invoke-static {p4}, Ldk/a;->b(I)I

    move-result v0

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    goto :goto_1

    :cond_6
    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iput p3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-static {p4}, Ldk/a;->b(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_8
    :goto_2
    return-void
.end method
