.class Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$2;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "auto_click"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49$2;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/EjP/TKC$49;->sP:Ljava/lang/String;

    const-string v3, "click"

    invoke-static {v2, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "TTAD.AdEvent"

    const-string v1, "ugen click exception"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
