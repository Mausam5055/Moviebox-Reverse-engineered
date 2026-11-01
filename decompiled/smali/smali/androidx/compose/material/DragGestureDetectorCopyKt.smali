.class public abstract Landroidx/compose/material/DragGestureDetectorCopyKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    double-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->a:F

    const/16 v1, 0x12

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    sput v1, Landroidx/compose/material/DragGestureDetectorCopyKt;->b:F

    div-float/2addr v0, v1

    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->c:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/c;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    iget v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    invoke-direct {v3, v2}, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/w;

    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/c;

    iget-object v12, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v2, v0

    move-object v0, v11

    move-object v11, v10

    move-object v10, v3

    move v3, v1

    move-object v1, v12

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/c;

    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v3

    move v3, v0

    move-object v0, v10

    move-object/from16 v10, v18

    move-object/from16 v19, v5

    move v5, v1

    move-object v1, v11

    move-object/from16 v11, v19

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/c;->n0()Landroidx/compose/ui/input/pointer/o;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/compose/material/DragGestureDetectorCopyKt;->b(Landroidx/compose/ui/input/pointer/o;J)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/c;->getViewConfiguration()Landroidx/compose/ui/platform/o2;

    move-result-object v2

    move/from16 v5, p3

    invoke-static {v2, v5}, Landroidx/compose/material/DragGestureDetectorCopyKt;->c(Landroidx/compose/ui/platform/o2;I)F

    move-result v2

    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v10, v5

    move-object v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    iput-object v1, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    iput-object v10, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    iput-object v9, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    iput v3, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    iput v2, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    iput v8, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/c;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_5

    return-object v4

    :cond_5
    move/from16 v18, v3

    move v3, v2

    move-object v2, v11

    move-object v11, v10

    move-object v10, v5

    move/from16 v5, v18

    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/o;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    :goto_3
    if-ge v15, v13, :cond_7

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/w;->f()J

    move-result-wide v8

    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->p()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_8
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :goto_6
    if-ge v14, v6, :cond_a

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->f()J

    move-result-wide v6

    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move v2, v3

    move v3, v5

    move-object v5, v10

    move-object v10, v11

    const/4 v7, 0x2

    :goto_8
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v7

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->k()J

    move-result-wide v12

    invoke-static {v7, v8}, Ly/g;->m(J)F

    move-result v2

    invoke-static {v12, v13}, Ly/g;->m(J)F

    move-result v7

    sub-float/2addr v2, v7

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_f

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    iput-object v0, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    iput-object v11, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    iput-object v6, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    iput v5, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    iput v2, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    const/4 v7, 0x2

    iput v7, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/c;->m0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_d

    return-object v4

    :cond_d
    move v3, v5

    move-object v5, v6

    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->p()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_5

    :cond_e
    move-object v5, v10

    move-object v10, v11

    goto :goto_8

    :cond_f
    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->p()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v9, v6

    :goto_a
    return-object v9

    :cond_10
    move v3, v5

    move-object v5, v10

    move-object v10, v11

    const/4 v2, 0x0

    goto :goto_8
.end method

.method private static final b(Landroidx/compose/ui/input/pointer/o;J)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/w;->f()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/w;

    const/4 p0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result p1

    if-ne p1, p0, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p0, v1

    return p0
.end method

.method public static final c(Landroidx/compose/ui/platform/o2;I)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/h0$a;->b()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/h0;->g(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/o2;->f()F

    move-result p0

    sget p1, Landroidx/compose/material/DragGestureDetectorCopyKt;->c:F

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/o2;->f()F

    move-result p0

    :goto_0
    return p0
.end method
