.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field private Sj:Ljava/lang/String;

.field private TKC:Ljava/lang/String;

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->EjP:Ljava/lang/String;

    return-object p0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->HiB:Ljava/lang/String;

    return-object p0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "url"

    const-string v1, "md5"

    const-string v2, "id"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "overlay"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP:Ljava/lang/String;

    return-object p0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP:Ljava/lang/String;

    return-object v0
.end method
