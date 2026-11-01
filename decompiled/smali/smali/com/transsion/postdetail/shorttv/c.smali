.class public final Lcom/transsion/postdetail/shorttv/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/shorttv/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/postdetail/shorttv/c$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/shorttv/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/shorttv/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/shorttv/c;->a:Lcom/transsion/postdetail/shorttv/c$a;

    new-instance v0, Lcom/transsion/postdetail/shorttv/b;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/shorttv/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/postdetail/shorttv/c;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/c;->c()Lcom/transsion/postdetail/shorttv/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/shorttv/c;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final c()Lcom/transsion/postdetail/shorttv/c;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/shorttv/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 11

    const-string v0, "is_music_liked_fragment"

    const-string v1, "postcard"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->m()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getLocalClassName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "MainActivity"

    invoke-static {v6, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v2

    :cond_2
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/movie/detail"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "/playvideo/music_detail"

    const-string v7, "subject_type"

    if-eqz v1, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "ts_enter"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "without_intercept"

    invoke-virtual {v1, v8, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sget-object v9, Lox/e;->a:Lox/e$a;

    invoke-virtual {v9}, Lox/e$a;->b()Lox/e;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v3, v10, v5}, Lox/e$b;->a(Lox/e;ZILjava/lang/Object;)V

    if-nez v8, :cond_4

    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    if-ne v7, v3, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lls/a;->a:Lls/a;

    invoke-virtual {v0}, Lls/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lak/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0, v2, v5, v4, v5}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_3
    invoke-static {p2}, Lxj/b;->a(Lbg/b;)V

    goto/16 :goto_6

    :cond_4
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v3, :cond_6

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v6}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lak/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0, v2, v5, v4, v5}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_5
    invoke-static {p2}, Lxj/b;->a(Lbg/b;)V

    goto/16 :goto_6

    :cond_6
    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0}, Lak/t;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "/playvideo/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lak/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0, v2, v5, v4, v5}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_7
    invoke-static {p2}, Lxj/b;->a(Lbg/b;)V

    goto/16 :goto_6

    :cond_8
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_0
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/video/detail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v6}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lak/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0, v2, v5, v4, v5}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_a
    :goto_2
    invoke-static {p2}, Lxj/b;->a(Lbg/b;)V

    goto :goto_3

    :cond_b
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    goto :goto_6

    :cond_d
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    :goto_6
    return-void
.end method
