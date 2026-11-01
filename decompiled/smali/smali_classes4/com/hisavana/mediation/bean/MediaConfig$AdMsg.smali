.class public Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bean/MediaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdMsg"
.end annotation


# instance fields
.field private infinix:Ljava/lang/String;

.field private itel:Ljava/lang/String;

.field private other:Ljava/lang/String;

.field private tecno:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfinix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->infinix:Ljava/lang/String;

    return-object v0
.end method

.method public getItel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->itel:Ljava/lang/String;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getTecno()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->tecno:Ljava/lang/String;

    return-object v0
.end method

.method public setInfinix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->infinix:Ljava/lang/String;

    return-void
.end method

.method public setItel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->itel:Ljava/lang/String;

    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->other:Ljava/lang/String;

    return-void
.end method

.method public setTecno(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->tecno:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adMsg{tecno=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->tecno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", infinix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->infinix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->itel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", other=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mediation/bean/MediaConfig$AdMsg;->other:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
