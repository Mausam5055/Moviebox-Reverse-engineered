.class public final Lig/a;
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

    iput p1, p0, Lig/a;->a:I

    iput p2, p0, Lig/a;->b:I

    iput p3, p0, Lig/a;->c:I

    iput p4, p0, Lig/a;->d:I

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

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    instance-of v2, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_8

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result v2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget p4, p0, Lig/a;->a:I

    div-int/lit8 v3, p4, 0x2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    instance-of p4, p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p4, :cond_2

    check-cast p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s0()Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p2, :cond_1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lig/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    div-int/2addr p2, v2

    if-nez p2, :cond_3

    iget p2, p0, Lig/a;->c:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lig/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_4

    iget p2, p0, Lig/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lig/a;->d:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lig/a;->b:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p3

    if-nez p3, :cond_8

    iget p3, p0, Lig/a;->b:I

    div-int/lit8 p4, p3, 0x2

    iput p4, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    div-int/2addr p2, v2

    if-nez p2, :cond_6

    iget p2, p0, Lig/a;->c:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lig/a;->a:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_6
    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_7

    iget p2, p0, Lig/a;->a:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lig/a;->d:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iget p2, p0, Lig/a;->a:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_1
    return-void
.end method
