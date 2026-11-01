.class Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/JcM$3;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/utils/JcM$3;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/JcM$3;Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;Lcom/bytedance/sdk/component/Dq/TKC/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->TKC:Lcom/bytedance/sdk/openadsdk/utils/JcM$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "times"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "runMaxTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->vS()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "waitMaxTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->HiB()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    move-result v1

    :goto_0
    const-string v2, "avgRunTime"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->EjP()J

    move-result-wide v3

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "avgWaitTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->TKC()J

    move-result-wide v2

    div-long/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "poolType"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ThreadUtils"

    const-string v3, "run: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    const-string v2, "pag_thread_pool_state"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    return-object v0
.end method
