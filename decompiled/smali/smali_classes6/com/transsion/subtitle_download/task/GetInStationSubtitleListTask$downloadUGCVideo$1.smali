.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$downloadUGCVideo$1"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0x83,
        0x8d,
        0x9d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $idType:Ljava/lang/String;

.field final synthetic $ops:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field final synthetic $videoResourceId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;

    iget-object v1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v14, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v15

    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    const-string v13, " -- idType = "

    const-string v12, " -- collectionId = "

    const-string v11, " -- ugcVideoId = "

    const-string v10, " -- videoResourceId = "

    const-string v9, " -- resourceId = "

    const-string v8, " --> downloadUGCVideo() --> \u8bf7\u6c42\u63a5\u53e3\u83b7\u53d6\u5b57\u5e55\u5217\u8868\u5e76\u8fdb\u884c\u5904\u7406 --> subjectId = "

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v7, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v1, v15

    move-object v15, v8

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v1, v15

    move-object v15, v8

    goto/16 :goto_4

    :cond_2
    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, p1

    move-object/from16 v28, v7

    move-object v7, v2

    move-object/from16 v2, v28

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    :try_start_2
    sget-object v19, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v19, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static/range {v19 .. v19}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lku/a;

    move-result-object v19

    sget-object v20, Lvg/a;->a:Lvg/a$a;

    invoke-virtual/range {v20 .. v20}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v20

    iput-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    iput-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    iput-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    iput-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    move-object/from16 p1, v1

    const/4 v1, 0x1

    iput v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    move-object/from16 v18, p1

    move-object/from16 v1, v19

    move-object/from16 v19, v2

    move-object v2, v0

    move-object/from16 v21, v3

    move-object v3, v7

    move-object/from16 v22, v4

    move-object v4, v6

    move-object/from16 v16, v5

    move-object/from16 p1, v7

    const/4 v7, 0x0

    move-object/from16 v5, v20

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    invoke-interface/range {v1 .. v6}, Lku/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4

    return-object v15

    :cond_4
    move-object/from16 v6, p1

    move-object v2, v0

    move-object/from16 v5, v16

    move-object/from16 v0, v17

    move-object/from16 v3, v19

    move-object/from16 v7, v21

    move-object/from16 v4, v22

    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v15

    :try_start_3
    sget-object v15, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v19, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    move-object/from16 p1, v3

    invoke-static/range {v19 .. v19}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> subtitles = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v15, 0x0

    move-object/from16 v14, p0

    :try_start_5
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v6, 0x0

    const/4 v0, 0x4

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object v3, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v7

    move v7, v0

    move-object v15, v8

    move/from16 v8, v16

    move-object/from16 v23, v9

    move/from16 v9, v20

    move-object/from16 v24, v10

    move-object/from16 v10, v19

    move-object/from16 v25, v11

    move-object/from16 v11, v21

    move-object/from16 v26, v12

    move-object/from16 v12, v18

    move-object/from16 v27, v13

    move-object/from16 v13, p0

    :try_start_6
    invoke-static/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    :try_start_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v1, v17

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_3
    move-object v15, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    sget-object v9, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v10}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - --> \u8bf7\u6c42\u63a5\u53e3\u53d1\u751f\u5f02\u5e38 --> Throwable.it = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1$2$1;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    invoke-static {v0, v2, v14}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
