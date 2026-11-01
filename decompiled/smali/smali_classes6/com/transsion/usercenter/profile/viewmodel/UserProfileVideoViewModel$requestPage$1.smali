.class final Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->x(Z)V
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
    c = "com.transsion.usercenter.profile.viewmodel.UserProfileVideoViewModel$requestPage$1"
    f = "UserProfileVideoViewModel.kt"
    l = {
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isRefresh:Z

.field final synthetic $isSelf:Z

.field final synthetic $pageToken:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    iput-boolean p2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isRefresh:Z

    iput-boolean p3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isSelf:Z

    iput-object p4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$pageToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$uid:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isRefresh:Z

    iget-boolean v3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isSelf:Z

    iget-object v4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$pageToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$uid:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->label:I

    const-string v2, "UserProfileVideoVM"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    new-instance v1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;

    iget-boolean v7, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isSelf:Z

    iget-object v8, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    iget-object v9, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$pageToken:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$uid:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;-><init>(ZLcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->i(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->$isRefresh:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Ljava/util/List;

    move-result-object v1

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v4

    :goto_1
    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_8
    move v3, v5

    :goto_2
    invoke-static {v1, v3}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->l(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Z)V

    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v4

    :goto_3
    invoke-static {v1, p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->k(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPage success size="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " hasMore="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->i(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPage failure code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {p1, v5}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->m(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Z)V

    goto :goto_6

    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->i(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPage exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :goto_7
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    invoke-static {v0, v5}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->m(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Z)V

    throw p1
.end method
