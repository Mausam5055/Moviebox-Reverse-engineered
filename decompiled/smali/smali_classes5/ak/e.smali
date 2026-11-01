.class public final Lak/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:F

.field private final c:Lkotlin/jvm/functions/Function1;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;FLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "onExposure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lak/e;->b:F

    iput-object p4, p0, Lak/e;->c:Lkotlin/jvm/functions/Function1;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lak/e;->d:Ljava/util/Set;

    if-eqz p1, :cond_0

    new-instance p2, Lak/e$a;

    invoke-direct {p2, p0}, Lak/e$a;-><init>(Lak/e;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    invoke-direct {p0}, Lak/e;->d()V

    return-void
.end method

.method public static final synthetic a(Lak/e;)V
    .locals 0

    invoke-direct {p0}, Lak/e;->d()V

    return-void
.end method

.method private final c(Landroid/view/View;I)Z
    .locals 4

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iget v0, p0, Lak/e;->b:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    move v0, v2

    :cond_5
    :goto_2
    int-to-float p2, p2

    int-to-float p1, p1

    mul-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lak/e;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v0, v2}, Lak/e;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lak/e;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v0, v2}, Lak/e;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    iget-object p1, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ge p2, p1, :cond_4

    iget-object v0, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lak/e;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, p2}, Lak/e;->c(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lak/e;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lak/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lak/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lak/e;->b()V

    invoke-direct {p0}, Lak/e;->d()V

    return-void
.end method
