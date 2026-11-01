.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/collection/n0;

.field private b:Landroidx/compose/foundation/lazy/layout/p;

.field private c:I

.field private final d:Landroidx/collection/MutableScatterSet;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field private j:Landroidx/compose/ui/node/n;

.field private final k:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/collection/v0;->d()Landroidx/collection/n0;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/f;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e(Landroidx/compose/foundation/lazy/layout/s;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/ui/node/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j:Landroidx/compose/ui/node/n;

    return-void
.end method

.method private final e(Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final f(Landroidx/compose/foundation/lazy/layout/s;)Z
    .locals 4

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/s;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/l;->b(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private final g(Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    move-result-wide v1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p2

    invoke-static/range {v1 .. v6}, Lo0/p;->e(JIIILjava/lang/Object;)J

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lo0/p;->e(JIIILjava/lang/Object;)J

    :goto_0
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V

    return-void
.end method

.method private final m(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final o(Landroidx/compose/foundation/lazy/layout/s;Z)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    return-void
.end method

.method private final q([ILandroidx/compose/foundation/lazy/layout/s;)I
    .locals 5

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->k()I

    move-result v0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->d()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p1, v0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public final d(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/k;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object p1

    if-eqz p1, :cond_0

    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final h()J
    .locals 11

    sget-object v0, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v0}, Lo0/t$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/k;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->e()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->h()J

    move-result-wide v8

    invoke-static {v8, v9}, Lo0/p;->h(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v()J

    move-result-wide v9

    invoke-static {v9, v10}, Lo0/t;->g(J)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->h()J

    move-result-wide v8

    invoke-static {v8, v9}, Lo0/p;->i(J)I

    move-result v1

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v()J

    move-result-wide v5

    invoke-static {v5, v6}, Lo0/t;->f(J)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Lo0/u;->a(II)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final i()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public final l(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/p;Landroidx/compose/foundation/lazy/layout/t;ZZIZIILkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;)V
    .locals 40

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p9

    const/4 v12, 0x1

    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    iput-object v10, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f(Landroidx/compose/foundation/lazy/layout/s;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v12

    goto :goto_0

    :cond_1
    iget-object v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v1}, Landroidx/collection/u0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->n()V

    return-void

    :cond_2
    :goto_1
    iget v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getIndex()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v14

    :goto_2
    iput v2, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    if-eqz p7, :cond_4

    invoke-static {v14, v0}, Lo0/q;->a(II)J

    goto :goto_3

    :cond_4
    invoke-static {v0, v14}, Lo0/q;->a(II)J

    :goto_3
    if-nez p8, :cond_6

    if-nez p10, :cond_5

    goto :goto_4

    :cond_5
    move v15, v14

    goto :goto_5

    :cond_6
    :goto_4
    move v15, v12

    :goto_5
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    iget-object v2, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/u0;->a:[J

    array-length v3, v0

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v20, 0x7

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v4, 0x8

    if-ltz v3, :cond_a

    move v5, v14

    move/from16 p7, v15

    :goto_6
    aget-wide v14, v0, v5

    move-object/from16 v24, v13

    not-long v12, v14

    shl-long v12, v12, v20

    and-long/2addr v12, v14

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_9

    sub-int v12, v5, v3

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_8

    and-long v25, v14, v18

    cmp-long v25, v25, v16

    if-gez v25, :cond_7

    shl-int/lit8 v25, v5, 0x3

    add-int v25, v25, v13

    aget-object v4, v2, v25

    move-object/from16 v25, v0

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v4}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    goto :goto_8

    :cond_7
    move-object/from16 v25, v0

    :goto_8
    shr-long/2addr v14, v4

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, v25

    goto :goto_7

    :cond_8
    move-object/from16 v25, v0

    const/4 v0, 0x1

    if-ne v12, v4, :cond_b

    goto :goto_9

    :cond_9
    move-object/from16 v25, v0

    const/4 v0, 0x1

    :goto_9
    if-eq v5, v3, :cond_b

    add-int/2addr v5, v0

    move v12, v0

    move-object/from16 v13, v24

    move-object/from16 v0, v25

    goto :goto_6

    :cond_a
    move-object/from16 v24, v13

    move/from16 p7, v15

    :cond_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ge v2, v0, :cond_16

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    iget-object v5, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f(Landroidx/compose/foundation/lazy/layout/s;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    if-eqz v24, :cond_c

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, v24

    invoke-interface {v15, v14}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v14

    goto :goto_b

    :cond_c
    move-object/from16 v15, v24

    move v14, v13

    :goto_b
    if-ne v14, v13, :cond_d

    if-eqz v15, :cond_d

    const/16 v24, 0x1

    goto :goto_c

    :cond_d
    const/16 v24, 0x0

    :goto_c
    if-nez v5, :cond_12

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-direct {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    const/16 v32, 0x20

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v27, p13

    move-object/from16 v28, p14

    move/from16 v29, p11

    move/from16 v30, p12

    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V

    iget-object v12, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4, v5}, Landroidx/collection/n0;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getIndex()I

    move-result v4

    if-eq v4, v14, :cond_10

    if-eq v14, v13, :cond_10

    if-ge v14, v1, :cond_f

    iget-object v4, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_d
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    goto/16 :goto_12

    :cond_f
    iget-object v4, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    move-result-wide v12

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v12, v13}, Lo0/p;->i(J)I

    move-result v4

    goto :goto_e

    :cond_11
    invoke-static {v12, v13}, Lo0/p;->h(J)I

    move-result v4

    :goto_e
    invoke-direct {v6, v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V

    if-eqz v24, :cond_e

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_e

    aget-object v12, v3, v5

    const/4 v12, 0x1

    add-int/2addr v5, v12

    goto :goto_f

    :cond_12
    if-eqz p7, :cond_e

    const/16 v32, 0x20

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v27, p13

    move-object/from16 v28, p14

    move/from16 v29, p11

    move/from16 v30, p12

    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v4

    array-length v13, v4

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v13, :cond_13

    aget-object v25, v4, v14

    move/from16 v25, v13

    const/4 v13, 0x1

    add-int/2addr v14, v13

    move/from16 v13, v25

    goto :goto_10

    :cond_13
    const/4 v13, 0x1

    if-eqz v24, :cond_14

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v4

    array-length v5, v4

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v5, :cond_14

    aget-object v23, v4, v14

    add-int/2addr v14, v13

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v6, v3, v4, v5, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    goto :goto_12

    :cond_15
    move-object/from16 v15, v24

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    :goto_12
    add-int/2addr v2, v13

    move-object/from16 v24, v15

    const/16 v4, 0x8

    goto/16 :goto_a

    :cond_16
    move v14, v13

    move-object/from16 v15, v24

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    new-array v3, v11, [I

    move v0, v4

    :goto_13
    if-ge v0, v11, :cond_17

    aput v4, v3, v0

    add-int/2addr v0, v13

    const/4 v4, 0x0

    goto :goto_13

    :cond_17
    if-eqz p7, :cond_1d

    if-eqz v15, :cond_1d

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_18

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v1, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_18
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_19

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v0

    sub-int v24, p11, v0

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move/from16 v28, v2

    move/from16 v2, v24

    move-object/from16 v30, v3

    move-object/from16 v3, v27

    move/from16 v24, v4

    const/16 v14, 0x8

    move/from16 v4, v25

    move v14, v5

    move-object/from16 v5, v26

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v6, v1, v0, v14, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v2, v28, 0x1

    move v5, v14

    move/from16 v4, v24

    move-object/from16 v3, v30

    const/4 v14, -0x1

    goto :goto_14

    :cond_19
    move-object/from16 v30, v3

    move v14, v5

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v30

    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->y([IIIIILjava/lang/Object;)V

    goto :goto_15

    :cond_1a
    move-object/from16 v30, v3

    move v14, v5

    :goto_15
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v1, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1b
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v5, :cond_1c

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    move-object/from16 v2, v30

    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v0

    add-int v0, p12, v0

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    move-result v1

    sub-int v24, v0, v1

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v24

    move-object/from16 v34, v3

    move-object/from16 v3, v27

    move/from16 v24, v4

    move/from16 v4, v25

    move/from16 v25, v5

    move-object/from16 v5, v26

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V

    move-object/from16 v1, v34

    const/4 v0, 0x0

    invoke-static {v6, v1, v0, v14, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v25

    goto :goto_16

    :cond_1c
    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v30

    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->y([IIIIILjava/lang/Object;)V

    goto :goto_17

    :cond_1d
    move-object/from16 v30, v3

    move v14, v5

    :cond_1e
    :goto_17
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v2, v0

    sub-int/2addr v2, v14

    if-ltz v2, :cond_27

    const/4 v4, 0x0

    :goto_18
    aget-wide v12, v0, v4

    not-long v7, v12

    shl-long v7, v7, v20

    and-long/2addr v7, v12

    and-long v7, v7, v21

    cmp-long v3, v7, v21

    if-eqz v3, :cond_26

    sub-int v3, v4, v2

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_25

    and-long v7, v12, v18

    cmp-long v7, v7, v16

    if-gez v7, :cond_24

    shl-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v5

    aget-object v7, v1, v7

    iget-object v8, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v8, v7}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-interface {v10, v7}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 p1, v0

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->j(I)V

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v0

    sub-int v0, v11, v0

    move-object/from16 v39, v1

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->i(I)V

    const/4 v0, -0x1

    if-ne v14, v0, :cond_20

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v1

    array-length v8, v1

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v8, :cond_1f

    aget-object v24, v1, v14

    const/16 v23, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    :cond_1f
    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_20
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b()Lo0/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo0/b;->r()J

    move-result-wide v28

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d()I

    move-result v26

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v27

    move-object/from16 v24, p6

    move/from16 v25, v14

    invoke-interface/range {v24 .. v29}, Landroidx/compose/foundation/lazy/layout/t;->a(IIIJ)Landroidx/compose/foundation/lazy/layout/s;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroidx/compose/foundation/lazy/layout/s;->c(Z)V

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v0

    array-length v11, v0

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v11, :cond_21

    aget-object v24, v0, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_21
    if-eqz v15, :cond_22

    invoke-interface {v15, v7}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v0

    if-ne v14, v0, :cond_22

    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_22
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v38

    move-object/from16 v32, v8

    move-object/from16 v33, v1

    move-object/from16 v34, p13

    move-object/from16 v35, p14

    move/from16 v36, p11

    move/from16 v37, p12

    invoke-virtual/range {v32 .. v38}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V

    iget v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    if-ge v14, v0, :cond_23

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_23
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    const/16 v0, 0x8

    goto :goto_1d

    :cond_24
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    goto :goto_1c

    :goto_1d
    shr-long/2addr v12, v0

    const/4 v1, 0x1

    add-int/2addr v5, v1

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move/from16 v11, p9

    move-object/from16 v1, v39

    goto/16 :goto_19

    :cond_25
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne v3, v0, :cond_27

    goto :goto_1e

    :cond_26
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_1e
    if-eq v4, v2, :cond_27

    add-int/2addr v4, v1

    move-object/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p9

    move-object/from16 v1, v39

    goto/16 :goto_18

    :cond_27
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_28

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_28
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v1, :cond_2b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    iget-object v3, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    move-object/from16 v5, v30

    invoke-direct {v6, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v7

    if-eqz p8, :cond_29

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g(Landroidx/compose/foundation/lazy/layout/s;)I

    move-result v8

    goto :goto_20

    :cond_29
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f()I

    move-result v8

    :goto_20
    sub-int/2addr v8, v7

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v3

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-interface {v2, v8, v3, v7, v9}, Landroidx/compose/foundation/lazy/layout/s;->f(IIII)V

    const/4 v3, 0x1

    if-eqz p7, :cond_2a

    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    :cond_2a
    add-int/2addr v4, v3

    move-object/from16 v30, v5

    goto :goto_1f

    :cond_2b
    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v5, v30

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v5

    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->y([IIIIILjava/lang/Object;)V

    goto :goto_21

    :cond_2c
    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v5, v30

    :goto_21
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2d

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    iget-object v3, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-direct {v6, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v8

    if-eqz p8, :cond_2e

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g(Landroidx/compose/foundation/lazy/layout/s;)I

    move-result v10

    goto :goto_23

    :cond_2e
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e()I

    move-result v10

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    move-result v11

    sub-int/2addr v10, v11

    :goto_23
    add-int/2addr v10, v8

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v3

    invoke-interface {v2, v10, v3, v7, v9}, Landroidx/compose/foundation/lazy/layout/s;->f(IIII)V

    const/4 v3, 0x1

    if-eqz p7, :cond_2f

    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    :cond_2f
    add-int/2addr v4, v3

    goto :goto_22

    :cond_30
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, p4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->m()V

    return-void
.end method

.method public final n()V
    .locals 14

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v0}, Landroidx/collection/u0;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    iget-object v1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/u0;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v0}, Landroidx/collection/n0;->h()V

    :cond_4
    sget-object v0, Landroidx/compose/foundation/lazy/layout/p;->a:Landroidx/compose/foundation/lazy/layout/p$a;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    return-void
.end method
