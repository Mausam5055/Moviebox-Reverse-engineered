.class final Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->K(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.HomePreferencesViewModel$submitPreferencesInternal$1"
    f = "HomePreferencesViewModel.kt"
    l = {
        0x19a,
        0x19d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $config:Lcom/transsion/home/bean/HomePreferencesConfig;

.field final synthetic $force:Z

.field final synthetic $labelId:Ljava/lang/String;

.field final synthetic $normalized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scene:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/HomePreferencesConfig;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/home/bean/HomePreferencesConfig;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    iput-boolean p4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    iput-object p5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    iput-object p6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    iget-boolean v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    iget-object v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/HomePreferencesConfig;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->Z$0:Z

    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v4

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    iget-boolean v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    iget-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    :try_start_2
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;

    move-result-object v7

    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->Z$0:Z

    iput v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    invoke-virtual {v7, v1, v4, p0}, Lcom/transsion/home/repository/HomePreferencesRepository;->m(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move v1, v5

    move-object v3, v6

    :goto_0
    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;

    move-result-object v1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/transsion/home/repository/HomePreferencesRepository;->g(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    move-object v0, v3

    :goto_1
    move-object v3, v0

    move-object p1, v1

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->isPopStyle()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->getRefreshType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/home/bean/HomePreferencesRefreshType;->NO_REFRESH:Lcom/transsion/home/bean/HomePreferencesRefreshType;

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesRefreshType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->x()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submitPreferences error, labelId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", scene="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "HomePreferencesViewModel"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
