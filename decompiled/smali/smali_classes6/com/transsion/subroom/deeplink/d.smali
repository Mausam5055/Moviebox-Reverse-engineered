.class public final Lcom/transsion/subroom/deeplink/d;
.super Landroidx/lifecycle/b;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subroom/deeplink/d$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/subroom/deeplink/d$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subroom/deeplink/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subroom/deeplink/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subroom/deeplink/d;->d:Lcom/transsion/subroom/deeplink/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/subroom/deeplink/c;

    invoke-direct {p1}, Lcom/transsion/subroom/deeplink/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/deeplink/d;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lcom/transsion/subroom/deeplink/ILaunchApi;
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/deeplink/d;->j()Lcom/transsion/subroom/deeplink/ILaunchApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/subroom/deeplink/d;->l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final e(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/subroom/deeplink/d;->f()Lcom/transsion/subroom/deeplink/ILaunchApi;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/transsion/subroom/deeplink/ILaunchApi$a;->a(Lcom/transsion/subroom/deeplink/ILaunchApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/subroom/deeplink/d$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/subroom/deeplink/d$b;-><init>(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private final f()Lcom/transsion/subroom/deeplink/ILaunchApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/deeplink/d;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subroom/deeplink/ILaunchApi;

    return-object v0
.end method

.method private final g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v2, "miniapp_deeplink"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Luj/a;->a:Luj/a;

    invoke-virtual {v2, p1, v1}, Luj/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_2
    :goto_1
    sget-object v1, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    iget-object v2, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/helper/b;->e(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/transsion/subroom/deeplink/d;->e(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/subroom/deeplink/d;->l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/transsion/subroom/deeplink/d;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final j()Lcom/transsion/subroom/deeplink/ILaunchApi;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/subroom/deeplink/ILaunchApi;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subroom/deeplink/ILaunchApi;

    return-object v0
.end method

.method private final k()Z
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/transsion/subroom/activity/SplashActivity;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/transsion/subroom/activity/MainActivity;

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 6

    const-string v0, "show_enter_home"

    const-string v1, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    move-object p1, v1

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toLandingPage short url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " whole url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    :try_start_1
    const-string v3, "inviteCode"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-class v4, Lcom/transsion/fissionapi/IFissionProvider;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/fissionapi/IFissionProvider;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lcom/transsion/fissionapi/IFissionProvider;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    sget-object v3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {v3, p1, v1}, Lcom/transsion/baselib/report/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lyg/b;->a:Lyg/b$a;

    const-string v1, "X-UtmSource"

    invoke-virtual {v3}, Lcom/transsion/baselib/report/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lyg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1}, Lak/k;->m(Landroid/net/Uri;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    new-instance p2, Lcom/transsion/subroom/deeplink/d$c;

    invoke-direct {p2, p4}, Lcom/transsion/subroom/deeplink/d$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p3, p2}, Lcom/therouter/router/Navigator;->u(Landroid/content/Context;Lbg/c;)V

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method private final m(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/subroom/activity/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    const-string v2, "deeplink"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "without_ad"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onArrival"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withoutMain"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "withoutAd"

    invoke-virtual {p2, v2, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/transsion/subroom/deeplink/b;->a:Lcom/transsion/subroom/deeplink/b;

    const-string v4, "skipTwiceBack"

    invoke-virtual {p2, v4, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/transsion/subroom/deeplink/b;->b(Z)V

    sget-object v1, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {v1, p2}, Lcom/transsion/baselib/report/h;->k(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    if-eqz v2, :cond_0

    sget-object p2, Lhi/b;->a:Lhi/b;

    invoke-virtual {p2}, Lhi/b;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/subroom/deeplink/d;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0, p1, v2}, Lcom/transsion/subroom/deeplink/d;->m(Landroid/content/Context;Z)V

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lcom/transsion/subroom/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/subroom/deeplink/d;->h(Lcom/transsion/subroom/deeplink/d;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
