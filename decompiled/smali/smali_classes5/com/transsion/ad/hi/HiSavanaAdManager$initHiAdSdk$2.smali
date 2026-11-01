.class final Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/hi/HiSavanaAdManager;->g(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.hi.HiSavanaAdManager$initHiAdSdk$2"
    f = "HiSavanaAdManager.kt"
    l = {
        0x7c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adTestDevice:Z

.field final synthetic $hisavanaAppId:Ljava/lang/String;

.field final synthetic $isDebug:Z

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    iput-boolean p3, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;

    iget-object v0, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    iget-boolean v2, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;-><init>(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    iget-boolean v4, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v5}, Lzg/c$a;->a()Lzg/c;

    move-result-object v5

    invoke-virtual {v5}, Lzg/c;->g()Lokhttp3/OkHttpClient;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->r(Lokhttp3/Dispatcher;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    invoke-direct {v6}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;-><init>()V

    invoke-virtual {v6, p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setAppId(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->a()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setAppIconId(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setDebug(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->testDevice(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setMuteVideo(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->build()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/hisavana/mediation/config/TAdManager;->init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    :cond_4
    sget-object p1, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    iput v3, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->label:I

    invoke-static {p1, p0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->d(Lcom/transsion/ad/hi/HiSavanaAdManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/transsion/ad/hi/HiSavanaAdManager;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/transsion/ad/hi/HiSavanaAdManager;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v3, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-static {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->a(Lcom/transsion/ad/hi/HiSavanaAdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> initHiAdSdk() --> \u521d\u59cb\u5316\u5f02\u5e38\uff0c\u5df2\u91cd\u7f6e\u72b6\u6001 --> it = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
