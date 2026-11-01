.class Lcom/mbridge/msdk/interstitial/adapter/a$b;
.super Lcom/mbridge/msdk/interstitial/request/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/adapter/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/interstitial/adapter/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/adapter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/request/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    const-string v0, "can\'t show because unknow error"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/adapter/a;->c(Lcom/mbridge/msdk/interstitial/adapter/a;)V

    :goto_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    const-string p1, "IntersAdapter"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$b;->b:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/adapter/a;->c(Lcom/mbridge/msdk/interstitial/adapter/a;)V

    return-void
.end method
