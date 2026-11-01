.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;ILcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->sP:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP()I

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "count"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sef(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "interceptor"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "success"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->HiB()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "link"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "interaction_type"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->sP:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "real_interaction_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Jcg()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    const-string v3, "is_act_signals_api_available"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_act_signals_callback"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "exception_msg"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    :cond_2
    const-string v1, "meta"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$43;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SP()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "ad_extra_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "TTAD.AdEvent"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
