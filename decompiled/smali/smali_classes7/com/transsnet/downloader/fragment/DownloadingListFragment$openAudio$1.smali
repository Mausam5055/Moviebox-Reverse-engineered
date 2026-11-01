.class final Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadingListFragment;->o1(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsnet.downloader.fragment.DownloadingListFragment$openAudio$1"
    f = "DownloadingListFragment.kt"
    l = {
        0x189,
        0x189
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadingListFragment;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    instance-of v6, v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v6, :cond_4

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_5

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_5
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object v6

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v6, v7}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Ljj/a;

    move-result-object v6

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    invoke-interface {v6, v7, v0}, Ljj/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Ljj/a;

    move-result-object v6

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    invoke-interface {v6, v7, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    :goto_3
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v2, v1

    :cond_9
    if-nez v6, :cond_a

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v10

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v25

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v26

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v24

    new-instance v1, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v6, v1

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v9

    const v27, 0x19fc0

    const/16 v28, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v6 .. v28}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    move-object v6, v1

    :cond_a
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result v1

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1, v6}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v1

    goto :goto_4

    :cond_b
    move v1, v7

    :goto_4
    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/transsion/room/api/IAudioApi;->pause()V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1, v6, v7, v5, v4}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1, v6, v7, v5, v4}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsion/room/api/IFloatingApi;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v6}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
