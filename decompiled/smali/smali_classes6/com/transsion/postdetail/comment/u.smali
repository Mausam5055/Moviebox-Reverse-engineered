.class public final Lcom/transsion/postdetail/comment/u;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/comment/u;->a:I

    const/16 v0, 0x34

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/comment/u;->b:I

    return-void
.end method

.method private final d(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v1, Lcom/tn/lib/widget/R$color;->line_01:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final e(Ln6/a;Ln6/a;)Z
    .locals 2

    invoke-interface {p1}, Ln6/a;->getItemType()I

    move-result p1

    invoke-interface {p2}, Ln6/a;->getItemType()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of p4, p3, Lcom/transsion/postdetail/comment/n;

    if-eqz p4, :cond_1

    check-cast p3, Lcom/transsion/postdetail/comment/n;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ln6/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_3

    return-void

    :cond_3
    invoke-interface {p4}, Ln6/a;->getItemType()I

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-lez p2, :cond_6

    add-int/lit8 p2, p2, -0x1

    :try_start_1
    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln6/a;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/transsion/postdetail/comment/u;->e(Ln6/a;Ln6/a;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/transsion/postdetail/comment/u;->a:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    nop

    :catch_0
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 11

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of v0, p3, Lcom/transsion/postdetail/comment/n;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/transsion/postdetail/comment/n;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {p3, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln6/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ln6/a;->getItemType()I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    :try_start_1
    invoke-virtual {p3, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln6/a;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/transsion/postdetail/comment/u;->e(Ln6/a;Ln6/a;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/transsion/postdetail/comment/u;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/transsion/postdetail/comment/u;->a:I

    int-to-float v2, v2

    add-float v9, v7, v2

    int-to-float v6, v3

    int-to-float v8, v4

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/transsion/postdetail/comment/u;->d(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
