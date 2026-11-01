.class public Lcom/mbridge/msdk/reward/adapter/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->c:Z

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->d:I

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->e:I

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->f:I

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->g:I

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->d:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondShowIndex()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->e:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterCallBackState()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->f:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterAdsShowCallState()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->h:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFilterAdsVideoCallState()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/reward/adapter/d;->g:I

    :cond_0
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/d;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/d;->c:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->f:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/d;->c:Z

    return v0
.end method
