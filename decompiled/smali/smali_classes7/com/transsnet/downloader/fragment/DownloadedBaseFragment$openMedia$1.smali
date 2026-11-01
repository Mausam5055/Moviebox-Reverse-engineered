.class final Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Z0(Lcom/transsion/baselib/db/download/DownloadBean;I)V
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
    c = "com.transsnet.downloader.fragment.DownloadedBaseFragment$openMedia$1"
    f = "DownloadedBaseFragment.kt"
    l = {
        0xa6,
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object/from16 v6, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v6, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Ljj/a;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_3
    iput-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->label:I

    invoke-interface {v6, v7, v1}, Ljj/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    move-object v7, v2

    :goto_0
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_5
    move-object v7, v2

    :cond_6
    iget-object v6, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Ljj/a;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v8, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v7, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->label:I

    invoke-interface {v6, v8, v1}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, v2

    move-object v2, v7

    :goto_1
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v7, v2

    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v6, v4

    :goto_2
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v12

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v23

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v27

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v28

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v8, v0

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v11

    const v29, 0x19fc0

    const/16 v30, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v8 .. v30}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v2

    const/16 v6, 0x64

    if-le v2, v6, :cond_9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v2

    div-int/2addr v2, v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v0

    rem-int/2addr v0, v6

    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {v6, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setSe(I)V

    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setEp(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_9
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setEp(I)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setUrl(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result v0

    if-ne v0, v3, :cond_e

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-interface {v0, v3}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v0

    goto :goto_6

    :cond_c
    move v0, v2

    :goto_6
    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->pause()V

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {v0, v3, v2, v5, v4}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    goto :goto_7

    :cond_e
    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {v0, v3, v2, v5, v4}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_f
    :goto_7
    iget-object v0, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_10
    check-cast v4, Landroid/app/Activity;

    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-interface {v0, v2, v3}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
