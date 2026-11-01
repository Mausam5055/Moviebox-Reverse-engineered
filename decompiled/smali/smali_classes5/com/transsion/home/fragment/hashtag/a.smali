.class final Lcom/transsion/home/fragment/hashtag/a;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput p3, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    iput p4, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 5

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v0

    invoke-virtual {v0, p4, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, p2, -0x1

    if-ne v0, v4, :cond_4

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    instance-of p3, p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p3, :cond_7

    if-nez p4, :cond_6

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_6
    add-int/lit8 p4, p4, -0x1

    :cond_7
    div-int p3, v0, p2

    rem-int/2addr v0, p2

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    add-int/2addr p3, v0

    div-int/2addr p4, p2

    if-nez p4, :cond_9

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_9
    sub-int/2addr p3, v3

    if-ne p4, p3, :cond_a

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_a
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_b
    instance-of p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p3, :cond_e

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result p2

    if-nez p4, :cond_c

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_c
    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_d

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_d
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_e
    :goto_4
    return-void
.end method
