.class public Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sP"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

.field private final TKC:Ljava/lang/Object;

.field private final sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj()V
    .locals 7

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->TKC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/aa;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_3

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->sP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/aa;Ljava/util/Properties;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->sP(Lcom/bytedance/sdk/openadsdk/core/settings/aa;Ljava/util/Properties;)Ljava/util/Properties;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/aa$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->sP(Lcom/bytedance/sdk/openadsdk/core/settings/aa;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    monitor-exit v1

    throw v0
.end method
