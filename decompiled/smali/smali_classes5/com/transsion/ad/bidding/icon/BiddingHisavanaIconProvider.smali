.class public final Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;
.super Ljava/lang/Object;

# interfaces
.implements Loi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$a;

.field private static final e:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/hisavana/mediation/ad/TNativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->d:Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$a;

    new-instance v0, Lcom/transsion/ad/bidding/icon/a;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->f()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;)Lce/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->e()Lce/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->e:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final e()Lce/b;
    .locals 5

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadIconAd() --> mPlacementId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> create Icon TNativeAd() =================== "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "ad_ic"

    invoke-virtual {v0, v4, v1, v2, v3}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object v0
.end method

.method private static final f()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private final h(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "preload"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;

    iget v1, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object p1, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->h(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->getClassTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> sceneId = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u9884\u8bf7\u6c42\u5f00\u5173\u5173\u95ed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_ic"

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2, v3}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->onLog(ILjava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p3, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {p3}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    sget-object p3, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    iput-object p1, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$1;->label:I

    invoke-virtual {p3, p1, v0}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p3, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p3, p1, v3, v0, v1}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->e()Lce/b;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lce/b;->hasAd()Z

    move-result p3

    if-ne p3, v4, :cond_8

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$2;

    invoke-direct {v5, p1, p0, p2, v1}, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider$preloadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_ic"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHisavanaIconProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
