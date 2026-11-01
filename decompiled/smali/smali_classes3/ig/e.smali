.class public final Lig/e;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lig/e;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lig/e;->a:F

    iput p2, p0, Lig/e;->b:F

    iput p3, p0, Lig/e;->c:F

    iput p4, p0, Lig/e;->d:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lig/e;-><init>(FFFF)V

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

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget v0, p0, Lig/e;->a:F

    cmpl-float v1, v0, p3

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p0, Lig/e;->b:F

    cmpl-float v1, v0, p3

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    iget v1, p0, Lig/e;->c:F

    cmpl-float v2, v1, p3

    if-lez v2, :cond_2

    iget v2, p0, Lig/e;->a:F

    cmpl-float v2, v2, p3

    if-lez v2, :cond_2

    if-nez p2, :cond_2

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v1, p0, Lig/e;->d:F

    cmpl-float v2, v1, p3

    if-lez v2, :cond_3

    iget v2, p0, Lig/e;->a:F

    cmpl-float v2, v2, p3

    if-lez v2, :cond_3

    if-ne p2, p4, :cond_3

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v1, p0, Lig/e;->c:F

    cmpl-float v2, v1, p3

    if-lez v2, :cond_4

    iget v2, p0, Lig/e;->b:F

    cmpl-float v2, v2, p3

    if-lez v2, :cond_4

    if-nez p2, :cond_4

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v1, p0, Lig/e;->d:F

    cmpl-float v2, v1, p3

    if-lez v2, :cond_5

    iget v2, p0, Lig/e;->b:F

    cmpl-float p3, v2, p3

    if-lez p3, :cond_5

    if-ne p2, p4, :cond_5

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/text/v;->a(Ljava/util/Locale;)I

    move-result p2

    if-ne p2, v0, :cond_6

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    return-void
.end method
