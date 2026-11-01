.class final Landroidx/compose/runtime/snapshots/x;
.super Landroidx/compose/runtime/snapshots/y;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/t;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/y;-><init>(Landroidx/compose/runtime/snapshots/t;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/y;->e()V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/y;->f()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/snapshots/x$a;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/x$a;-><init>(Landroidx/compose/runtime/snapshots/x;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/x;->j()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
