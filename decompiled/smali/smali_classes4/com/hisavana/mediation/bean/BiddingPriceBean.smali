.class public Lcom/hisavana/mediation/bean/BiddingPriceBean;
.super Ljava/lang/Object;


# instance fields
.field private payLoad:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field private price:D

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->payLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->price:D

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->startTime:J

    return-wide v0
.end method

.method public setPayLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->payLoad:Ljava/lang/String;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->price:D

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/mediation/bean/BiddingPriceBean;->startTime:J

    return-void
.end method
