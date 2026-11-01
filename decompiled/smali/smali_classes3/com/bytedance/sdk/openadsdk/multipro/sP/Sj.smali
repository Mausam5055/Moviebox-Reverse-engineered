.class public Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;
    }
.end annotation


# instance fields
.field public EjP:Z

.field public HiB:J

.field public Jcg:J

.field public Sj:Z

.field public TKC:Z

.field public sP:Z

.field public vS:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    const-string v1, "isCompleted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->sP(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "isFromVideoDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->TKC(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "isFromDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->EjP(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "totalPlayDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "currentPlayPosition"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->TKC(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    const-string v1, "isAutoPlay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object v0
.end method


# virtual methods
.method public EjP(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->TKC:Z

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->HiB:J

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->EjP:Z

    return-object p0
.end method

.method public Sj()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isCompleted"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromVideoDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->sP:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->TKC:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->HiB:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "totalPlayDuration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->vS:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentPlayPosition"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Jcg:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->EjP:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public TKC(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Jcg:J

    return-object p0
.end method

.method public TKC(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->sP:Z

    return-object p0
.end method

.method public sP(J)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->vS:J

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj:Z

    return-object p0
.end method
