.class public Lcom/transsion/api/gateway/bean/GatewayTrack;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SAVE_FLAG_NONE:I = -0x1

.field public static final SAVE_FLAG_TO_DB:I = 0x1

.field public static final SAVE_FLAG_TO_FILE:I


# instance fields
.field private eventName:Ljava/lang/String;

.field private flag:I

.field private hasSent:Z

.field private jsonData:Lorg/json/JSONObject;

.field private tid:J

.field private trackFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->flag:I

    return v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    return-wide v0
.end method

.method public getTrackFlag()I
    .locals 1

    iget v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->trackFlag:I

    return v0
.end method

.method public isHasSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    return v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->eventName:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->flag:I

    return-void
.end method

.method public setHasSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    return-void
.end method

.method public setJson(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    return-void
.end method

.method public setTid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    return-void
.end method

.method public setTrackFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->trackFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
