.class public final Lcom/transsion/home/view/d;
.super Landroidx/recyclerview/widget/n;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/n;-><init>()V

    iput p1, p0, Lcom/transsion/home/view/d;->a:I

    return-void
.end method

.method private final k(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)I
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/transsion/home/view/d;->a:I

    sub-int/2addr p2, p1

    return p2
.end method

.method private final l(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)I
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)[I
    .locals 4

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/view/d;->k(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)I

    move-result p1

    aput p1, v0, v3

    aput v3, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [I

    aput v3, v0, v3

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/view/d;->l(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)I

    move-result p1

    aput p1, v0, v1

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    aput v3, v0, v3

    aput v3, v0, v1

    :goto_0
    return-object v0
.end method
