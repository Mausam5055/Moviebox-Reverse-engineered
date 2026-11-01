.class public final Lcom/transsion/subtitle_download/utils/ObserveNetworkState;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# static fields
.field public static final a:Lcom/transsion/subtitle_download/utils/ObserveNetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->a:Lcom/transsion/subtitle_download/utils/ObserveNetworkState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/subtitle_download/utils/ObserveNetworkState;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/subtitle_download/utils/ObserveNetworkState$retryDownload$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState$retryDownload$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0, p0}, Lnh/m;->l(Lnh/n;)V

    const-string v0, "\u51b7\u542f\u52a8"

    invoke-virtual {p0, v0}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    invoke-direct {p0}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onConnected() --> \u7f51\u7edc\u91cd\u65b0\u94fe\u63a5\u7684\u65f6\u5019\u68c0\u67e5\u4e00\u4e0b\u5b57\u5e55\u4e0b\u8f7d --> \u5ef6\u8fdf5\u79d2\uff0c\u4f18\u5316\u7f51\u7edc\u6296\u52a8 ....."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    const-string p1, "\u7f51\u7edc\u91cd\u65b0\u8fde\u63a5"

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
