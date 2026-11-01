.class Lcom/mbridge/msdk/reward/request/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/request/c;->b(Ljava/util/List;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:Lcom/mbridge/msdk/reward/request/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/request/c;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/request/c$a;->e:Lcom/mbridge/msdk/reward/request/c;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/request/c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/request/c$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/mbridge/msdk/reward/request/c$a;->c:Ljava/util/List;

    iput p5, p0, Lcom/mbridge/msdk/reward/request/c$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/request/c$a;->a:Ljava/lang/String;

    const-string v1, "v5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "data"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/request/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/request/c$a;->e:Lcom/mbridge/msdk/reward/request/c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/request/c;->a(Lcom/mbridge/msdk/reward/request/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/entity/b;->parseV5CampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/request/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/request/c$a;->e:Lcom/mbridge/msdk/reward/request/c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/request/c;->a(Lcom/mbridge/msdk/reward/request/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/entity/b;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/reward/request/c$a$a;

    invoke-direct {v2, p0, v0}, Lcom/mbridge/msdk/reward/request/c$a$a;-><init>(Lcom/mbridge/msdk/reward/request/c$a;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
