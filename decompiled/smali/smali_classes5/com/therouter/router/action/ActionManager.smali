.class public final Lcom/therouter/router/action/ActionManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/therouter/router/action/ActionManager;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/therouter/router/action/ActionManager;

    invoke-direct {v0}, Lcom/therouter/router/action/ActionManager;-><init>()V

    sput-object v0, Lcom/therouter/router/action/ActionManager;->a:Lcom/therouter/router/action/ActionManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/therouter/router/action/ActionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/therouter/router/Navigator;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/therouter/router/action/ActionManager;->b(Lcom/therouter/router/Navigator;Landroid/content/Context;)V

    return-void
.end method

.method private static final b(Lcom/therouter/router/Navigator;Landroid/content/Context;)V
    .locals 5

    const-string v0, "$navigator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/therouter/router/action/ActionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzf/a;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lzf/a;->d(Landroid/os/Bundle;)V

    new-instance v1, Lcom/therouter/history/a;

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/therouter/history/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/therouter/history/HistoryRecorder;->c(Lcom/therouter/history/d;)Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v1, p1

    :goto_2
    invoke-virtual {v3, v1, p0}, Lzf/a;->b(Landroid/content/Context;Lcom/therouter/router/Navigator;)Z

    move-result v1

    invoke-virtual {v3}, Lzf/a;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v4

    goto :goto_1

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzf/a;

    invoke-virtual {p1, v1}, Lzf/a;->d(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lzf/a;->c()V

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public final c(Lcom/therouter/router/Navigator;Landroid/content/Context;)V
    .locals 3

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAction->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/therouter/router/action/ActionManager$handleAction$1;->INSTANCE:Lcom/therouter/router/action/ActionManager$handleAction$1;

    const-string v2, "ActionManager"

    invoke-static {v2, v0, v1}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/therouter/router/action/a;

    invoke-direct {v0, p1, p2}, Lcom/therouter/router/action/a;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/therouter/TheRouterThreadPool;->g(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/therouter/router/Navigator;)Z
    .locals 1

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/therouter/router/action/ActionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
