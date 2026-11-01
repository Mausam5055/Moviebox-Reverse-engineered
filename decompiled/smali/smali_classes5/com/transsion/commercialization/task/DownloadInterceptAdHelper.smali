.class public final Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lok/b;

.field private final b:Lcom/transsion/memberapi/MemberCheckResult;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/memberapi/OpType;

.field private g:Lcom/transsion/commercialization/task/AdInterceptDialog;


# direct methods
.method public constructor <init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lok/b;

    iput-object p2, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    iput-object p3, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->d:Z

    sget-object p1, Lcom/transsion/memberapi/OpType;->OP_AD:Lcom/transsion/memberapi/OpType;

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    return-void
.end method

.method public synthetic constructor <init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->p(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->n(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/commercialization/task/AdInterceptDialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->m()V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lok/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lok/b;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    return-void
.end method

.method private final j(Lcom/transsion/memberapi/MemberCheckResult;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->getMemberPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->getCurrency()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final k()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final l()V
    .locals 3

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showAdInterceptDialog() --> \u5e7f\u544a\u4efb\u52a1 \u672a\u5b8c\u6210 --> \u7ed3\u675f\u6d41\u7a0b"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    sget-object v0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/commercialization/R$string;->co_cancel_tips:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lok/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lok/b;->onFail()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->i()V

    return-void
.end method

.method private final m()V
    .locals 3

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showAdInterceptDialog() --> \u5e7f\u544a\u4efb\u52a1\u5b8c\u6210 --> \u7ee7\u7eed\u6267\u884c\u4e0b\u8f7d\u4efb\u52a1 --> \u7ed3\u675f\u6d41\u7a0b"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lok/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lok/b;->onSuccess()V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    new-instance v2, Lcom/transsion/commercialization/task/f;

    invoke-direct {v2, p0}, Lcom/transsion/commercialization/task/f;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/memberapi/IMemberApi;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->i()V

    return-void
.end method

.method private static final n(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> checkMember() --> uploadOperationStat --> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " --> success"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final p(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->m()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->l()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->k()V

    return-void
.end method

.method public final o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberCheckResult;->getInterceptType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_INSTALL:Lcom/transsion/memberapi/OpType;

    invoke-virtual {v1}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_AD:Lcom/transsion/memberapi/OpType;

    invoke-virtual {v1}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lok/b;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lok/b;->a(Z)V

    :cond_2
    new-instance v0, Lcom/transsion/commercialization/task/AdInterceptDialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/AdInterceptDialog;-><init>()V

    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    invoke-direct {p0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->j(Lcom/transsion/memberapi/MemberCheckResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->N0(Ljava/lang/String;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->I0(Ljava/lang/String;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    iget-boolean v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->d:Z

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->H0(Z)Lcom/transsion/commercialization/task/AdInterceptDialog;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->F0(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    new-instance p1, Lcom/transsion/commercialization/task/e;

    invoke-direct {p1, p0}, Lcom/transsion/commercialization/task/e;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->G0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "AdInterceptDialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
