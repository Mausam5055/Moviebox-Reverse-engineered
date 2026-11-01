.class Lcom/bytedance/sdk/openadsdk/core/sU$5;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->sP:Lcom/bytedance/sdk/openadsdk/core/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cypher"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    :catchall_0
    :cond_0
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/sU$sP;

    move-result-object p1

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->Sj:I

    const/16 v0, 0x4e20

    if-eq p2, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Yf;

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->sP:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU$sP;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "NetApiImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->sP:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$5$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void

    :cond_3
    const/4 p1, -0x2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object p1

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(ILjava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$5$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$5$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void

    :cond_5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$5$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$5$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->sP:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sU$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$5$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$5$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method
