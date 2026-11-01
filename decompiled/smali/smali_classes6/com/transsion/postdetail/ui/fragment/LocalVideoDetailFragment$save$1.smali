.class final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v3(Lcom/transsion/baselib/db/download/DownloadBean;JZ)V
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
    c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$save$1"
    f = "LocalVideoDetailFragment.kt"
    l = {
        0x664,
        0x665
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $completed:Z

.field final synthetic $cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $playProgress:J

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;JLcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;",
            "J",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    iput-wide p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    iput-object p5, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;

    iget-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    iget-wide v3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;-><init>(ZLcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;JLcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    iget-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    :goto_0
    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v10, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    iget-object v11, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v11}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    iget-object v15, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v15

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save completed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", playProgress= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", cur epse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3, v6}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v7, v8}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    :cond_5
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    :cond_6
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->f1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->g1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->g1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoWidth(I)V

    :cond_7
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->f1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoHeight(I)V

    :cond_8
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPlayTimeStamp(J)V

    :cond_9
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------update name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , playProgress = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    iput v6, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    invoke-virtual {v2, v3, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    const/4 v4, 0x2

    iput v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    invoke-static {v2, v3, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    return-object v1

    :cond_b
    move-wide v1, v7

    :goto_3
    move-wide v9, v1

    goto :goto_4

    :cond_c
    move-wide v9, v7

    :goto_4
    new-instance v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    move-object v8, v2

    goto :goto_7

    :cond_e
    :goto_6
    const-string v2, ""

    goto :goto_5

    :goto_7
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v11

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->o1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result v13

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v4

    check-cast v4, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v5, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getName(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v1, v8, v9}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v1, Lmy/e;

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    move-result v4

    if-ne v4, v6, :cond_f

    move v5, v6

    :cond_f
    invoke-direct {v1, v6, v5}, Lmy/e;-><init>(ZZ)V

    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v2

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lmy/e;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
