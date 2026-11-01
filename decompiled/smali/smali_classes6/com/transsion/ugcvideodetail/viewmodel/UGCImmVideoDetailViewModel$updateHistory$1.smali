.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$updateHistory$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0x29b,
        0x2bc,
        0x2c4,
        0x2c6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

.field final synthetic $playProgress:J

.field final synthetic $totalDuration:J

.field I$0:I

.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            "JJ",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    iput-wide p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    iput-wide p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    iput-object p6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    iget-object v6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 67

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    const-wide/16 v1, 0x3e8

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, ", progress "

    const-string v7, ", ugcVideoId:"

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v12, :cond_3

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_2

    if-ne v0, v6, :cond_1

    :cond_0
    iget-wide v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    iget-object v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    iget v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->I$0:I

    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    iget-object v5, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v10

    goto/16 :goto_8

    :cond_3
    iget-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object v6, v0

    move-object v8, v15

    goto/16 :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v11

    if-nez v11, :cond_5

    goto/16 :goto_13

    :cond_5
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    cmp-long v13, v3, v1

    if-gez v13, :cond_8

    iget-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getDuration()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_0

    :cond_7
    const-wide/16 v15, 0x0

    :goto_0
    const/16 v3, 0x3e8

    int-to-long v3, v3

    mul-long/2addr v3, v15

    :cond_8
    iget-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    cmp-long v15, v13, v3

    if-lez v15, :cond_9

    move-wide v13, v3

    :cond_9
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_a
    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SINGLE_"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_b
    sget-object v17, Llg/a;->a:Llg/a$a;

    iget-wide v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imm saveUGCVideoHistory -------- collectionId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\uff0c totalDuration\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "UGCImmVideoDetailViewModel"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v1

    iput-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    iput-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    iput-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    iput-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    iput v12, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    invoke-interface {v1, v15, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_c

    return-object v10

    :cond_c
    move-object v8, v0

    move-object v6, v15

    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    sget-object v0, Llg/a;->a:Llg/a$a;

    if-nez v1, :cond_d

    move v2, v12

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imm saveUGCVideoHistory2 -------- "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "UGCImmVideoDetailViewModel"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v12

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    :goto_4
    iget-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v15

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_f
    const/4 v15, 0x0

    :goto_5
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_10

    if-nez v2, :cond_11

    :cond_10
    move-object v15, v10

    goto/16 :goto_b

    :cond_11
    move-object/from16 v66, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveUGCVideoHistory old,collectionId:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "UGCImmVideoDetailViewModel"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_6
    const-wide/16 v17, 0x3e8

    goto :goto_7

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_6

    :goto_7
    cmp-long v0, v0, v17

    if-gez v0, :cond_14

    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    iput-object v8, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    iput v12, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->I$0:I

    iput-wide v10, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    const/4 v1, 0x3

    iput v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->h(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v15, v66

    if-ne v0, v15, :cond_13

    return-object v15

    :cond_13
    move-object v5, v6

    move-object v7, v8

    move-wide v0, v10

    move v2, v12

    move-wide v3, v13

    :goto_8
    move-wide v13, v3

    move-object v10, v5

    move-object v11, v7

    move-wide v3, v0

    move v7, v2

    goto :goto_9

    :cond_14
    move-object/from16 v15, v66

    move-wide v3, v10

    move v7, v12

    move-object v10, v6

    move-object v11, v8

    :goto_9
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    iput-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    iput-object v10, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    const/4 v1, 0x4

    iput v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    move-object v1, v10

    move-object v2, v11

    move-wide v5, v13

    move-object/from16 v8, p0

    invoke-interface/range {v0 .. v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_15

    return-object v15

    :cond_15
    move-object v2, v10

    move-object v3, v11

    :goto_a
    move-wide v0, v13

    goto/16 :goto_12

    :goto_b
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    goto :goto_c

    :cond_16
    const/16 v29, 0x0

    :goto_c
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_d

    :cond_17
    const/16 v30, 0x0

    :goto_d
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v42, v1

    goto :goto_e

    :cond_18
    const/16 v42, 0x0

    :goto_e
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v56

    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v57, v1

    goto :goto_f

    :cond_19
    const/16 v57, 0x0

    :goto_f
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v58, v1

    goto :goto_10

    :cond_1a
    const/16 v58, 0x0

    :goto_10
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v1

    goto :goto_11

    :cond_1b
    const/16 v59, 0x0

    :goto_11
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object v60

    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    move-result-object v61

    sget-object v1, Lak/o;->a:Lak/o;

    invoke-virtual {v1}, Lak/o;->d()Ljava/lang/String;

    move-result-object v62

    new-instance v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v23, v1

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v40

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v52

    move-object v2, v15

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x1

    const/16 v55, 0x0

    const v63, 0xaeaf00

    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move-wide/from16 v26, v13

    move/from16 v31, v12

    invoke-direct/range {v23 .. v65}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUGCVideoHistory new,collectionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "UGCImmVideoDetailViewModel"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    iput-object v8, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    const/4 v3, 0x2

    iput v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    invoke-interface {v0, v1, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1c

    return-object v2

    :cond_1c
    move-object v2, v6

    move-object v3, v8

    goto/16 :goto_a

    :goto_12
    new-instance v4, Lmy/e;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lmy/e;-><init>(ZZ)V

    sget-object v5, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v6, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v5, v6}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v7

    check-cast v7, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v8, Lmy/e;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "getName(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v8, v4, v11, v12}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v4, Lmy/g;

    invoke-direct {v4, v3, v2, v0, v1}, Lmy/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v5, v6}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lmy/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v11, v12}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1d
    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
