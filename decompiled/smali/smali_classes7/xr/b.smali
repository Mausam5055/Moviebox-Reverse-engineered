.class public final Lxr/b;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxr/b$a;
    }
.end annotation


# static fields
.field public static final i:Lxr/b$a;

.field private static j:Ljava/lang/String;


# instance fields
.field private final a:F

.field private final b:Lxr/a;

.field private final c:Z

.field private d:I

.field private e:Lcom/transsion/shorttv/base/exposure/ExposureType;

.field private f:I

.field private g:I

.field private final h:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxr/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxr/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lxr/b;->i:Lxr/b$a;

    const-string v0, "ExposureHelper"

    sput-object v0, Lxr/b;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLxr/a;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    iput p1, p0, Lxr/b;->a:F

    iput-object p2, p0, Lxr/b;->b:Lxr/a;

    iput-boolean p3, p0, Lxr/b;->c:Z

    sget-object p1, Lcom/transsion/shorttv/base/exposure/ExposureType;->VERTICAL_FEED:Lcom/transsion/shorttv/base/exposure/ExposureType;

    iput-object p1, p0, Lxr/b;->e:Lcom/transsion/shorttv/base/exposure/ExposureType;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lxr/b;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(FLxr/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lxr/b;-><init>(FLxr/a;Z)V

    return-void
.end method

.method private final d(Landroid/view/View;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lxr/b;->d:I

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 v8, 0x2

    if-eq v4, v8, :cond_1

    int-to-double v8, p1

    mul-double/2addr v8, v5

    int-to-double v10, v1

    div-double/2addr v8, v10

    iget p1, p0, Lxr/b;->a:F

    float-to-double v10, p1

    cmpl-double v1, v8, v10

    if-ltz v1, :cond_3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    int-to-double v1, v2

    div-double/2addr v3, v1

    float-to-double v1, p1

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_3

    :goto_0
    move v0, v7

    goto :goto_1

    :cond_1
    int-to-double v3, v3

    mul-double/2addr v3, v5

    int-to-double v1, v2

    div-double/2addr v3, v1

    iget p1, p0, Lxr/b;->a:F

    float-to-double v1, p1

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_2
    int-to-double v2, p1

    mul-double/2addr v2, v5

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget p1, p0, Lxr/b;->a:F

    float-to-double v4, p1

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private final f(III)V
    .locals 6

    if-ltz p2, :cond_1

    if-ge p3, p1, :cond_1

    if-gt p2, p3, :cond_1

    if-gt p2, p3, :cond_1

    :goto_0
    iget-object p1, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v1, Lxr/b;->j:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offer position  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eq p2, p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic h(Lxr/b;Landroidx/recyclerview/widget/LinearLayoutManager;IZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lxr/b;->g(Landroidx/recyclerview/widget/LinearLayoutManager;IZZ)V

    return-void
.end method

.method private final j(I)V
    .locals 8

    iget-object v0, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    iget-object v4, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    sub-long/2addr v0, v2

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-object v3, Lxr/b;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lxr/b;->b:Lxr/a;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Lxr/a;->a(IJLandroid/view/View;)V

    return-void
.end method

.method private final k(III)V
    .locals 0

    if-ltz p2, :cond_0

    if-ge p3, p1, :cond_0

    if-gt p2, p3, :cond_0

    if-gt p2, p3, :cond_0

    :goto_0
    invoke-direct {p0, p3}, Lxr/b;->j(I)V

    if-eq p3, p2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_0
    move-wide v6, v0

    :goto_1
    sub-long v6, v0, v6

    sget-object v8, Llg/a;->a:Llg/a$a;

    sget-object v9, Lxr/b;->j:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clearCache out position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " duration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v8, p0, Lxr/b;->b:Lxr/a;

    const/4 v9, 0x0

    invoke-interface {v8, v5, v6, v7, v9}, Lxr/a;->a(IJLandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxr/b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/LinearLayoutManager;IZZ)V
    .locals 6

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1, p2, p2}, Lxr/b;->f(III)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lxr/b;->d(Landroid/view/View;)Z

    move-result p4

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v1, Lxr/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " export "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " count "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1, p2, p2}, Lxr/b;->f(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/LinearLayoutManager;Z)V
    .locals 4

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lxr/b;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lxr/b;->e:Lcom/transsion/shorttv/base/exposure/ExposureType;

    sget-object v3, Lcom/transsion/shorttv/base/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/shorttv/base/exposure/ExposureType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lxr/b;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lxr/b;->e:Lcom/transsion/shorttv/base/exposure/ExposureType;

    sget-object v3, Lcom/transsion/shorttv/base/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/shorttv/base/exposure/ExposureType;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    iget v2, p0, Lxr/b;->f:I

    if-nez v2, :cond_4

    iget v2, p0, Lxr/b;->g:I

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1, v0, v1}, Lxr/b;->f(III)V

    iput v0, p0, Lxr/b;->f:I

    iput v1, p0, Lxr/b;->g:I

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p2

    iget v2, p0, Lxr/b;->f:I

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, p2, v2, v3}, Lxr/b;->k(III)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    iget p2, p0, Lxr/b;->g:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, v1}, Lxr/b;->f(III)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lxr/b;->g:I

    invoke-direct {p0, p2, v2, v3}, Lxr/b;->k(III)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    iget p2, p0, Lxr/b;->f:I

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p1, v0, p2}, Lxr/b;->f(III)V

    :goto_2
    iput v0, p0, Lxr/b;->f:I

    iput v1, p0, Lxr/b;->g:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lxr/b;->d:I

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lxr/b;->j:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newState "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-lez p3, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v1}, Lxr/b;->i(Landroidx/recyclerview/widget/LinearLayoutManager;Z)V

    return-void
.end method
