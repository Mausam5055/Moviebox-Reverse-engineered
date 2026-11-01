.class final Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchWorkViewModel;->k(Z)V
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
    c = "com.transsion.search.viewmodel.SearchWorkViewModel$getVideoHistoryList$1"
    f = "SearchWorkViewModel.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isRefreshAll:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/search/viewmodel/SearchWorkViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

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

    new-instance p1, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    iget-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;-><init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-virtual {p1, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->m(I)V

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {p1, v3}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->i()I

    move-result v1

    iget-object v4, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {v4}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I

    move-result v4

    iput v3, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->label:I

    invoke-interface {p1, v1, v4, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {v1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I

    move-result v1

    if-ge v0, v1, :cond_6

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {v0, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V

    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    move-object v1, v0

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_a
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->g()Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u89c6\u9891\u64ad\u653e\u8bb0\u5f55 \u6570\u91cf\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0chasMore:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchWork"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->i()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->m(I)V

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    invoke-static {v0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
