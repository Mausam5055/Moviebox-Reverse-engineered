.class final Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->q(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsnet.downloader.ugc.util.UGCDownloadOpenUtil$openSubjectAudio$1"
    f = "UGCDownloadOpenUtil.kt"
    l = {
        0x4e,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $item:Lcom/transsion/baselib/db/download/DownloadBean;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

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

    new-instance p1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

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

    sget-object v2, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->f(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsnet/downloader/manager/g;

    move-result-object v5

    iget-object v6, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v5, v6}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Ljj/a;

    move-result-object v2

    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_3
    iput v3, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    invoke-interface {v2, v5, v0}, Ljj/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    if-nez v2, :cond_6

    sget-object v2, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Ljj/a;

    move-result-object v2

    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput v4, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    invoke-interface {v2, v5, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    :cond_6
    if-nez v2, :cond_7

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v24

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v25

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v5, v2

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v8

    const v26, 0x19fc0

    const/16 v27, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v5 .. v27}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    :cond_7
    sget-object v1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result v5

    if-ne v5, v3, :cond_a

    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3, v2}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v3

    goto :goto_2

    :cond_8
    move v3, v7

    :goto_2
    if-eqz v3, :cond_9

    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/transsion/room/api/IAudioApi;->pause()V

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v3, v2, v7, v4, v6}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v3, v2, v7, v4, v6}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_b
    :goto_3
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->h(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IFloatingApi;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v2}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_c
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
