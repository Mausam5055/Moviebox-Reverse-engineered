.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P(Lcom/transsion/shorttv/bean/Subject;)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$favorite$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x2a8
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $favorite:Z

.field final synthetic $favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

.field final synthetic $subjectDetail:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/shorttv/bean/ShortTVFavInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectDetail:Lcom/transsion/shorttv/bean/Subject;

    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    iput-object p5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

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

    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectDetail:Lcom/transsion/shorttv/bean/Subject;

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "subjectId"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action"

    xor-int/2addr v2, v0

    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Los/a;

    move-result-object v5

    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v6

    iput v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v5 .. v10}, Los/a$a;->a(Los/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    iget-boolean v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, p1

    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v5

    xor-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_3

    goto/16 :goto_7

    :cond_3
    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setHasFavorite(Z)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_3

    :cond_4
    move-wide v9, v7

    :goto_3
    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_4

    :cond_6
    move-wide v9, v5

    :goto_4
    add-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    :goto_5
    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v7

    xor-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v7

    if-nez v2, :cond_7

    sget-object v2, Ljs/g;->a:Ljs/g;

    goto :goto_6

    :cond_7
    sget-object v2, Ljs/h;->a:Ljs/h;

    :goto_6
    invoke-virtual {v7, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    new-instance v2, Luy/c;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v7

    xor-int/2addr v0, v7

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v0, v7}, Luy/c;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v7, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v7}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v7, Luy/c;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v2, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-static {v3, v4, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-boolean v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    sget-object v0, Ljs/i;->a:Ljs/i;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x0()Lqs/e;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
