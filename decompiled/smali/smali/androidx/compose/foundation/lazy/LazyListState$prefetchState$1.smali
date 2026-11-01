.class final Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/layout/d0;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/d0;",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/layout/d0;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $firstVisibleItemIndex:I

.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/d0;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->invoke(Landroidx/compose/foundation/lazy/layout/d0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/layout/d0;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListState;->g(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/foundation/lazy/r;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Landroidx/compose/foundation/lazy/r;->a(Landroidx/compose/foundation/lazy/layout/d0;I)V

    return-void
.end method
