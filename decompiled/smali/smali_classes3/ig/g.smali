.class public final Lig/g;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lig/g;->a:I

    iput-boolean p2, p0, Lig/g;->b:Z

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

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    move-result v0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-boolean p3, p0, Lig/g;->b:Z

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    iget p3, p0, Lig/g;->a:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    add-int/lit8 p3, v0, -0x1

    if-ne p4, p3, :cond_1

    iget p3, p0, Lig/g;->a:I

    div-int/lit8 p4, p3, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget p3, p0, Lig/g;->a:I

    div-int/lit8 p4, p3, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    if-ge p2, v0, :cond_2

    iget p2, p0, Lig/g;->a:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget p2, p0, Lig/g;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    rem-int/lit8 p4, p4, 0x2

    const/4 p2, 0x0

    if-nez p4, :cond_4

    move p3, p2

    goto :goto_1

    :cond_4
    iget p3, p0, Lig/g;->a:I

    div-int/lit8 p3, p3, 0x2

    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-nez p4, :cond_5

    iget p2, p0, Lig/g;->a:I

    div-int/lit8 p2, p2, 0x2

    :cond_5
    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lig/g;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-void
.end method
