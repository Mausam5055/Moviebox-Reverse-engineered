.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->Y1()V
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
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$saveUGCVideoHistory$1"
    f = "LongVodPlayerView.kt"
    l = {
        0xc2c,
        0xc52,
        0xc58
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-direct {p1, v0, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 64

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    const/4 v11, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v14, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_2
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object v8, v0

    move-object v7, v4

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_7
    iget-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v3

    :cond_9
    :goto_2
    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SINGLE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_a
    iget-object v5, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v5}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v5

    iput-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    iput-object v4, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    iput v14, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    invoke-interface {v5, v4, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_b

    return-object v10

    :cond_b
    move-object v7, v0

    move-object v8, v4

    :goto_3
    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v0

    :goto_4
    move/from16 v23, v0

    goto :goto_6

    :cond_c
    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_e
    move/from16 v23, v14

    :goto_6
    const-string v0, ", ugcVideoId:"

    if-nez v5, :cond_20

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v18

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v4

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lgo/a;->n()I

    move-result v1

    int-to-long v14, v1

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_7

    :cond_f
    move-object/from16 v33, v3

    :goto_7
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    move-object/from16 v20, v1

    goto :goto_a

    :cond_11
    :goto_9
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object/from16 v20, v3

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lgo/a;->c()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_b

    :cond_13
    move-object/from16 v21, v3

    :goto_b
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lgo/a;->s()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_c

    :cond_14
    move-object/from16 v22, v3

    :goto_c
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lgo/a;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_d

    :cond_15
    move-object/from16 v34, v3

    :goto_d
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_f

    :cond_16
    :goto_e
    move-object/from16 v24, v1

    goto :goto_10

    :cond_17
    :goto_f
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_18
    move-object/from16 v24, v3

    :goto_10
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev1()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_11

    :cond_19
    move-object/from16 v25, v3

    :goto_11
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev2()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_12

    :cond_1a
    move-object/from16 v26, v3

    :goto_12
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev3()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_13

    :cond_1b
    move-object/from16 v27, v3

    :goto_13
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev4()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_14

    :cond_1c
    move-object/from16 v28, v3

    :goto_14
    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lgo/a;->g()Z

    move-result v1

    move/from16 v36, v1

    goto :goto_15

    :cond_1d
    move/from16 v36, v11

    :goto_15
    sget-object v1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual {v1}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v37

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v46

    iget-object v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/a;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lgo/a;->q()Ljava/lang/String;

    move-result-object v3

    :cond_1e
    move-object/from16 v48, v3

    sget-object v1, Lak/o;->a:Lak/o;

    invoke-virtual {v1}, Lak/o;->d()Ljava/lang/String;

    move-result-object v54

    new-instance v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v44

    const/16 v56, 0x7

    const/16 v57, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v55, -0x3f5de000

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v57}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v58, Llg/a;->a:Llg/a$a;

    iget-object v3, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveUGCVideoHistory new,collectionId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , progress "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    const/16 v62, 0x4

    const/16 v63, 0x0

    const-string v59, "LongVodPlayerView"

    const/16 v61, 0x0

    invoke-static/range {v58 .. v63}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    iput-object v7, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    iput-object v8, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    iput v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    invoke-interface {v0, v1, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1f

    return-object v10

    :cond_1f
    move-object v1, v7

    move-object v0, v8

    goto :goto_16

    :cond_20
    sget-object v14, Llg/a;->a:Llg/a$a;

    iget-object v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveUGCVideoHistory old,collectionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progress "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "LongVodPlayerView"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getUgcVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v2, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v5

    iput-object v7, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$0:Ljava/lang/Object;

    iput-object v8, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->L$1:Ljava/lang/Object;

    iput v1, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->label:I

    move-object v1, v8

    move-object v2, v7

    move-object v14, v7

    move/from16 v7, v23

    move-object v15, v8

    move-object/from16 v8, p0

    invoke-interface/range {v0 .. v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_21

    return-object v10

    :cond_21
    move-object v1, v14

    move-object v0, v15

    :goto_16
    new-instance v2, Lmy/e;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v11}, Lmy/e;-><init>(ZZ)V

    sget-object v3, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v3, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v5

    check-cast v5, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v6, Lmy/e;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2, v12, v13}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v2, Lmy/g;

    iget-object v5, v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$saveUGCVideoHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v5}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v5

    invoke-direct {v2, v1, v0, v5, v6}, Lmy/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lmy/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
