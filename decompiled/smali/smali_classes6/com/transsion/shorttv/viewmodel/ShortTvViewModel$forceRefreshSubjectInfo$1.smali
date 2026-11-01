.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T(Ljava/lang/String;I)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$forceRefreshSubjectInfo$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x36b,
        0x378,
        0x37f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    :try_start_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Los/a;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v6 .. v11}, Los/a$a;->d(Los/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_1

    :cond_5
    move-object p1, v5

    :goto_1
    sget-object v1, Lzr/b;->a:Lzr/b;

    invoke-virtual {v1, p1}, Lzr/b;->e(Lcom/transsion/shorttv/bean/Subject;)V

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    invoke-static {v1, v4, v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, p1

    goto :goto_5

    :goto_4
    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshSubjectInfo error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "ShortTvViewModel"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v1, v5

    :goto_5
    if-nez v1, :cond_9

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p1

    if-eqz p1, :cond_c

    iput-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    invoke-interface {p1, v4, p0}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_6
    check-cast p1, Lcom/transsion/shorttv/db/e;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/shorttv/db/e;->c()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_c

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_c
    move-object p1, v5

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_9
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_d

    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshSubjectInfo loadAdUnlockedEps error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "ShortTvViewModel"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v3, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1$3;

    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-direct {v3, v4, v1, v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1$3;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_e
    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
