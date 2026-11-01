.class public abstract Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;
.super Ljava/lang/Object;


# instance fields
.field private a:Lkotlinx/coroutines/n0;

.field private b:Lcom/transsion/transfer/wifi/connect/b;

.field private c:Llv/a;

.field private d:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a(Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: connect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V
    .locals 6

    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Llv/a;

    iput-object p3, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    iput-object p4, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    if-eqz p3, :cond_0

    new-instance v3, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter$connect$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter$connect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public final g()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public final h()Lcom/transsion/transfer/wifi/connect/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    return-object v0
.end method

.method public final i()Llv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Llv/a;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Llv/a;

    return-void
.end method
