.class Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "Pangle_Debug_Mode"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "cypher"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string p1, "message"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :catchall_0
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->TKC()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Lorg/json/JSONObject;)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(J)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/sU;->sP()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;->Sj(Z)V

    return-void

    :cond_2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;->Sj(Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Ym;)Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;->Sj(Z)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym$2;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
