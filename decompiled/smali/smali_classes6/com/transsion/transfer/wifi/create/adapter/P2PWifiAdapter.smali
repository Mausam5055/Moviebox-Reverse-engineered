.class public final Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;
.super Lcom/transsion/transfer/wifi/create/adapter/b;


# instance fields
.field private final d:I

.field private e:I

.field private f:I

.field private final g:Lkotlin/Lazy;

.field private h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/j;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/adapter/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->g:Lkotlin/Lazy;

    return-void
.end method

.method private static final A(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> requestConnectionInfo() --> Group Owner Address = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->v(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llv/a;->H(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Llv/a;->G(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Llv/a;->F(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> requestConnectionInfo() --> \u6700\u7ec8ip\u4e3a correctIp = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v7, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestConnectionInfo$1$1$1;

    invoke-direct {v7, p0, v2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestConnectionInfo$1$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> requestConnectionInfo() --> \u83b7\u53d6\u53ef\u8fde\u63a5Ip\u5931\u8d25 --> correctIp \u4e3a\u7a7a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> requestConnectionInfo() --> \u83b7\u53d6\u53ef\u8fde\u63a5\u4fe1\u606f\u5931\u8d25 (p2pInfo == null)"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    :cond_5
    :goto_0
    return-void
.end method

.method private final B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    iget v1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    if-lt p1, v2, :cond_3

    const/16 p1, 0x65

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->x(I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v2

    iget v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> requestGroupInfo() --> Wi-Fi P2P \u521b\u5efa\u6210\u529f\u4e4b\u540e\uff0c\u5c06\u81ea\u5df1\u6dfb\u52a0\u5230\u7fa4\u7ec4 --> \u7b2c"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u6b21\u83b7\u53d6\u70ed\u70b9\u76f8\u5173\u4fe1\u606f"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4, v3, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iput v5, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    const-wide/16 v7, 0x12c

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/transsion/transfer/wifi/create/adapter/k;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/create/adapter/k;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    move-object p1, v6

    :goto_2
    if-nez p1, :cond_7

    :cond_6
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> requestGroupInfo() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5 --> retryCreate()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v3, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final C(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> requestGroupInfo() --> requestGroupInfo() --> \u83b7\u53d6Group\u4fe1\u606f\u6210\u529f,\u5f00\u59cb\u83b7\u53d6\u8fde\u63a5\u4fe1\u606f"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->z(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> requestGroupInfo() --> \u83b7\u53d6Group\u4fe1\u606f\u5931\u8d25 --> wifiP2pGroup == null"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    :goto_0
    return-void
.end method

.method private final D()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retry$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retry$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final E()V
    .locals 12

    iget v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v0, v2, :cond_2

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> retryCreate() --> \u91cd\u65b0\u521b\u5efa\u70ed\u70b9 -- \u5931\u8d25\u6b21\u6570 = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    if-le v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v9, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retryCreate$1;

    invoke-direct {v9, p0, v5}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retryCreate$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->r()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> retryCreate() --> \u91cd\u8bd5\u6b21\u6570 = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5224\u5b9a\u521b\u5efa\u70ed\u70b9\u5931\u8d25"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->x(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final F()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v4, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$a;

    invoke-direct {v4, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$a;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setDeviceName"

    new-array v8, v1, [Ljava/lang/Class;

    const-class v9, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    const-class v9, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v7, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Llv/a;->p()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    move-object v10, v5

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Llv/a;->m()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --> setDeviceName() --> API < 29 -- Android"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u8bbe\u5907(Q\u4ee5\u4e0a\u4e0b) \u521b\u5efa --> WIFI\u540d\u79f0 = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -- WIFI\u9891\u6bb5 = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Llv/a;->p()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v5

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v2

    aput-object v9, v1, v0

    aput-object v4, v1, v3

    invoke-virtual {v6, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> setDeviceName() --> Build.VERSION.SDK_INT < Q --> \u53cd\u5c04\u521b\u5efa\u5931\u8d25 -->exception = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " --> \u5931\u8d25\u91cd\u8bd5"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    :goto_5
    return-void
.end method

.method private static final G()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic j(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->C(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->A(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method

.method public static synthetic l()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->G()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->s()V

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    return p0
.end method

.method public static final synthetic o(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    return-void
.end method

.method private final r()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;

    const/4 v3, 0x0

    invoke-direct {v4, v0, p0, v3}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final s()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroup$1$1;

    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroup$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> createGroup() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    :cond_2
    return-void
.end method

.method private final t(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/transsion/transfer/wifi/create/adapter/h;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p1

    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;

    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    invoke-static {v2, v0, p1, v3}, Lcom/transsion/transfer/wifi/create/adapter/i;->a(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> createGroupQ() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    :cond_2
    return-void
.end method

.method private final u()V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llv/a;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/transsion/transfer/wifi/util/b;->a:Lcom/transsion/transfer/wifi/util/b;

    invoke-virtual {v3, v0}, Lcom/transsion/transfer/wifi/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v1, v3

    :cond_2
    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/transsion/transfer/wifi/create/adapter/d;->a()Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/transsion/transfer/wifi/create/adapter/e;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/transsion/transfer/wifi/create/adapter/f;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v3

    const-string v4, "setPassphrase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Llv/a;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Llv/a;->a()Z

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-static {v3, v5}, Lcom/transsion/transfer/wifi/create/adapter/g;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    const-string v4, "5G"

    goto :goto_1

    :cond_3
    invoke-static {v3, v6}, Lcom/transsion/transfer/wifi/create/adapter/g;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    const-string v4, "2.4G"

    :goto_1
    sget-object v6, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> createWifiP2pGroup() --> API >= 29 -- Android"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u8bbe\u5907(Q\u53ca\u5176\u4ee5\u4e0a) \u521b\u5efa --> WIFI\u540d\u79f0 = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- \u5bc6\u7801 = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- WIFI\u9891\u6bb5 = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v6, v0, v2, v5, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->t(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)V

    return-void
.end method

.method private final v(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->g(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getCorrectIp() --> ip --> getCorrectOwnerAddress() = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getCorrectIp() --> ip --> localIP() = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private final w()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method private final x(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$onFail$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$onFail$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final z(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/l;

    invoke-direct {v3, p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/l;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> requestConnectionInfo() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5 --> retryCreate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> createWifiHot() --> start"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->s()Z

    move-result v4

    const-string v5, " --> createWifiHot() --> Android"

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u5907(Q\u4ee5\u4e0b) \u5f00\u59cb\u521b\u5efaP2P WIFI\u70ed\u70b9"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->F()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u5907(Q\u53ca\u5176\u4ee5\u4e0a) \u5f00\u59cb\u521b\u5efaP2P WIFI\u70ed\u70b9"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->u()V

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/b;->g(Lkotlinx/coroutines/n0;)V

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/b;->h(Lcom/transsion/transfer/wifi/create/a;)V

    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method

.method public y()V
    .locals 8

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/transfer/wifi/util/i;->d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> releaseWifiP2P() --> \u5173\u95edP2P\u9891\u6bb5\u5f02\u5e38 -- it = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method
