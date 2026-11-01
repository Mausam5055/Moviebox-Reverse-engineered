.class public final Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/String;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-class v0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsnet/downloader/ugc/viewmodel/c;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lsy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->j()Lsy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Lsy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->f()Lsy/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final f()Lsy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy/a;

    return-object v0
.end method

.method private static final j()Lsy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lsy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy/a;

    return-object v0
.end method


# virtual methods
.method public final g(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;-><init>(ZLcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->c:Ljava/lang/String;

    return-void
.end method
