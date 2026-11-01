.class final Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->onPrepare(Lao/e;)V
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
    c = "com.transsion.audio.fragment.SubjectListFragment$onPrepare$1"
    f = "SubjectListFragment.kt"
    l = {
        0x164
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $mediaSource:Lao/e;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lao/e;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lao/e;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lao/e;

    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

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

    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;

    iget-object v0, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lao/e;

    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;-><init>(Lao/e;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$1:I

    iget v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$0:I

    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->$mediaSource:Lao/e;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lao/e;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v5}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move-object v9, v2

    move-object v8, v6

    move v2, v7

    move-object v7, v5

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v5, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljj/a;

    move-result-object v11

    if-eqz v11, :cond_5

    iput-object v9, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->L$3:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$0:I

    iput v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->I$1:I

    iput v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$onPrepare$1;->label:I

    invoke-interface {v11, v10, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_4

    return-object v1

    :cond_4
    move/from16 v17, v6

    move-object v6, v5

    move/from16 v5, v17

    :goto_2
    check-cast v10, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v17, v6

    move v6, v5

    move-object/from16 v5, v17

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    sget-object v11, Llg/a;->a:Llg/a$a;

    sget-object v12, Lcom/transsion/audio/fragment/SubjectListFragment;->q:Lcom/transsion/audio/fragment/SubjectListFragment$a;

    invoke-virtual {v12}, Lcom/transsion/audio/fragment/SubjectListFragment$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v13

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->m0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v14

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepare forEachIndexed  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  previousUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x4

    if-eqz v10, :cond_9

    invoke-virtual {v10, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    invoke-static {v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_a
    invoke-static {v8, v9}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    :cond_b
    move v2, v6

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_c
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    return-object v4
.end method
