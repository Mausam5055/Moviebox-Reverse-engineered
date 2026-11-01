.class public Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;
    }
.end annotation


# instance fields
.field Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

.field sP:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "vertical"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    :cond_1
    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    :cond_2
    return-void
.end method


# virtual methods
.method public Sj(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;->Sj:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;->Sj:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public Sj()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj$Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
