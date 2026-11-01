.class final Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/fcm/FCMPushHelper;->D()V
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
    c = "com.transsion.mpush.core.fcm.FCMPushHelper$sendToServer$1$1"
    f = "FCMPushHelper.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $json:Lorg/json/JSONObject;

.field final synthetic $regHash:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/mpush/core/fcm/FCMPushHelper;


# direct methods
.method constructor <init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mpush/core/fcm/FCMPushHelper;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->this$0:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iput-object p2, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$json:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$regHash:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->this$0:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iget-object v2, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$json:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$regHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;-><init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->label:I

    const-string v2, " retry:"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->this$0:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iget-object p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$json:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$regHash:Ljava/lang/String;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->i(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v5

    sget-object v6, Lln/a;->a:Lln/a;

    invoke-virtual {v6}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getApiPathPrefix()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "toString(...)"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->j(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    iput-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->label:I

    invoke-interface {v5, v6, v7, p1, p0}, Lcom/transsion/mpush/core/net/PushNetworkApi;->pushRegister(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v4

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->h(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v3, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v3, p1, v0}, Lcom/transsion/mpush/core/utils/PushPreference;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->l(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess, retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->l(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFailure code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->m(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->this$0:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;->$regHash:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->l(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",refresh:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->m(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)V

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
