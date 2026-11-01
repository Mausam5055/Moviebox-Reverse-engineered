.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZZILandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;Landroidx/compose/foundation/layout/b$d;Landroidx/compose/foundation/layout/b$k;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;ZLandroidx/compose/runtime/i;II)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/q;",
        "Lo0/b;",
        "Landroidx/compose/foundation/lazy/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/q;",
        "Lo0/b;",
        "containerConstraints",
        "Landroidx/compose/foundation/lazy/m;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/q;J)Landroidx/compose/foundation/lazy/m;",
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
.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/t;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/n0;

.field final synthetic $graphicsContext:Landroidx/compose/ui/graphics/a4;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/b$b;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/b$d;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/k;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $stickyHeadersEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/b$c;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/b$k;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/t;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZILkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;Landroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Z",
            "Landroidx/compose/foundation/layout/t;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/k;",
            ">;",
            "Landroidx/compose/foundation/layout/b$k;",
            "Landroidx/compose/foundation/layout/b$d;",
            "ZI",
            "Lkotlinx/coroutines/n0;",
            "Landroidx/compose/ui/graphics/a4;",
            "Landroidx/compose/ui/b$b;",
            "Landroidx/compose/ui/b$c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/b$k;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/b$d;

    iput-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyHeadersEnabled:Z

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/n0;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/a4;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/b$b;

    iput-object p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/b$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/foundation/lazy/layout/q;

    check-cast p2, Lo0/b;

    invoke-virtual {p2}, Lo0/b;->r()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/q;J)Landroidx/compose/foundation/lazy/m;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/q;J)Landroidx/compose/foundation/lazy/m;
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v14, p2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->u()Landroidx/compose/runtime/i1;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/e0;->a(Landroidx/compose/runtime/i1;)V

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->q()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->W()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v28, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :goto_2
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3

    :cond_2
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_3
    invoke-static {v14, v15, v2}, Landroidx/compose/foundation/d;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/t;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v0, v2}, Lo0/e;->c0(F)I

    move-result v2

    goto :goto_4

    :cond_3
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/foundation/layout/t;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v0, v2}, Lo0/e;->c0(F)I

    move-result v2

    :goto_4
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/t;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v0, v3}, Lo0/e;->c0(F)I

    move-result v3

    goto :goto_5

    :cond_4
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/foundation/layout/t;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v0, v3}, Lo0/e;->c0(F)I

    move-result v3

    :goto_5
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface {v4}, Landroidx/compose/foundation/layout/t;->d()F

    move-result v4

    invoke-interface {v0, v4}, Lo0/e;->c0(F)I

    move-result v4

    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/t;

    invoke-interface {v5}, Landroidx/compose/foundation/layout/t;->a()F

    move-result v5

    invoke-interface {v0, v5}, Lo0/e;->c0(F)I

    move-result v5

    add-int v13, v4, v5

    add-int v12, v2, v3

    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v6, :cond_5

    move v7, v13

    goto :goto_6

    :cond_5
    move v7, v12

    :goto_6
    if-eqz v6, :cond_6

    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v8, :cond_6

    move/from16 v18, v4

    goto :goto_7

    :cond_6
    if-eqz v6, :cond_7

    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v8, :cond_7

    move/from16 v18, v5

    goto :goto_7

    :cond_7
    if-nez v6, :cond_8

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v5, :cond_8

    move/from16 v18, v2

    goto :goto_7

    :cond_8
    move/from16 v18, v3

    :goto_7
    sub-int v20, v7, v18

    neg-int v3, v12

    neg-int v5, v13

    invoke-static {v14, v15, v3, v5}, Lo0/c;->n(JII)J

    move-result-wide v35

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/compose/foundation/lazy/k;

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/k;->d()Landroidx/compose/foundation/lazy/c;

    move-result-object v3

    invoke-static/range {v35 .. v36}, Lo0/b;->l(J)I

    move-result v5

    invoke-static/range {v35 .. v36}, Lo0/b;->k(J)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/lazy/c;->a(II)V

    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_a

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/b$k;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroidx/compose/foundation/layout/b$k;->a()F

    move-result v3

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "null verticalArrangement when isVertical == true"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/b$d;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Landroidx/compose/foundation/layout/b$d;->a()F

    move-result v3

    :goto_8
    invoke-interface {v0, v3}, Lo0/e;->c0(F)I

    move-result v24

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/m;->getItemCount()I

    move-result v27

    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_b

    invoke-static/range {p2 .. p3}, Lo0/b;->k(J)I

    move-result v3

    sub-int/2addr v3, v13

    :goto_9
    move/from16 v37, v3

    goto :goto_a

    :cond_b
    invoke-static/range {p2 .. p3}, Lo0/b;->l(J)I

    move-result v3

    sub-int/2addr v3, v12

    goto :goto_9

    :goto_a
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v3, :cond_f

    if-lez v37, :cond_c

    goto :goto_d

    :cond_c
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_d

    goto :goto_b

    :cond_d
    add-int v2, v2, v37

    :goto_b
    if-eqz v3, :cond_e

    add-int v4, v4, v37

    :cond_e
    invoke-static {v2, v4}, Lo0/q;->a(II)J

    move-result-wide v2

    :goto_c
    move-wide/from16 v16, v2

    goto :goto_e

    :cond_f
    :goto_d
    invoke-static {v2, v4}, Lo0/q;->a(II)J

    move-result-wide v2

    goto :goto_c

    :goto_e
    new-instance v38, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/b$b;

    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/b$c;

    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object/from16 v2, v38

    move-wide/from16 v3, v35

    move-object v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v21, v8

    move/from16 v8, v27

    move-object/from16 v22, v9

    move/from16 v9, v24

    move-object v0, v11

    move-object/from16 v11, v22

    move/from16 v39, v12

    move/from16 v12, v21

    move/from16 v40, v13

    move/from16 v13, v18

    move/from16 v14, v20

    move-wide/from16 v15, v16

    move-object/from16 v17, v19

    invoke-direct/range {v2 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;-><init>(JZLandroidx/compose/foundation/lazy/k;Landroidx/compose/foundation/lazy/layout/q;IILandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V

    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_f

    :cond_10
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    move-result-object v6

    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->o()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroidx/compose/foundation/lazy/LazyListState;->M(Landroidx/compose/foundation/lazy/k;I)I

    move-result v14

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->p()I

    move-result v15

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v4, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->w()Landroidx/compose/foundation/lazy/layout/w;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->n()Landroidx/compose/foundation/lazy/layout/e;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/lazy/layout/i;->a(Landroidx/compose/foundation/lazy/layout/m;Landroidx/compose/foundation/lazy/layout/w;Landroidx/compose/foundation/lazy/layout/e;)Ljava/util/List;

    move-result-object v41

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->W()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v28, :cond_11

    goto :goto_11

    :cond_11
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->C()F

    move-result v2

    :goto_10
    move/from16 v16, v2

    goto :goto_12

    :cond_12
    :goto_11
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->D()F

    move-result v2

    goto :goto_10

    :goto_12
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyHeadersEnabled:Z

    if-eqz v2, :cond_13

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/k;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :goto_13
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v19, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/b$k;

    move-object/from16 v21, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/b$d;

    move-object/from16 v22, v2

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v23, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->s()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v25

    iget v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    move/from16 v26, v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->W()Z

    move-result v29

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->y()Landroidx/compose/foundation/lazy/m;

    move-result-object v30

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/n0;

    move-object/from16 v31, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->x()Landroidx/compose/runtime/i1;

    move-result-object v32

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/a4;

    move-object/from16 v33, v2

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;

    move-object/from16 v34, v2

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, v39

    move/from16 v7, v40

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;-><init>(Landroidx/compose/foundation/lazy/layout/q;JII)V

    move/from16 v8, v27

    move-object/from16 v9, v38

    move/from16 v10, v37

    move/from16 v11, v18

    move/from16 v12, v20

    move/from16 v13, v24

    move-wide/from16 v17, v35

    move-object/from16 v20, v0

    move-object/from16 v24, p1

    move-object/from16 v27, v41

    invoke-static/range {v8 .. v34}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->e(ILandroidx/compose/foundation/lazy/o;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZLo0/e;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/l;Lkotlinx/coroutines/n0;Landroidx/compose/runtime/i1;Landroidx/compose/ui/graphics/a4;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/m;

    move-result-object v0

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/j;->W()Z

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/lazy/LazyListState;->l(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/m;ZZILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v4, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "null horizontalAlignment when isVertical == false"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
