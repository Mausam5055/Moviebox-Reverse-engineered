.class Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
