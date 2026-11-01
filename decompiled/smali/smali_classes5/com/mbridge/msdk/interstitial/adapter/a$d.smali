.class Lcom/mbridge/msdk/interstitial/adapter/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/adapter/a;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/adapter/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->d(Lcom/mbridge/msdk/interstitial/adapter/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    const-string v1, "no ads available"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->e(Lcom/mbridge/msdk/interstitial/adapter/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/j;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;)V

    :cond_2
    return-void
.end method
