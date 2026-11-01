.class public final Lcom/transsion/moviedetail/staff/u;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p3, p0, Lcom/transsion/moviedetail/staff/u;->c:I

    iput p4, p0, Lcom/transsion/moviedetail/staff/u;->d:I

    iput p5, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    instance-of p4, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    if-gtz p4, :cond_1

    move p4, v2

    :cond_1
    rem-int p4, p2, p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetail.staff.MovieStaffAdapter"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/moviedetail/staff/s;

    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p2

    if-eq p2, v2, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-nez p4, :cond_4

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    sub-int/2addr p2, v2

    if-ne p4, p2, :cond_5

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    sub-int/2addr p2, v2

    if-ne p4, p2, :cond_8

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->d:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    return-void
.end method
