.class Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->dx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dsp_html_error_url"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
