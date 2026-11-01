.class public Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bean/MediaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field private adFlag:I

.field private ad_config:Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;

.field private msg:Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;

.field private offdur:I

.field private settingAppJump:I

.field private silenceDays:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->silenceDays:I

    iput v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->settingAppJump:I

    return-void
.end method


# virtual methods
.method public getAdFlag()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->adFlag:I

    return v0
.end method

.method public getAd_config()Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->ad_config:Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;

    return-object v0
.end method

.method public getMsg()Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->msg:Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;

    return-object v0
.end method

.method public getOffdur()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->offdur:I

    return v0
.end method

.method public getSilenceDays()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->silenceDays:I

    return v0
.end method

.method public getSplashJump()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->settingAppJump:I

    return v0
.end method

.method public setAdFlag(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->adFlag:I

    return-void
.end method

.method public setAd_config(Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->ad_config:Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;

    return-void
.end method

.method public setMsg(Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->msg:Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;

    return-void
.end method

.method public setOffdur(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->offdur:I

    return-void
.end method

.method public setSilenceDays(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->silenceDays:I

    return-void
.end method

.method public setSplashJump(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->settingAppJump:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigData{offdur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->offdur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->adFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ad_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->ad_config:Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->msg:Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", silenceDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$ConfigData;->silenceDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
