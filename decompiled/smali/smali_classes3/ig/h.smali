.class public final Lig/h;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lig/h;->a:I

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    add-int/lit8 p1, p2, -0x1

    mul-int/lit8 p1, p1, 0x8

    int-to-float p1, p1

    const/high16 v0, 0x41c00000    # 24.0f

    add-float/2addr p1, v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    div-int/2addr p1, p2

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lig/h;->d:F

    int-to-float p1, p1

    sub-float p2, p1, p2

    iput p2, p0, Lig/h;->c:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lig/h;->e:F

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 0

    iput p1, p0, Lig/h;->b:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 4

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

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p4, v0, :cond_0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lig/h;->b:I

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "TrendingTitle"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "UGCFeedsBig"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget p2, p0, Lig/h;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "TrendingMargin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p2, p0, Lig/h;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p2

    instance-of p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p3, :cond_8

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result p3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object p2

    invoke-virtual {p2, p4, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    move-result p2

    if-ne v0, p3, :cond_4

    return-void

    :cond_4
    iget p4, p0, Lig/h;->d:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_7

    if-nez p2, :cond_5

    float-to-int p2, p4

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lig/h;->c:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_6

    iget p2, p0, Lig/h;->c:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    float-to-int p2, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_6
    iget p2, p0, Lig/h;->e:F

    float-to-int p3, p2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget p2, p0, Lig/h;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-ne p2, v2, :cond_8

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    return-void
.end method
