.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->onSaveHistory()V
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
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$onSaveHistory$1"
    f = "LongVodPlayerView.kt"
    l = {
        0xbf7,
        0xc1c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $bean:Lgo/a;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lgo/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgo/a;",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lgo/a;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lgo/a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;-><init>(Lgo/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lgo/a;

    iget-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    :cond_2
    move-object/from16 v35, v2

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lgo/a;

    if-eqz v8, :cond_11

    iget-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lgo/a;->a()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v10

    invoke-virtual {v8}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lgo/a;->l()I

    move-result v12

    invoke-virtual {v8}, Lgo/a;->e()I

    move-result v13

    iput-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    invoke-interface {v10, v11, v12, v13, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_2

    return-object v1

    :goto_1
    check-cast v10, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardPlayed()Z

    move-result v2

    move/from16 v38, v2

    goto :goto_2

    :cond_7
    move/from16 v38, v7

    :goto_2
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardFree()Z

    move-result v2

    move/from16 v40, v2

    goto :goto_3

    :cond_8
    move/from16 v40, v7

    :goto_3
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardUnlock()Z

    move-result v2

    goto :goto_4

    :cond_9
    move v2, v7

    :goto_4
    invoke-static {v9, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurPlayStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lgo/c;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lgo/c;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lgo/a;->e()I

    move-result v14

    invoke-virtual {v8}, Lgo/a;->l()I

    move-result v15

    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v16

    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v18

    invoke-virtual {v8}, Lgo/a;->n()I

    move-result v11

    int-to-long v4, v11

    invoke-virtual {v8}, Lgo/a;->p()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lgo/c;->h()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v8}, Lgo/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lgo/a;->s()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v8}, Lgo/a;->b()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v8}, Lgo/a;->r()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual {v8}, Lgo/a;->g()Z

    move-result v29

    sget-object v11, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual {v11}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v30

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    goto :goto_5

    :cond_a
    const-wide/16 v31, 0x0

    :goto_5
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    goto :goto_6

    :cond_b
    const-wide/16 v33, 0x0

    :goto_6
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v39

    invoke-virtual {v8}, Lgo/a;->q()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    if-eqz v11, :cond_d

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v8}, Lgo/a;->q()Ljava/lang/String;

    move-result-object v8

    :goto_7
    move-object/from16 v41, v8

    goto :goto_9

    :cond_d
    :goto_8
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_e
    move-object/from16 v41, v6

    :goto_9
    new-instance v8, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v31 .. v32}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v36

    invoke-static/range {v33 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v37

    const v42, 0x80400

    const/16 v43, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-object v11, v8

    move-object/from16 v18, v20

    move-object/from16 v19, v2

    move-object/from16 v20, v25

    move-object/from16 v25, v10

    invoke-direct/range {v11 .. v43}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubSelectId$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubSelectId$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setSubtitleSelectId(Ljava/lang/String;)V

    :cond_f
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v2

    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    invoke-interface {v2, v8, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->p(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    return-object v1

    :cond_10
    :goto_a
    new-instance v1, Lmy/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v7}, Lmy/e;-><init>(ZZ)V

    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v2

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lmy/e;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_11
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
