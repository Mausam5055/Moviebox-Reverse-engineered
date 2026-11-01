.class public Lcom/bytedance/sdk/openadsdk/core/model/Zq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "easy_playable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    const-string v1, "components"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    :cond_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tX()Lcom/bytedance/sdk/openadsdk/core/model/Zq;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tX()Lcom/bytedance/sdk/openadsdk/core/model/Zq;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    return-object p0
.end method
