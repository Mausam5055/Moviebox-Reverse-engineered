.class final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Z(Ljava/lang/String;II)V
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
    c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestVideoCollection$1"
    f = "ShortTvViewModel.kt"
    l = {
        0xff,
        0x100,
        0x103
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $endPosition:I

.field final synthetic $startPosition:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$collectionId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$startPosition:I

    iput p3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$endPosition:I

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$collectionId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$startPosition:I

    iget v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$endPosition:I

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;-><init>(Ljava/lang/String;IILcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v11, p0

    const/4 v0, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v12

    iget v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->label:I

    const/4 v13, 0x0

    const/16 v14, 0xa

    const/4 v15, 0x3

    const/4 v10, 0x2

    const/16 v16, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    if-eq v1, v10, :cond_1

    if-ne v1, v15, :cond_0

    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v2, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;

    iget-object v3, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/n0;

    iget-object v3, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;

    iget-object v2, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/n0;

    iget-object v3, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    move-object v8, v2

    move-object v2, v1

    goto/16 :goto_4

    :cond_2
    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    iget-object v2, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v1

    move-object v7, v2

    move-object v9, v3

    move-object v6, v5

    move v0, v10

    move-object/from16 v1, p1

    move-object v10, v4

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lkotlinx/coroutines/n0;

    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$collectionId:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_12

    :cond_4
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$startPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$endPosition:I

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    if-le v1, v4, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    sget-object v17, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestVideoCollection, startPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "ShortTvViewModel"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v14}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lkotlin/ranges/IntRange;

    iget v3, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v2, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    sget-object v17, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDifferent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "ShortTvViewModel"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_8

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_8
    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    iget-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->$collectionId:Ljava/lang/String;

    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lrt/a;

    move-result-object v1

    iget v3, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object v8, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    iput-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    iput-object v9, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    iput v0, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->label:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x38

    const/16 v21, 0x0

    move-object v2, v5

    move-object/from16 v22, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    move-object/from16 v23, v9

    move/from16 v9, v20

    move v0, v10

    move-object/from16 v10, v21

    :try_start_4
    invoke-static/range {v1 .. v10}, Lrt/a$a;->e(Lrt/a;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v1, v12, :cond_9

    return-object v12

    :cond_9
    move-object/from16 v9, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    :goto_1
    :try_start_5
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;

    if-eqz v5, :cond_1b

    invoke-static {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lrt/a;

    move-result-object v1

    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_b

    :try_start_6
    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v14}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v6

    goto/16 :goto_f

    :cond_a
    new-array v2, v13, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :cond_b
    move-object/from16 v2, v16

    :goto_3
    :try_start_7
    iput-object v10, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    iput-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    iput-object v9, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    iput-object v8, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    iput-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$5:Ljava/lang/Object;

    iput v0, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->label:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object/from16 v17, v5

    move v5, v0

    move-object/from16 v18, v6

    move-object v6, v14

    :try_start_8
    invoke-static/range {v1 .. v6}, Lrt/a$a;->d(Lrt/a;[Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v0, v12, :cond_c

    return-object v12

    :cond_c
    move-object v3, v7

    move-object v4, v9

    move-object v6, v10

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    :goto_4
    :try_start_9
    move-object v1, v0

    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->O()Lst/f;

    move-result-object v7

    if-eqz v7, :cond_11

    iput-object v6, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$0:Ljava/lang/Object;

    iput-object v5, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$1:Ljava/lang/Object;

    iput-object v4, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$2:Ljava/lang/Object;

    iput-object v3, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$3:Ljava/lang/Object;

    iput-object v8, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$4:Ljava/lang/Object;

    iput-object v2, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$5:Ljava/lang/Object;

    iput-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->L$6:Ljava/lang/Object;

    iput v15, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->label:I

    invoke-interface {v7, v3, v0, v11}, Lst/f;->a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_11

    return-object v12

    :cond_11
    :goto_6
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayMultiDto;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayMultiDto;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    add-int/lit8 v8, v13, 0x1

    if-gez v13, :cond_12

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_12
    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_19

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;->getUgcVideoId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_8

    :cond_14
    move-object/from16 v9, v16

    :goto_8
    check-cast v9, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v9, :cond_19

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;->getFirstImage()Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->overrideCoverByFirstImage(Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_15

    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v12, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v13, 0x1

    add-int/lit8 v14, v12, 0x1

    iput v14, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v14, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v14, v3, v10, v12, v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setBelongToCollection(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;)V

    goto :goto_9

    :cond_15
    const/4 v13, 0x1

    :goto_9
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_18

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v12}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_a

    :cond_17
    move-object/from16 v10, v16

    :goto_a
    check-cast v10, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setPlayUrl(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setStreams(Ljava/util/List;)V

    :goto_b
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    const/4 v13, 0x1

    :goto_c
    move v13, v8

    goto/16 :goto_7

    :cond_1a
    sget-object v16, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_e

    :catchall_2
    move-exception v0

    :goto_d
    move-object/from16 v5, v18

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_d

    :cond_1b
    move-object/from16 v18, v6

    move-object/from16 v5, v18

    :cond_1c
    :goto_e
    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_d

    :goto_f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    iget-object v1, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v2, Lot/b$a;->a:Lot/b$a;

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1d
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->u(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    invoke-static {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Lot/b$b;->a:Lot/b$b;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_1e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_11

    :cond_1f
    iget-object v0, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Lot/b$a;->a:Lot/b$a;

    iget-object v2, v11, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_20
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
