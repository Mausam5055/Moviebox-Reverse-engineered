.class public final Lcom/transsion/wrapperad/WrapperAdProvider$b;
.super Ljava/lang/Object;

# interfaces
.implements Lhi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/WrapperAdProvider;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)V
    .locals 3

    sget-object v0, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;->a:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;

    invoke-virtual {v0, p2}, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;->a(Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)Lkotlin/Pair;

    move-result-object p2

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "/web/web"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v1, "page_from"

    const-string v2, "MB_AD"

    invoke-virtual {p1, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/transsion/lib_web/cache/a;->a:Lcom/transsion/lib_web/cache/a;

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/a;->f(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

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
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD:Lcom/transsion/memberapi/MemberSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/memberapi/IMemberApi;->a(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
