.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic Sj:J

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;


# direct methods
.method constructor <init>(JLcom/bytedance/sdk/openadsdk/utils/WMZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->Sj:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->TKC:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "click_stay_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->Sj:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "click_time"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-wide v3, v3, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->TKC:Ljava/lang/String;

    const-string v3, "open_ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "is_icon_only"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v1
.end method
