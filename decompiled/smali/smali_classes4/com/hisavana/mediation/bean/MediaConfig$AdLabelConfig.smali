.class public Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bean/MediaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdLabelConfig"
.end annotation


# instance fields
.field private admob:I

.field private adx:I

.field private fan:I

.field private tan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmob()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->admob:I

    return v0
.end method

.method public getAdx()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->adx:I

    return v0
.end method

.method public getFan()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->fan:I

    return v0
.end method

.method public getTan()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->tan:I

    return v0
.end method

.method public setAdmob(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->admob:I

    return-void
.end method

.method public setAdx(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->adx:I

    return-void
.end method

.method public setFan(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->fan:I

    return-void
.end method

.method public setTan(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->tan:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLabelConfig{fan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->fan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", admob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->admob:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->tan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdLabelConfig;->adx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
