.class public final Lcom/cloud/h5update/TH5Update$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/h5update/TH5Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/TH5Update$a;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/cloud/h5update/TH5Update$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/h5update/TH5Update$a;->l(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    invoke-virtual {v0}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/h5update/bean/PreloadResource;

    sget-object v2, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v2}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_2
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    sget-object v1, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    invoke-virtual {v1}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "last_update_version"

    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/h5update/utils/j;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public final b(Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 6

    const-string v0, "updateEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    const-wide/16 v1, 0x0

    const-string v3, "last_update_version"

    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/h5update/utils/j;->c(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/cloud/h5update/utils/j;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/h5update/bean/PreloadResource;

    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_update_url_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/h5update/utils/j;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update;->l()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/cloud/h5update/TH5Update;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->a()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/h5update/TH5Update;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->d()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lt6/b;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/TH5Update;->g()Lt6/b;

    move-result-object v0

    return-object v0
.end method

.method public final k(Landroid/content/Context;)Lcom/cloud/h5update/b$a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/h5update/b$a;

    invoke-direct {v0, p1}, Lcom/cloud/h5update/b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/h5update/TH5Update$a;->n(Ljava/lang/String;)V

    sget-object p1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {p1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/h5update/TH5Update$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Z)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->j(Z)V

    return-void
.end method

.method public final q(Lt6/b;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->k(Lt6/b;)V

    return-void
.end method

.method public final r(Lt6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/h5update/TH5Update$a;->q(Lt6/b;)V

    return-void
.end method
