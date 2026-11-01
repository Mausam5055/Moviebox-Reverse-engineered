.class final Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->onProgress(JLao/e;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsion.audio.fragment.SubjectListFragment$onProgress$1"
    f = "SubjectListFragment.kt"
    l = {
        0x17a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $mediaSource:Lao/e;

.field final synthetic $progress:J

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lao/e;Lcom/transsion/audio/fragment/SubjectListFragment;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lao/e;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lao/e;

    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    iput-wide p3, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;

    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lao/e;

    iget-object v2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-wide v3, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;-><init>(Lao/e;Lcom/transsion/audio/fragment/SubjectListFragment;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$1:I

    iget v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$0:I

    iget-wide v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->J$0:J

    iget-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v10, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-object v12, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$mediaSource:Lao/e;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lao/e;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v6}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_11

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-wide v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->$progress:J

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v12, v2

    move-object v10, v6

    move-object v11, v7

    move-wide v7, v8

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljj/a;

    move-result-object v14

    if-eqz v14, :cond_5

    iput-object v12, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->L$3:Ljava/lang/Object;

    iput-wide v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->J$0:J

    iput v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$0:I

    iput v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->I$1:I

    iput v4, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onProgress$1;->label:I

    invoke-interface {v14, v13, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_4

    return-object v1

    :cond_4
    move/from16 v21, v9

    move-object v9, v6

    move/from16 v6, v21

    :goto_2
    check-cast v13, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v21, v9

    move v9, v6

    move-object/from16 v6, v21

    goto :goto_3

    :cond_5
    move-object v13, v5

    :goto_3
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v11, v12}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    :cond_6
    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v14

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_7
    move-object v15, v5

    :goto_4
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v14, v4

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    sget-object v15, Llg/a;->a:Llg/a$a;

    sget-object v16, Lcom/transsion/audio/fragment/SubjectListFragment;->q:Lcom/transsion/audio/fragment/SubjectListFragment$a;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audio/fragment/SubjectListFragment$a;->a()Ljava/lang/String;

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATUS_PAUSED  index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " needPause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v14, :cond_b

    const/4 v3, 0x4

    if-eqz v13, :cond_9

    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_a
    invoke-static {v11, v12}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_c
    move-object v3, v5

    :goto_6
    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v13, :cond_d

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    :cond_d
    const/4 v3, 0x3

    if-eqz v13, :cond_e

    invoke-virtual {v13, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    :cond_e
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    invoke-static {v11}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_f
    move v2, v9

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_10
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_11
    return-object v5
.end method
