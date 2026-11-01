.class final Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->r()V
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
    c = "com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter$closeWifiAndReCreateHot$1"
    f = "P2PWifiAdapter.kt"
    l = {
        0x137,
        0x139,
        0x13d,
        0x147,
        0x148,
        0x14a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $retryCount:Lkotlin/jvm/internal/Ref$IntRef;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->$retryCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->this$0:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

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

    new-instance p1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->$retryCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->this$0:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    iget-object v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    iget-object v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    iget-object v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->$retryCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->this$0:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    :try_start_5
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v7, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v7}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_0

    return-object v0

    :cond_0
    move-object v7, p1

    :goto_0
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-object v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    const-wide/16 v8, 0x64

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    const-wide/16 v9, 0xc8

    if-nez v8, :cond_3

    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gt v8, v2, :cond_3

    iput-object v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v5

    iput p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> \u5173\u95edwifi\uff0c\u91cd\u542fwifi\u540e\u91cd\u65b0\u521b\u5efaWIFI\u70ed\u70b9 -- wifiEnable = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v4, v3, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_3
    iput-object v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    invoke-virtual {v1, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->this$0:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    iput-object v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;->label:I

    invoke-virtual {v1, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
