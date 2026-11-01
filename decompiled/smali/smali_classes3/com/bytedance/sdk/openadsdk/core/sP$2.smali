.class final Lcom/bytedance/sdk/openadsdk/core/sP$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;JLcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;JLcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->sP:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->HiB:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "load_vast_fail"

    const-string v3, "reason_code"

    const-string v4, "error_code"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->sP:J

    sub-long/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    if-eqz v1, :cond_1

    const-string v2, "wrapper_count"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;->sP:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "impression_links_null"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;->TKC:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "load_vast_success"

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const/4 v1, -0x2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;->Sj:I

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->HiB:Ljava/lang/String;

    invoke-static {v1, v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->vS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x3e8

    :try_start_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "description"

    const-string v2, "1000:Image url is null"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->HiB:Ljava/lang/String;

    const-string v3, "load_vast_icon_fail"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
