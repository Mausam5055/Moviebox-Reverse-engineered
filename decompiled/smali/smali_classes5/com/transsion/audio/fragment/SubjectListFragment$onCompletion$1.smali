.class final Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment;->onCompletion(Lao/e;)V
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
    c = "com.transsion.audio.fragment.SubjectListFragment$onCompletion$1"
    f = "SubjectListFragment.kt"
    l = {
        0x1ac
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
            "Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->$mediaSource:Lao/e;

    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

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

    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;

    iget-object v0, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->$mediaSource:Lao/e;

    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;-><init>(Lao/e;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->I$1:I

    iget v4, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->I$0:I

    iget-object v5, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v6, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-object v8, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->$mediaSource:Lao/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move-object v8, p1

    move-object v6, v1

    move-object v7, v4

    move v1, v5

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    move-object v5, p1

    check-cast v5, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {v7}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljj/a;

    move-result-object v9

    if-eqz v9, :cond_5

    iput-object v8, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->I$0:I

    iput v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->I$1:I

    iput v2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$onCompletion$1;->label:I

    invoke-interface {v9, p1, p0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    goto :goto_3

    :cond_5
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_6
    move-object v9, v3

    :goto_4
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x6

    if-eqz p1, :cond_7

    invoke-virtual {p1, v9}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    :cond_7
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    invoke-static {v7}, Lcom/transsion/audio/fragment/SubjectListFragment;->k0(Lcom/transsion/audio/fragment/SubjectListFragment;)Lcom/transsion/audio/adapter/SubjectListAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_8
    invoke-static {v7, v8}, Lcom/transsion/audio/fragment/SubjectListFragment;->s0(Lcom/transsion/audio/fragment/SubjectListFragment;Ljava/lang/String;)V

    :cond_9
    move v1, v4

    goto :goto_1

    :cond_a
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_b
    return-object v3
.end method
