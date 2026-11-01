.class public final Lcom/transsion/baselib/net/AppLifeStatusInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/net/AppLifeStatusInterceptor$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/baselib/net/AppLifeStatusInterceptor$a;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lkotlin/Lazy;

.field private final d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->e:Lcom/transsion/baselib/net/AppLifeStatusInterceptor$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/transsion/baselib/net/d;

    invoke-direct {v0}, Lcom/transsion/baselib/net/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->c:Lkotlin/Lazy;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->d:Ljava/util/HashSet;

    const-string v1, "/wefeed-mobile-bff/message/push/local/list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/wefeed-mobile-bff/subject-api/get-ext-captions"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/wefeed-mobile-bff/app/config"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/wefeed-mobile-bff/live/sub-upcomming-match"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/wefeed-mobile-bff/subject-api/widget"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/wefeed-mobile-bff/app/check-update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->f()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->h()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->m()V

    return-void
.end method

.method private final f()V
    .locals 2

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    new-instance v1, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;

    invoke-direct {v1, p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;-><init>(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    return-void
.end method

.method private static final h()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/baselib/net/g;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/net/g;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p0, p1}, Lcom/transsion/baselib/net/g;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "/main/page_not_available"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string v0, "reason"

    invoke-virtual {p0, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    return-void
.end method

.method private static final k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/main/page_not_available"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    return-void
.end method

.method private final l(Ljava/lang/String;)Lkotlin/Triple;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v3, "message"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v0

    :cond_0
    const-string v4, "reason"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    new-instance v4, Lkotlin/Triple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, p1, v3, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v4, Lkotlin/Triple;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, p1, v0, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v4
.end method

.method private final m()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$requestForBackToForeground$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$requestForBackToForeground$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final n(Lokhttp3/Interceptor$Chain;)Z
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->w()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/baselib/net/f;->a:Lcom/transsion/baselib/net/f;

    invoke-virtual {v1}, Lcom/transsion/baselib/net/f;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->s()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->d:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public final g()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->n(Lokhttp3/Interceptor$Chain;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->l(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x1d7

    if-eq v4, v5, :cond_4

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v4, 0x1d8

    if-eq v2, v4, :cond_3

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_2

    if-ne v1, v3, :cond_5

    :cond_2
    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/baselib/net/c;

    invoke-direct {v2, v0}, Lcom/transsion/baselib/net/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/baselib/net/b;

    invoke-direct {v2, v3, v0}, Lcom/transsion/baselib/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/baselib/net/a;

    invoke-direct {v2, v3, v0}, Lcom/transsion/baselib/net/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLifeStatusInterceptor response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is Background request cancel "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpTag"

    invoke-virtual {p1, v1, v0, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "is Background request cancel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
