.class final Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListMeasureKt;->e(ILandroidx/compose/foundation/lazy/o;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZLo0/e;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/l;Lkotlinx/coroutines/n0;Landroidx/compose/runtime/i1;Landroidx/compose/ui/graphics/a4;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/g0$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/layout/g0$a;",
        "",
        "invoke",
        "(Landroidx/compose/ui/layout/g0$a;)V",
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
.field final synthetic $headerItem:Landroidx/compose/foundation/lazy/n;

.field final synthetic $isLookingAhead:Z

.field final synthetic $placementScopeInvalidator:Landroidx/compose/runtime/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/i1;"
        }
    .end annotation
.end field

.field final synthetic $positionedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/foundation/lazy/n;ZLandroidx/compose/runtime/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/n;",
            ">;",
            "Landroidx/compose/foundation/lazy/n;",
            "Z",
            "Landroidx/compose/runtime/i1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$positionedItems:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$headerItem:Landroidx/compose/foundation/lazy/n;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$isLookingAhead:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$placementScopeInvalidator:Landroidx/compose/runtime/i1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/layout/g0$a;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->invoke(Landroidx/compose/ui/layout/g0$a;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/g0$a;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$positionedItems:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$headerItem:Landroidx/compose/foundation/lazy/n;

    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$isLookingAhead:Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/n;

    if-eq v5, v1, :cond_0

    invoke-virtual {v5, p1, v2}, Landroidx/compose/foundation/lazy/n;->q(Landroidx/compose/ui/layout/g0$a;Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$headerItem:Landroidx/compose/foundation/lazy/n;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$isLookingAhead:Z

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/lazy/n;->q(Landroidx/compose/ui/layout/g0$a;Z)V

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$placementScopeInvalidator:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/e0;->a(Landroidx/compose/runtime/i1;)V

    return-void
.end method
