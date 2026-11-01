.class final Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->k(Z)V
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
    c = "com.transsion.postdetail.comment.ui.CommentListViewModel$getCommentList$1"
    f = "CommentListViewModel.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/comment/ui/CommentListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/comment/ui/CommentListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/comment/ui/CommentListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;

    iget-object v1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/comment/ui/CommentListViewModel;

    invoke-direct {v0, v1, p2}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/comment/ui/CommentListViewModel;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lbh/b;->a:Lbh/b$a;

    new-instance v3, Lcom/transsion/postdetail/bean/PagerBody;

    invoke-static {p1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->f(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/transsion/postdetail/bean/PagerBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toJson(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Lxo/a;

    move-result-object v5

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v5 .. v10}, Lxo/a$a;->a(Lxo/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/bean/MyCommentListBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/MyCommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->i(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/Pager;->getNextPage()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->h(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Z)V

    :cond_4
    invoke-static {v0}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/MyCommentListBean;->getCommentList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_1
    check-cast p1, Ljava/util/Collection;

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-static {v0}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
