.class final Lcom/bytedance/sdk/openadsdk/core/Ym$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sef()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v1, "url is null"

    invoke-static {v3, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "connect_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Landroid/content/Context;J)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "device_id"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_1
    :goto_0
    const-string v5, "header"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v5

    sget-object v6, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "application/json; charset=utf-8"

    const-string v7, "Content-Type"

    if-eqz v5, :cond_3

    :try_start_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dx;

    sget-object v8, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v8, "cypher"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    const-string v8, "x-pgli18n"

    const-string v9, "4"

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Content-Encoding"

    const-string v9, "union_sdk_encode"

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Lorg/json/JSONObject;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lorg/json/JSONObject;)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    const-string v4, "send_i_p_v6"

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Ym$1$1;

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym$1;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    const/4 v4, -0x2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "build ipv6 request failed:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
