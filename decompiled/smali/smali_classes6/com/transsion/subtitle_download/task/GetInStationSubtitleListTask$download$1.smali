.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$a;
    }
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$download$1"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0x43,
        0x48,
        0x49,
        0x4e,
        0x54,
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $episode:I

.field final synthetic $ops:Ljava/lang/String;

.field final synthetic $resStreamType:I

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

.field final synthetic $se:I

.field final synthetic $shortTvMiniId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $subjectName:Ljava/lang/String;

.field final synthetic $videoResourceId:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    iput-object p2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    iput-object p6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    iput p7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    iput-object p8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    iput p10, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    iput-object p11, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15
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

    move-object v0, p0

    new-instance v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;

    iget v2, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    iget-object v3, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    iget v6, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    iget-object v7, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    iget v8, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    iget-object v9, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    iget v11, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    iget-object v12, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    move-object v1, v14

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p1

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v14, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v15

    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    const-string v13, ", shortTvMiniId:"

    const-string v12, " -- ep = "

    const-string v11, " -- resourceId = "

    const-string v10, " --> download() --> \u8bf7\u6c42\u63a5\u53e3\u83b7\u53d6\u5b57\u5e55\u5217\u8868\u5e76\u8fdb\u884c\u5904\u7406 --> subjectId = "

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    goto/16 :goto_b

    :pswitch_2
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move v12, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :pswitch_3
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object v13, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_5

    :pswitch_4
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object v13, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_7

    :pswitch_5
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object v13, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_8

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    iget v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    iget v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    iget v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    move-object/from16 v17, v13

    iget-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    :try_start_5
    sget-object v18, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v18, v12

    const/4 v12, 0x2

    if-eq v0, v12, :cond_6

    const/4 v12, 0x3

    if-eq v0, v12, :cond_1

    :try_start_6
    sget-object v12, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v12}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lku/a;

    move-result-object v12

    sget-object v19, Lvg/a;->a:Lvg/a$a;

    invoke-virtual/range {v19 .. v19}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v19

    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iput v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    move-object/from16 v20, v1

    const/4 v1, 0x4

    iput v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    move-object v1, v12

    move-object v12, v2

    move-object/from16 v2, v19

    move-object/from16 p1, v12

    move v12, v3

    move-object v3, v8

    move-object/from16 v20, v10

    move-object v10, v6

    move-object/from16 v6, p0

    :try_start_7
    invoke-interface/range {v1 .. v6}, Lku/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_0

    return-object v15

    :cond_0
    move-object/from16 v5, p1

    move v2, v0

    move v0, v9

    move-object v6, v10

    move-object v4, v11

    move-object v3, v13

    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    move v9, v0

    move-object v0, v7

    move v7, v2

    move-object v2, v1

    move/from16 v26, v12

    move-object v12, v3

    move-object v3, v5

    move-object v5, v8

    move/from16 v8, v26

    move-object/from16 v27, v6

    move-object v6, v4

    move-object/from16 v4, v27

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v25, v17

    :goto_2
    move-object/from16 v24, v18

    :goto_3
    move-object/from16 v22, v20

    :goto_4
    move-object/from16 v23, v21

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto :goto_1

    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v11, v1

    move-object v1, v2

    move-object v10, v6

    move v2, v12

    move v12, v3

    sget-object v3, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->h()Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    move-result-object v3

    sget-object v4, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v3}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lku/a;

    move-result-object v3

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    iput v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    invoke-interface {v3, v4, v7, v14}, Lku/a;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_2

    return-object v15

    :cond_2
    move v3, v0

    move-object v5, v1

    move v0, v9

    move-object v6, v10

    move-object v4, v11

    move v1, v12

    :goto_5
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    :goto_6
    move v9, v0

    move-object v0, v7

    move-object v12, v13

    move v7, v3

    move-object v3, v5

    move-object v5, v8

    move v8, v1

    move-object/from16 v26, v6

    move-object v6, v4

    move-object/from16 v4, v26

    goto/16 :goto_9

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lku/a;

    move-result-object v2

    sget-object v3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    const/4 v4, 0x2

    iput v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    invoke-interface {v2, v3, v7, v14}, Lku/a;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_5

    return-object v15

    :cond_5
    move v3, v0

    move-object v5, v1

    move v0, v9

    move-object v6, v10

    move-object v4, v11

    move v1, v12

    :goto_7
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_6

    :cond_6
    move v12, v3

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v11, v1

    move-object v1, v2

    move-object v10, v6

    sget-object v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lku/a;

    move-result-object v2

    sget-object v3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    const/4 v5, 0x1

    iput v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    invoke-interface {v2, v3, v8, v4, v14}, Lku/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_7

    return-object v15

    :cond_7
    move v3, v0

    move-object v5, v1

    move v0, v9

    move-object v6, v10

    move-object v4, v11

    move v1, v12

    :goto_8
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_6

    :goto_9
    sget-object v1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v10}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v11, v20

    :try_start_8
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v20, v11

    move-object/from16 v11, v21

    :try_start_9
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v21, v11

    move-object/from16 v11, v18

    :try_start_a
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v18, v11

    :try_start_b
    const-string v11, ",resStreamType:"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v11, v17

    :try_start_c
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> subtitles = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    const/4 v13, 0x0

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v22, v20

    move-object v10, v0

    move-object/from16 v17, v11

    move-object/from16 v23, v21

    move-object/from16 v11, v16

    move-object/from16 v24, v18

    move-object/from16 v25, v17

    move-object/from16 v13, p0

    :try_start_d
    invoke-static/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_8

    return-object v15

    :cond_8
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v25, v11

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v24, v11

    move-object/from16 v25, v17

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v25, v17

    move-object/from16 v24, v18

    move-object/from16 v22, v20

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object/from16 v22, v11

    move-object/from16 v25, v17

    move-object/from16 v24, v18

    goto/16 :goto_4

    :catchall_8
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v17

    :goto_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    iget v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    iget v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    sget-object v7, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v8, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v8}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resStreamType:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - --> \u8bf7\u6c42\u63a5\u53e3\u53d1\u751f\u5f02\u5e38 --> Throwable.it = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    invoke-static {v0, v1, v14}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_a

    return-object v15

    :cond_a
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
