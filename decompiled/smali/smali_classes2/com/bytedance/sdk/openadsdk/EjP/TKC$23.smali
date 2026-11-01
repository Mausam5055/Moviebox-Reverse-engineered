.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;

.field final synthetic TKC:J

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->TKC:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->EjP:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->HiB:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    const-string v2, "log_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ua_policy"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->TKC:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->EjP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->HiB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ci()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$23;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;)V

    return-void
.end method
