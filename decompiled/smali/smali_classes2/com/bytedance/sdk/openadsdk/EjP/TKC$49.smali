.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Lorg/json/JSONObject;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:J

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->sP:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->TKC:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->EjP:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->HiB:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->aNB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj(Landroid/app/Application;)Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->sP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Sj()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->TKC:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->sP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->EjP:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$1;

    invoke-direct {v6, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    const-string v1, "show"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->EjP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Aw()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cX()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    const-string v3, "show_urls"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->HiB:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    const-string v2, "dynamic_show_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nbp()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->tz()I

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->Sj()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$2;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
