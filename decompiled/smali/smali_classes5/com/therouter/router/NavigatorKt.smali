.class public abstract Lcom/therouter/router/NavigatorKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/LinkedList;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/util/List;

.field private static final d:Ljava/util/List;

.field private static final e:Ljava/util/List;

.field private static f:Lbg/c;

.field private static g:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->e:Ljava/util/List;

    new-instance v0, Lbg/c;

    invoke-direct {v0}, Lbg/c;-><init>()V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->f:Lbg/c;

    sget-object v0, Lcom/therouter/router/NavigatorKt$routerInterceptor$1;->INSTANCE:Lcom/therouter/router/NavigatorKt$routerInterceptor$1;

    sput-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic a(Lbg/e;Lbg/e;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/therouter/router/NavigatorKt;->i(Lbg/e;Lbg/e;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b()Lbg/c;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->f:Lbg/c;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->c:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic f()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic g()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final h(Lbg/e;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/therouter/router/f;

    invoke-direct {p0}, Lcom/therouter/router/f;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static final i(Lbg/e;Lbg/e;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbg/e;->a()I

    move-result p1

    invoke-virtual {p0}, Lbg/e;->a()I

    move-result p0

    sub-int p0, p1, p0

    :goto_0
    return p0
.end method

.method public static final j()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/therouter/router/NavigatorKt;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final k()V
    .locals 2

    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/therouter/router/g;

    invoke-virtual {v1}, Lcom/therouter/router/g;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static final l(Lbg/f;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;

    invoke-direct {v0, p0}, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;-><init>(Lbg/f;)V

    sput-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    return-void
.end method
