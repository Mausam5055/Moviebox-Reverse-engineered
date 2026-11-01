.class public final Lcom/transsion/wrapperad/WrapperAdProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/wrapperadapi/IWrapperAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/WrapperAdProvider$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/wrapperad/WrapperAdProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/wrapperad/WrapperAdProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/WrapperAdProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/wrapperad/WrapperAdProvider;->a:Lcom/transsion/wrapperad/WrapperAdProvider$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    iget v1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;-><init>(Lcom/transsion/wrapperad/WrapperAdProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v2, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$2;

    invoke-direct {v2, v3}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v6, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    new-instance v2, Lcom/transsion/ad/MBAd$b;

    invoke-direct {v2}, Lcom/transsion/ad/MBAd$b;-><init>()V

    const-string v7, "2301069UF9YjuO"

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->g(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->d(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->i(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    sget-object v7, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->e(Lcom/transsion/ad/strategy/AppManager$AppEnum;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    const-string v7, "HotStartScene"

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->h(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    const-string v7, "/wefeed-mobile-bff/ad/config"

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->c(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    sget-object v7, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-virtual {v7}, Lcom/tn/lib/net/dns/or/CacheIpPool;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->b(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->j(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->k(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->l(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->m(Z)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    new-instance v6, Lcom/transsion/wrapperad/WrapperAdProvider$b;

    invoke-direct {v6}, Lcom/transsion/wrapperad/WrapperAdProvider$b;-><init>()V

    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->f(Lhi/a;)Lcom/transsion/ad/MBAd$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/ad/MBAd$b;->a()Lcom/transsion/ad/MBAd$a;

    move-result-object v2

    iput v5, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    invoke-virtual {p1, v2, v0}, Lcom/transsion/ad/MBAd;->e(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v2, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;

    invoke-direct {v2, v3}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljy/a;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    invoke-virtual {p1}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adConfig is empty"

    invoke-interface {p2, p1, v0}, Ljy/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string p1, "{}"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sceneId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    invoke-virtual {p1}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sceneId is empty"

    invoke-interface {p2, p1, v0}, Ljy/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->f(Ljava/lang/String;Ljy/a;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->a:Lcom/transsion/wrapperad/h5/H5VideoAdProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->h(Ljava/lang/String;Ljy/a;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    invoke-virtual {v0}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljy/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    const-string v1, "/wefeed-mobile-bff/ad/config"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/ad/MBAd;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
