.class abstract Landroidx/compose/runtime/snapshots/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# instance fields
.field private final a:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/p;->a:Landroidx/compose/runtime/snapshots/t;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/snapshots/t;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/p;->a:Landroidx/compose/runtime/snapshots/t;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/p;->a:Landroidx/compose/runtime/snapshots/t;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/p;->a:Landroidx/compose/runtime/snapshots/t;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/p;->a:Landroidx/compose/runtime/snapshots/t;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->c()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
