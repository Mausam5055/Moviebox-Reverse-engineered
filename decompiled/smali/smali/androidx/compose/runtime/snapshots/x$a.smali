.class public final Landroidx/compose/runtime/snapshots/x$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMutableMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/snapshots/x;->j()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field final synthetic c:Landroidx/compose/runtime/snapshots/x;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/snapshots/x;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/x$a;->c:Landroidx/compose/runtime/snapshots/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/y;->f()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/x$a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/y;->f()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/x$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/x$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/x$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/x$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/x$a;->c:Landroidx/compose/runtime/snapshots/x;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/y;->h()Landroidx/compose/runtime/snapshots/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t;->e()I

    move-result v1

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/y;->a(Landroidx/compose/runtime/snapshots/y;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/y;->h()Landroidx/compose/runtime/snapshots/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/x$a;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/x$a;->a(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method
