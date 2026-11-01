.class public abstract Lcom/mbridge/msdk/splash/request/b;
.super Lcom/mbridge/msdk/splash/request/d;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/request/d;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/splash/request/b;->d:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/splash/request/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public abstract a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/List;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    iget p1, p0, Lcom/mbridge/msdk/splash/request/b;->d:I

    invoke-virtual {p0, p2, p1}, Lcom/mbridge/msdk/splash/request/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V

    return-void
.end method

.method public abstract b(ILjava/lang/String;)V
.end method
