.class final Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;->h(Ljava/lang/String;)V
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
    c = "com.transsion.shorttv._channel.ui.viewmodel.ShortTvMovieViewModel$getFilterItems$1"
    f = "ShortTvMovieViewModel.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $version:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;

    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;

    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;-><init>(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;->f(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;)Lnr/a;

    move-result-object p1

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->$version:Ljava/lang/String;

    iput v2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->label:I

    const/4 v2, 0x7

    invoke-interface {p1, v1, v2, v3, p0}, Lnr/a;->b(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel$getFilterItems$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-direct {v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
