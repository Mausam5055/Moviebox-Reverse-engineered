.class final Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->sP(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Z

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->sP:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->EjP:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->HiB:Z

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->vS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->sP:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "description"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->TKC:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    const-string v2, "progress"

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->HiB:Z

    if-eqz v1, :cond_2

    const-string v1, "retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;->vS:Ljava/lang/String;

    const-string v3, "dsp_track_link_result"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
