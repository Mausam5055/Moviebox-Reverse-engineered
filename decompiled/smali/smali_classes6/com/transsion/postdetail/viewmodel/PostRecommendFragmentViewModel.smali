.class public final Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->d:Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/viewmodel/l;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->b:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/m;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->j()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->i()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method private static final f()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final i()Lxo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private static final j()Lxo/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;III)V
    .locals 8

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/publish/R$string;->upload_no_network:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->b:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPerPage(I)V

    sget-object p3, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {p3}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {p3}, Lcom/transsion/baselib/report/h;->c()Landroid/net/Uri;

    move-result-object p3

    const-string p4, ""

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    :cond_2
    move-object p3, p4

    :cond_3
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setDeepLink(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setUserPrefer(Ljava/lang/String;)V

    sget-object p3, Lwj/b;->a:Lwj/b$a;

    invoke-virtual {p3}, Lwj/b$a;->e()Ljava/util/Queue;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPostId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setTabId(I)V

    sget-object p1, Lbh/b;->a:Lbh/b$a;

    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "toJson(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$getImmVideoList$1$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel$getImmVideoList$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_4
    return-void
.end method

.method public final h()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method
