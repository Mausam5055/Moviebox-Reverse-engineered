.class public Lcom/mbridge/msdk/advanced/middle/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

.field protected b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Lcom/mbridge/msdk/advanced/middle/c;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/advanced/middle/c;Lcom/mbridge/msdk/out/NativeAdvancedAdListener;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/d;->c:Lcom/mbridge/msdk/advanced/middle/c;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    iput-object p3, p0, Lcom/mbridge/msdk/advanced/middle/d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->closeFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/middle/d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBridgeIds;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onClick(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onClose(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/middle/d;->c:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mbridge/msdk/advanced/middle/c;->E:Z

    :cond_0
    return-void
.end method

.method public d(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onLeaveApp(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->c:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/advanced/middle/c;->E:Z

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "load_to"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "allow_skip"

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/middle/d;->c:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/advanced/middle/c;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeAdvancedShowListenerImpl"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/middle/d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBridgeIds;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/j;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onLogImpression(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/d;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->showFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method
