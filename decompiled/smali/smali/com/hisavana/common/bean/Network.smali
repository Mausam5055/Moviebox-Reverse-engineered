.class public Lcom/hisavana/common/bean/Network;
.super Ljava/lang/Object;


# instance fields
.field private adt:I

.field private applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private transient bidInfo:Lcom/hisavana/common/interfacz/IBidWithNotify;

.field private biddingType:Ljava/lang/Integer;

.field private codeSeatId:Ljava/lang/String;

.field private minPrice:Ljava/lang/Integer;

.field private networkCodeSeatType:Ljava/lang/String;

.field private price:Ljava/lang/Double;

.field private showPriceCoefficient:Ljava/math/BigDecimal;

.field private source:Ljava/lang/Integer;

.field private tempPrice:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/hisavana/common/bean/Network;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAdt()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/Network;->adt:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->bidInfo:Lcom/hisavana/common/interfacz/IBidWithNotify;

    return-object v0
.end method

.method public getBiddingType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->biddingType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->codeSeatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMinPrice()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->minPrice:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCodeSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->networkCodeSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->price:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getShowPriceCoefficient()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->showPriceCoefficient:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    :goto_0
    return-object v0
.end method

.method public getSource()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/Network;->source:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTempPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/common/bean/Network;->tempPrice:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAdt(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/Network;->adt:I

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setApplicationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->applicationKey:Ljava/lang/String;

    return-void
.end method

.method public setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->bidInfo:Lcom/hisavana/common/interfacz/IBidWithNotify;

    return-void
.end method

.method public setBiddingType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->biddingType:Ljava/lang/Integer;

    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->codeSeatId:Ljava/lang/String;

    return-void
.end method

.method public setMinPrice(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->minPrice:Ljava/lang/Integer;

    return-void
.end method

.method public setNetworkCodeSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->networkCodeSeatType:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->price:Ljava/lang/Double;

    return-void
.end method

.method public setShowPriceCoefficient(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->showPriceCoefficient:Ljava/math/BigDecimal;

    return-void
.end method

.method public setSource(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/Network;->source:Ljava/lang/Integer;

    return-void
.end method

.method public setTempPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/common/bean/Network;->tempPrice:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network{applicationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/Network;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", codeSeatId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/Network;->codeSeatId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", applicationKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/Network;->applicationKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/Network;->source:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", price="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/Network;->price:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tempPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hisavana/common/bean/Network;->tempPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", adt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hisavana/common/bean/Network;->adt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkCodeSeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/Network;->networkCodeSeatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bidInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/Network;->bidInfo:Lcom/hisavana/common/interfacz/IBidWithNotify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showPriceCoefficient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/Network;->showPriceCoefficient:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", biddingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/Network;->biddingType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/Network;->minPrice:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
