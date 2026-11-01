.class final Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/RankAllViewModel;->n(Z)V
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
    c = "com.transsion.home.viewmodel.RankAllViewModel$startRequest$1"
    f = "RankAllViewModel.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/home/viewmodel/RankAllViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/home/viewmodel/RankAllViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    iput-object p2, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

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

    new-instance p1, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    iget-object v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;-><init>(ZLcom/transsion/home/viewmodel/RankAllViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    move-result p1

    add-int/2addr p1, v2

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    move-result p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->e(Lcom/transsion/home/viewmodel/RankAllViewModel;)Lol/d;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->b(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->f(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    move-result v5

    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->d(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;

    move-result-object v9

    iput v2, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->label:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    move-object v10, p0

    invoke-static/range {v3 .. v12}, Lol/d$a;->a(Lol/d;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/RankAllData;

    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->g(Lcom/transsion/home/viewmodel/RankAllViewModel;Lcom/transsion/home/bean/RankAllData;)V

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/RankAllData;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/RankAllData;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    move-result p1

    add-int/2addr p1, v2

    :goto_3
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->h(Lcom/transsion/home/viewmodel/RankAllViewModel;I)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-class v1, Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getSimpleName(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptionHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
