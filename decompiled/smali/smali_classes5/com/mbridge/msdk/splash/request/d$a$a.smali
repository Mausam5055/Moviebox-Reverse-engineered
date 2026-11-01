.class Lcom/mbridge/msdk/splash/request/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/request/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lcom/mbridge/msdk/splash/request/d$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/request/d$a;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->b:Lcom/mbridge/msdk/splash/request/d$a;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->b:Lcom/mbridge/msdk/splash/request/d$a;

    iget-object v1, v0, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/request/d$a;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/splash/request/d;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->b:Lcom/mbridge/msdk/splash/request/d$a;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->saveRequestTime(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->b:Lcom/mbridge/msdk/splash/request/d$a;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/request/d$a;->b:Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/splash/request/d$a$a;->b:Lcom/mbridge/msdk/splash/request/d$a;

    iget-object v2, v1, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    iget v1, v1, Lcom/mbridge/msdk/splash/request/d$a;->d:I

    invoke-virtual {v2, v1, v0}, Lcom/mbridge/msdk/splash/request/d;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
