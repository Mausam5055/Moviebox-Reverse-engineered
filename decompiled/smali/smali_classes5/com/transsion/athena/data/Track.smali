.class public Lcom/transsion/athena/data/Track;
.super Ljava/lang/Object;


# static fields
.field public static final SAVE_FLAG_NONE:I = -0x1

.field public static final SAVE_FLAG_TO_DB:I = 0x1

.field public static final SAVE_FLAG_TO_FILE:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/athena/data/TrackData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/Track;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getOriginJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/Track;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->d:J

    return-wide v0
.end method

.method public getTrackData()Lcom/transsion/athena/data/TrackData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/Track;->i:Lcom/transsion/athena/data/TrackData;

    return-object v0
.end method

.method public getTrackErTs()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->g:J

    return-wide v0
.end method

.method public getTrackFlag()I
    .locals 1

    iget v0, p0, Lcom/transsion/athena/data/Track;->e:I

    return v0
.end method

.method public getTrackTs()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->f:J

    return-wide v0
.end method

.method public setBootId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/data/Track;->h:Ljava/lang/String;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    return-void
.end method

.method public setJsonData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public setOriginJsonData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/data/Track;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public setTid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->d:J

    return-void
.end method

.method public setTrackData(Lcom/transsion/athena/data/TrackData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/data/Track;->i:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method public setTrackErTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->g:J

    return-void
.end method

.method public setTrackFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/data/Track;->e:I

    return-void
.end method

.method public setTrackTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->f:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/data/Track;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
