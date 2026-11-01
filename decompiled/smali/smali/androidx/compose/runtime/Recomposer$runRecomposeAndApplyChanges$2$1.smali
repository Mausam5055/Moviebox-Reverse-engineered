.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "frameTime",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/collection/MutableScatterSet;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y0;",
            ">;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/y;",
            ">;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(J)V
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->z(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Recomposer:animation"

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    sget-object v3, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->v(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v0

    move-wide/from16 v5, p1

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/BroadcastFrameClock;->q(J)V

    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->n()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v0

    :cond_0
    :goto_0
    const-string v0, "Recomposer:recompose"

    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v10, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v11, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v12, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v13, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v14, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v15, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    sget-object v3, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :try_start_1
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->N(Landroidx/compose/runtime/Recomposer;)Z

    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x0

    :goto_1
    aget-object v16, v0, v6

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/runtime/y;

    move-object/from16 p2, v0

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_27

    :cond_2
    :goto_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3

    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->m()V

    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->m()V

    :goto_3
    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move-object v1, v7

    goto/16 :goto_19

    :cond_4
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v8}, Landroidx/compose/runtime/Recomposer;->c0()J

    move-result-wide v4

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    invoke-static {v8, v4, v5}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/y;

    invoke-virtual {v15, v4}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_6

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/y;

    invoke-interface {v4}, Landroidx/compose/runtime/y;->n()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :try_start_5
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    move-object v1, v7

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_28

    :goto_6
    const/4 v6, 0x6

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v1, v7

    move-object v7, v0

    :try_start_6
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->r0(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/y;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_7
    sget-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    return-void

    :catchall_4
    move-exception v0

    goto/16 :goto_28

    :catchall_5
    move-exception v0

    :goto_8
    :try_start_8
    invoke-interface {v14}, Ljava/util/List;->clear()V

    throw v0

    :goto_9
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_d

    :try_start_9
    invoke-virtual {v15, v13}, Landroidx/collection/MutableScatterSet;->u(Landroidx/collection/ScatterSet;)V

    iget-object v0, v13, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v4, v13, Landroidx/collection/ScatterSet;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_b

    const/4 v6, 0x0

    :goto_a
    aget-wide v2, v4, v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v23, v8

    not-long v7, v2

    const/16 v24, 0x7

    shl-long v25, v7, v24

    and-long v24, v2, v25

    and-long v24, v24, v16

    cmp-long v8, v24, v16

    if-eqz v8, :cond_a

    sub-int v8, v6, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v22, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v8, :cond_9

    const-wide/16 v20, 0xff

    and-long v25, v2, v20

    const-wide/16 v18, 0x80

    cmp-long v25, v25, v18

    if-gez v25, :cond_8

    shl-int/lit8 v25, v6, 0x3

    add-int v25, v25, v7

    :try_start_a
    aget-object v25, v0, v25

    check-cast v25, Landroidx/compose/runtime/y;

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/y;->c()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_8
    move-object/from16 v25, v0

    const/16 v0, 0x8

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    :goto_c
    move-object v3, v0

    goto :goto_f

    :goto_d
    shr-long/2addr v2, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    goto :goto_b

    :cond_9
    move-object/from16 v25, v0

    const/16 v0, 0x8

    if-ne v8, v0, :cond_c

    goto :goto_e

    :cond_a
    move-object/from16 v25, v0

    :goto_e
    if-eq v6, v5, :cond_c

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v23

    move-object/from16 v0, v25

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v23, v8

    goto :goto_c

    :cond_b
    move-object/from16 v23, v8

    :cond_c
    :try_start_b
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->m()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_11

    :goto_f
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, v23

    :try_start_c
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->r0(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/y;ZILjava/lang/Object;)V

    move-object/from16 v2, v23

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->m()V

    goto/16 :goto_7

    :goto_10
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->m()V

    throw v0

    :cond_d
    move-object/from16 v23, v8

    :goto_11
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_12

    :try_start_e
    iget-object v0, v15, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v2, v15, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_11

    const/4 v4, 0x0

    :goto_12
    aget-wide v5, v2, v4

    not-long v7, v5

    const/16 v24, 0x7

    shl-long v7, v7, v24

    and-long/2addr v7, v5

    and-long v7, v7, v16

    cmp-long v7, v7, v16

    if-eqz v7, :cond_10

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v7, :cond_f

    const-wide/16 v20, 0xff

    and-long v25, v5, v20

    const-wide/16 v18, 0x80

    cmp-long v25, v25, v18

    if-gez v25, :cond_e

    shl-int/lit8 v25, v4, 0x3

    add-int v25, v25, v8

    aget-object v25, v0, v25

    check-cast v25, Landroidx/compose/runtime/y;

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/y;->t()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_e
    move-object/from16 v25, v0

    const/16 v0, 0x8

    goto :goto_14

    :catchall_7
    move-exception v0

    goto :goto_17

    :catch_3
    move-exception v0

    move-object v3, v0

    goto :goto_16

    :goto_14
    shr-long/2addr v5, v0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v25

    goto :goto_13

    :cond_f
    move-object/from16 v25, v0

    const/16 v0, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    if-ne v7, v0, :cond_11

    goto :goto_15

    :cond_10
    move-object/from16 v25, v0

    const/16 v0, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    :goto_15
    if-eq v4, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    goto :goto_12

    :cond_11
    :try_start_f
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->m()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_18

    :goto_16
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, v23

    :try_start_10
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->r0(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/y;ZILjava/lang/Object;)V

    move-object/from16 v2, v23

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->m()V

    goto/16 :goto_7

    :goto_17
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->m()V

    throw v0

    :cond_12
    :goto_18
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/Recomposer;->t(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/n;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :try_start_13
    monitor-exit v2

    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->g()V

    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->m()V

    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->m()V

    move-object/from16 v8, v23

    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    sget-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    return-void

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_14
    monitor-exit v2

    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :goto_19
    :try_start_15
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_14

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/y;

    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/Recomposer;->M(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/y;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/y;

    move-result-object v5

    if-eqz v5, :cond_13

    move-object v6, v14

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1b

    :catchall_9
    move-exception v0

    goto/16 :goto_26

    :catch_4
    move-exception v0

    move-object v3, v0

    goto/16 :goto_25

    :cond_13
    :goto_1b
    invoke-virtual {v10, v4}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_14
    :try_start_16
    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-virtual {v9}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1c

    :cond_15
    move-object/from16 v16, v2

    goto/16 :goto_21

    :cond_16
    :goto_1c
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->B(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/y;

    invoke-virtual {v10, v6}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-interface {v6, v2}, Landroidx/compose/runtime/y;->j(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_17

    move-object v7, v11

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_a
    move-exception v0

    goto/16 :goto_24

    :cond_17
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_18
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    if-ge v5, v4, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v5

    check-cast v7, Landroidx/compose/runtime/y;

    invoke-virtual {v10, v7}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_19

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_19

    move-object/from16 v16, v2

    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_19
    move-object/from16 v16, v2

    if-lez v6, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    sub-int v7, v5, v6

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v17

    aget-object v17, v17, v5

    aput-object v17, v2, v7

    :cond_1a
    :goto_20
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    goto :goto_1f

    :cond_1b
    move-object/from16 v16, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    sub-int v5, v4, v6

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v4}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/b;->z(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    monitor-exit v3

    :goto_21
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v0, :cond_1c

    :try_start_19
    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    :goto_22
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Recomposer;->L(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v13, v0}, Landroidx/collection/MutableScatterSet;->v(Ljava/lang/Iterable;)V

    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_22

    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_23

    :cond_1c
    move-object v7, v1

    move-object/from16 v2, v16

    move-object/from16 v1, p0

    goto/16 :goto_3

    :goto_23
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    :try_start_1a
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->r0(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/y;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    goto/16 :goto_7

    :goto_24
    monitor-exit v3

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_25
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    :try_start_1b
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->r0(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/y;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    :goto_26
    invoke-interface {v11}, Ljava/util/List;->clear()V

    throw v0

    :goto_27
    monitor-exit v3

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :goto_28
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v0
.end method
