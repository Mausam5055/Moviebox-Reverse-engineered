.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/g0;

# interfaces
.implements Landroidx/compose/ui/layout/x;
.implements Landroidx/compose/ui/node/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LookaheadCapablePlaceable$a;
    }
.end annotation


# static fields
.field public static final n:Landroidx/compose/ui/node/LookaheadCapablePlaceable$a;

.field private static final o:Lkotlin/jvm/functions/Function1;


# instance fields
.field private f:Landroidx/compose/ui/layout/k0;

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Landroidx/compose/ui/layout/g0$a;

.field private k:Landroidx/collection/j0;

.field private l:Landroidx/collection/j0;

.field private m:Landroidx/collection/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->n:Landroidx/compose/ui/node/LookaheadCapablePlaceable$a;

    sget-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;->INSTANCE:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/layout/g0;-><init>()V

    invoke-static {p0}, Landroidx/compose/ui/layout/PlaceableKt;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Landroidx/compose/ui/layout/g0$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j:Landroidx/compose/ui/layout/g0$a;

    return-void
.end method

.method public static final synthetic I0(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/node/c1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/compose/ui/node/c1;)V

    return-void
.end method

.method private final P0(Landroidx/compose/ui/node/c1;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/c1;->b()Landroidx/compose/ui/layout/v;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/layout/v;->x()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->m:Landroidx/collection/n0;

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez v2, :cond_5

    if-eqz v3, :cond_13

    iget-object v1, v3, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    iget-object v2, v3, Landroidx/collection/u0;->a:[J

    array-length v13, v2

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_4

    move v14, v11

    :goto_0
    aget-wide v4, v2, v14

    not-long v6, v4

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    and-long/2addr v6, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_3

    sub-int v6, v14, v13

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    move v7, v11

    :goto_1
    if-ge v7, v6, :cond_2

    const-wide/16 v17, 0xff

    and-long v19, v4, v17

    const-wide/16 v15, 0x80

    cmp-long v19, v19, v15

    if-gez v19, :cond_1

    shl-int/lit8 v19, v14, 0x3

    add-int v19, v19, v7

    aget-object v19, v1, v19

    move-object/from16 v15, v19

    check-cast v15, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v15}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l1(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    shr-long/2addr v4, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v12, :cond_4

    :cond_3
    if-eq v14, v13, :cond_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroidx/collection/n0;->h()V

    goto/16 :goto_a

    :cond_5
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l:Landroidx/collection/j0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_6

    new-instance v2, Landroidx/collection/j0;

    invoke-direct {v2, v11, v5, v4}, Landroidx/collection/j0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l:Landroidx/collection/j0;

    :cond_6
    iget-object v6, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k:Landroidx/collection/j0;

    if-nez v6, :cond_7

    new-instance v6, Landroidx/collection/j0;

    invoke-direct {v6, v11, v5, v4}, Landroidx/collection/j0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k:Landroidx/collection/j0;

    :cond_7
    invoke-virtual {v2, v6}, Landroidx/collection/j0;->p(Landroidx/collection/o0;)V

    invoke-virtual {v6}, Landroidx/collection/j0;->i()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v5

    if-eqz v5, :cond_8

    sget-object v7, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->o:Lkotlin/jvm/functions/Function1;

    new-instance v13, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;

    invoke-direct {v13, v1, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;-><init>(Landroidx/compose/ui/node/c1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-virtual {v5, v1, v7, v13}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_8
    if-eqz v3, :cond_d

    iget-object v1, v2, Landroidx/collection/o0;->b:[Ljava/lang/Object;

    iget-object v5, v2, Landroidx/collection/o0;->c:[F

    iget-object v7, v2, Landroidx/collection/o0;->a:[J

    array-length v13, v7

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_d

    move-object/from16 p1, v5

    move v14, v11

    :goto_2
    aget-wide v4, v7, v14

    not-long v11, v4

    shl-long/2addr v11, v8

    and-long/2addr v11, v4

    and-long/2addr v11, v9

    cmp-long v11, v11, v9

    if-eqz v11, :cond_c

    sub-int v11, v14, v13

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_b

    const-wide/16 v15, 0xff

    and-long v22, v4, v15

    const-wide/16 v15, 0x80

    cmp-long v20, v22, v15

    if-gez v20, :cond_a

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v12

    aget-object v21, v1, v20

    aget v20, p1, v20

    invoke-static/range {v21 .. v21}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/high16 v15, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v15}, Landroidx/collection/o0;->e(Ljava/lang/Object;F)F

    move-result v10

    cmpg-float v10, v10, v20

    if-nez v10, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v9}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/collection/MutableScatterSet;

    if-eqz v10, :cond_a

    invoke-direct {v0, v10}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l1(Landroidx/collection/MutableScatterSet;)V

    :cond_a
    :goto_4
    const/16 v9, 0x8

    shr-long/2addr v4, v9

    add-int/lit8 v12, v12, 0x1

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_3

    :cond_b
    const/16 v9, 0x8

    if-ne v11, v9, :cond_d

    :cond_c
    if-eq v14, v13, :cond_d

    add-int/lit8 v14, v14, 0x1

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto :goto_2

    :cond_d
    iget-object v1, v6, Landroidx/collection/o0;->b:[Ljava/lang/Object;

    iget-object v3, v6, Landroidx/collection/o0;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_12

    const/4 v5, 0x0

    :goto_5
    aget-wide v6, v3, v5

    not-long v9, v6

    shl-long/2addr v9, v8

    and-long/2addr v9, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_11

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_10

    const-wide/16 v13, 0xff

    and-long v15, v6, v13

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_f

    shl-int/lit8 v15, v5, 0x3

    add-int/2addr v15, v10

    aget-object v15, v1, v15

    invoke-static {v15}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroidx/collection/o0;->a(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-direct {v8, v15}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->h1(Landroidx/compose/ui/layout/j0;)V

    :cond_e
    :goto_7
    const/16 v8, 0x8

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    goto :goto_7

    :goto_8
    shr-long/2addr v6, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x7

    goto :goto_6

    :cond_10
    const/16 v8, 0x8

    const-wide/16 v13, 0xff

    const/4 v15, 0x0

    const-wide/16 v17, 0x80

    if-ne v9, v8, :cond_12

    goto :goto_9

    :cond_11
    const/16 v8, 0x8

    const-wide/16 v13, 0xff

    const/4 v15, 0x0

    const-wide/16 v17, 0x80

    :goto_9
    if-eq v5, v4, :cond_12

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x7

    goto :goto_5

    :cond_12
    invoke-virtual {v2}, Landroidx/collection/j0;->i()V

    :cond_13
    :goto_a
    return-void
.end method

.method private final S0(Landroidx/compose/ui/layout/j0;)Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k:Landroidx/collection/j0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/collection/o0;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private final h1(Landroidx/compose/ui/layout/j0;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->S0(Landroidx/compose/ui/layout/j0;)Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->m:Landroidx/collection/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableScatterSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l1(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    return-void
.end method

.method private final l1(Landroidx/collection/MutableScatterSet;)V
    .locals 13

    iget-object v0, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->W()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->a1(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->e1(Z)V

    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic E0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->e(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public synthetic H(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic J(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    move-result p1

    return p1
.end method

.method public abstract J0(Landroidx/compose/ui/layout/a;)I
.end method

.method public M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    return-object v0
.end method

.method public synthetic Q(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/d;->g(Lo0/e;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q0(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->f(Lo0/e;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final R0(Landroidx/compose/ui/layout/v;)V
    .locals 13

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/compose/ui/node/c1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/node/c1;-><init>(Landroidx/compose/ui/layout/v;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/compose/ui/node/c1;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->m:Landroidx/collection/n0;

    if-eqz p1, :cond_4

    iget-object v0, p1, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/u0;->a:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    check-cast v9, Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v9}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->l1(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->m:Landroidx/collection/n0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/collection/n0;->h()V

    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k:Landroidx/collection/j0;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/collection/j0;->i()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final T0(Landroidx/compose/ui/layout/a;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->Z0()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0(Landroidx/compose/ui/layout/a;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->k0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->g:Z

    return-void
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract W0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract X0()Landroidx/compose/ui/layout/l;
.end method

.method public abstract Z0()Z
.end method

.method public abstract a1()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public abstract b1()Landroidx/compose/ui/layout/v;
.end method

.method public synthetic c0(F)I
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    move-result p1

    return p1
.end method

.method public abstract c1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public final d1()Landroidx/compose/ui/layout/g0$a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j:Landroidx/compose/ui/layout/g0$a;

    return-object v0
.end method

.method public abstract e1()J
.end method

.method public final f1()Landroidx/compose/ui/layout/k0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->f:Landroidx/compose/ui/layout/k0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$c;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$c;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    :cond_0
    return-object v0
.end method

.method protected final g1(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/a;->D()Landroidx/compose/ui/node/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic h0(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->d(Lo0/e;J)F

    move-result p1

    return p1
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->g:Z

    return v0
.end method

.method public final j1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i:Z

    return v0
.end method

.method public final k1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->h:Z

    return v0
.end method

.method public abstract m1()V
.end method

.method public final n1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i:Z

    return-void
.end method

.method public final o1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->h:Z

    return-void
.end method

.method public synthetic p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/w;->a(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic x0(I)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->c(Lo0/e;I)F

    move-result p1

    return p1
.end method

.method public synthetic y0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    move-result p1

    return p1
.end method
