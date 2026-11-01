.class public final Landroidx/compose/runtime/snapshots/g;
.super Landroidx/compose/runtime/snapshots/j;


# instance fields
.field private final g:Lkotlin/jvm/functions/Function1;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/j;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Landroidx/compose/runtime/snapshots/g;->g:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    return-void
.end method


# virtual methods
.method public A()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/g;->g:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/g;->n(Landroidx/compose/runtime/snapshots/j;)V

    invoke-super {p0}, Landroidx/compose/runtime/snapshots/j;->d()V

    :cond_0
    return-void
.end method

.method public bridge synthetic h()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/g;->A()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Lkotlin/jvm/functions/Function1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    iget p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    return-void
.end method

.method public n(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    iget p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->b()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 7

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->y(Landroidx/compose/runtime/snapshots/j;)V

    new-instance v0, Landroidx/compose/runtime/snapshots/d;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/g;->A()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v3, v6, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p0}, Landroidx/compose/runtime/snapshots/d;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/j;)V

    return-object v0
.end method
