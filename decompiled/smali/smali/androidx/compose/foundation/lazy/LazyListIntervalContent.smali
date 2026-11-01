.class public final Landroidx/compose/foundation/lazy/LazyListIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/j;

# interfaces
.implements Landroidx/compose/foundation/lazy/u;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/layout/c0;

.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/j;-><init>()V

    new-instance v0, Landroidx/compose/foundation/lazy/layout/c0;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/c0;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/c0;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->g()Landroidx/compose/foundation/lazy/layout/c0;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/lazy/i;

    if-eqz p1, :cond_0

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;

    invoke-direct {v2, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;-><init>(Ljava/lang/Object;)V

    new-instance p2, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;

    invoke-direct {p2, p3}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const p3, -0x3c36593a

    const/4 v3, 0x1

    invoke-static {p3, v3, p2}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2}, Landroidx/compose/foundation/lazy/i;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, v3, v1}, Landroidx/compose/foundation/lazy/layout/c0;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c()Landroidx/compose/foundation/lazy/layout/b;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->g()Landroidx/compose/foundation/lazy/layout/c0;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Landroidx/compose/foundation/lazy/layout/c0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/c0;

    return-object v0
.end method
