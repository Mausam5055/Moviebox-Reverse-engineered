.class final Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/CategoryViewModel;->i(Ljava/lang/String;)V
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
    c = "com.transsion.home.viewmodel.CategoryViewModel$getCategoryList$1"
    f = "CategoryViewModel.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $type:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/home/viewmodel/CategoryViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/home/viewmodel/CategoryViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

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

    new-instance p1, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;-><init>(Ljava/lang/String;Lcom/transsion/home/viewmodel/CategoryViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/viewmodel/CategoryViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    iget-object v3, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page"

    iget-object v3, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

    invoke-virtual {v3}, Lcom/transsion/home/viewmodel/CategoryViewModel;->k()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "perPage"

    iget-object v3, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

    invoke-static {v3}, Lcom/transsion/home/viewmodel/CategoryViewModel;->e(Lcom/transsion/home/viewmodel/CategoryViewModel;)I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v1, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "toString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

    invoke-static {v1}, Lcom/transsion/home/viewmodel/CategoryViewModel;->f(Lcom/transsion/home/viewmodel/CategoryViewModel;)Lol/b;

    move-result-object v3

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v1, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->label:I

    invoke-interface {v3, v4, p1, p0}, Lol/b;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/CategoryBean;

    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/CategoryViewModel;->g(Lcom/transsion/home/viewmodel/CategoryViewModel;Lcom/transsion/home/bean/CategoryBean;)V

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/CategoryViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/CategoryViewModel;->k()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/home/viewmodel/CategoryViewModel;->o(I)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/CategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/home/viewmodel/CategoryViewModel;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/CategoryViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-direct {v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
