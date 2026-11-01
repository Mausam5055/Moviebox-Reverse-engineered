.class final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x92,
        0x9c,
        0xa0,
        0xa1,
        0xa4
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_a

    :cond_2
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_8

    :cond_3
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object/from16 v6, p1

    goto/16 :goto_4

    :cond_4
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->O()Lst/f;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    invoke-interface {v9, v10, v0}, Lst/f;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    return-object v1

    :cond_6
    :goto_0
    check-cast v7, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    goto :goto_1

    :cond_7
    move-object v7, v8

    :goto_1
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->U()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_8
    move-object v9, v8

    :goto_2
    iget-object v10, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    move-object v7, v8

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_a
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    if-nez v9, :cond_c

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getCollectionId()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_b
    move-object v9, v8

    :cond_c
    :goto_3
    if-eqz v9, :cond_10

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lst/c;

    move-result-object v10

    if-eqz v10, :cond_f

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    invoke-interface {v10, v9, v0}, Lst/c;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_d

    return-object v1

    :cond_d
    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    :goto_4
    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_e

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_e
    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    :cond_f
    move-object v6, v8

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    :goto_5
    invoke-virtual {v2, v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f0(Ljava/util/List;)V

    move-object v2, v7

    :cond_10
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_14

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_6

    :cond_12
    move-object v9, v8

    :goto_6
    check-cast v9, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-nez v9, :cond_13

    goto :goto_7

    :cond_13
    move-object v12, v2

    move-object v2, v6

    move-object v5, v9

    goto/16 :goto_c

    :cond_14
    :goto_7
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lst/c;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    invoke-interface {v7, v9, v0}, Lst/c;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_15

    return-object v1

    :cond_15
    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    :goto_8
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    goto :goto_9

    :cond_16
    move-object v5, v8

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    :goto_9
    if-nez v5, :cond_1b

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lst/c;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    iput-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    invoke-interface {v5, v7, v0}, Lst/c;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_17

    return-object v1

    :cond_17
    :goto_a
    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_b

    :cond_18
    move-object v4, v2

    move-object v2, v6

    move-object v5, v8

    :goto_b
    if-nez v5, :cond_19

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    :cond_19
    move-object v12, v2

    move-object v2, v4

    goto :goto_c

    :cond_1a
    move-object v12, v2

    move-object v2, v4

    move-object v5, v8

    goto :goto_c

    :cond_1b
    move-object v12, v6

    :goto_c
    sget-object v4, Lnh/m;->a:Lnh/m;

    invoke-virtual {v4}, Lnh/m;->e()Z

    move-result v4

    if-eqz v4, :cond_1d

    new-instance v4, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;

    iget-object v11, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v13, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v9, v4

    move-object v10, v2

    move-object v15, v5

    invoke-direct/range {v9 .. v16}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/l2;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1c

    return-object v1

    :cond_1c
    move-object v1, v5

    :goto_d
    move-object v5, v1

    :cond_1d
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_1f

    if-eqz v5, :cond_1e

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_1e
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_1f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
