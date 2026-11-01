.class final Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Z1(I)V
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
    c = "com.transsnet.downloader.adapter.DownloadExpandAdapter$upDateAudioName$1"
    f = "DownloadExpandAdapter.kt"
    l = {
        0xe2,
        0xed
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Ln6/a;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;


# direct methods
.method constructor <init>(Ln6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/a;",
            "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

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

    new-instance p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;-><init>(Ln6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    invoke-static {v5}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Ljj/a;

    move-result-object v5

    if-eqz v5, :cond_4

    iput v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    invoke-interface {v5, v2, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    new-instance v2, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v4, v2

    iget-object v5, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v10, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v10

    const v25, 0xfffc0

    const/16 v26, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v4 .. v26}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Ln6/a;

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setTitle(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    invoke-static {v4}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Ljj/a;

    move-result-object v4

    if-eqz v4, :cond_6

    iput v3, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    invoke-interface {v4, v2, v0}, Ljj/a;->f(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
