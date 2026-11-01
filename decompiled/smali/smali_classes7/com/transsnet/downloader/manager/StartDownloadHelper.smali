.class public final Lcom/transsnet/downloader/manager/StartDownloadHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StartDownloadHelper"

    iput-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsnet/downloader/manager/x;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/x;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->e()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->d()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final d()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final e()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/util/List;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/manager/StartDownloadHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
