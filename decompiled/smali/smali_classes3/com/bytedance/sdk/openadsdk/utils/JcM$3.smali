.class final Lcom/bytedance/sdk/openadsdk/utils/JcM$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Dq/TKC/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/JcM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)V
    .locals 4

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->Sj()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    const-string v2, "pag_thread_pool_state"

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/JcM$3;Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;Lcom/bytedance/sdk/component/Dq/TKC/vS;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    return-void
.end method
