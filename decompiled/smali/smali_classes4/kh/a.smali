.class public final Lkh/a;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh/a$a;,
        Lkh/a$b;
    }
.end annotation


# static fields
.field public static final f:Lkh/a$a;


# instance fields
.field private a:Lkh/a$b;

.field private b:I

.field private c:I

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private final e:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkh/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkh/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkh/a;->f:Lkh/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lkh/a;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lkh/a;->c:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lkh/a;->e:Landroid/util/SparseArray;

    return-void
.end method

.method private final e([I[I)[I
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p2, v0

    array-length v2, p1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p1, v4

    if-le v1, v5, :cond_0

    move v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v3, p1, :cond_3

    aget v2, p2, v3

    if-ge v0, v2, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    filled-new-array {v1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method private final f(Landroidx/recyclerview/widget/GridLayoutManager;)[I
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method private final g(Landroidx/recyclerview/widget/LinearLayoutManager;)[I
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method private final h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)[I
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D([I)[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G([I)[I

    invoke-direct {p0, v0, v1}, Lkh/a;->e([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    const-class v0, Lkh/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final j()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    move-object v2, v3

    :goto_0
    instance-of v4, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v4, :cond_3

    move-object v1, v2

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0, v1}, Lkh/a;->f(Landroidx/recyclerview/widget/GridLayoutManager;)[I

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v4, :cond_4

    move-object v1, v2

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v1}, Lkh/a;->g(Landroidx/recyclerview/widget/LinearLayoutManager;)[I

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_5

    move-object v1, v2

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0, v1}, Lkh/a;->h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)[I

    move-result-object v1

    :cond_5
    :goto_1
    const/4 v4, 0x0

    aget v4, v1, v4

    aget v1, v1, v0

    if-gt v4, v1, :cond_8

    :goto_2
    iget-object v5, p0, Lkh/a;->a:Lkh/a$b;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lkh/a$b;->a()I

    move-result v5

    if-ne v4, v5, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v3

    :goto_3
    invoke-direct {p0, v5, v4}, Lkh/a;->m(Landroid/view/View;I)V

    :goto_4
    if-eq v4, v1, :cond_8

    add-int/2addr v4, v0

    goto :goto_2

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {p0}, Lkh/a;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerViewExposeUtil --> handleCurrentVisibleItems() --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    return-void
.end method

.method private final m(Landroid/view/View;I)V
    .locals 8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-double v6, p1

    mul-double/2addr v4, v6

    iget p1, p0, Lkh/a;->b:I

    int-to-double v6, p1

    mul-double/2addr v4, v6

    const/16 p1, 0x64

    int-to-double v6, p1

    div-double/2addr v4, v6

    cmpl-double p1, v2, v4

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isItemViewVisibleInLogic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lkh/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lkh/a;->e:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lkh/a;->a:Lkh/a$b;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2, p2}, Lkh/a$b;->onItemViewVisible(ZI)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lkh/a;->a:Lkh/a$b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, p2}, Lkh/a$b;->onItemViewVisible(ZI)V

    :cond_4
    iget p1, p0, Lkh/a;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lkh/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lkh/a;->l()V

    iget-object v0, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkh/a;->a:Lkh/a$b;

    iput-object v0, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-direct {p0}, Lkh/a;->j()V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lkh/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView;Lkh/a$b;)V
    .locals 0

    iput-object p2, p0, Lkh/a;->a:Lkh/a$b;

    iput-object p1, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkh/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lkh/a;->j()V

    return-void
.end method
