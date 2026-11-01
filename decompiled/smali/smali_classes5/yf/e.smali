.class public final Lyf/e;
.super Lyf/d;


# instance fields
.field private volatile f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dependsOn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lyf/d;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lyf/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final i()Z
    .locals 4

    invoke-virtual {p0}, Lyf/d;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/therouter/TheRouter;->a:Lcom/therouter/TheRouter;

    invoke-virtual {v2}, Lcom/therouter/TheRouter;->e()Lyf/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lyf/b;->i(Ljava/lang/String;)Lyf/e;

    move-result-object v2

    invoke-virtual {v2}, Lyf/d;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return v2
.end method


# virtual methods
.method public g()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyf/e;->f:Z

    invoke-virtual {p0}, Lyf/d;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lyf/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyf/d;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual Flow Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " done"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const-string v3, "FlowTask"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2, v4}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lyf/d;->h(I)V

    sget-object v0, Lcom/therouter/TheRouter;->a:Lcom/therouter/TheRouter;

    invoke-virtual {v0}, Lcom/therouter/TheRouter;->e()Lyf/b;

    move-result-object v1

    invoke-virtual {v1}, Lyf/b;->m()V

    invoke-virtual {v0}, Lcom/therouter/TheRouter;->e()Lyf/b;

    move-result-object v0

    invoke-virtual {p0}, Lyf/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyf/b;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lyf/e;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyf/e;->g()V

    :cond_0
    return-void
.end method
