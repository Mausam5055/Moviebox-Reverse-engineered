.class public final Lcom/transsion/publish/api/bean/RequestPostEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u00104\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010+\"\u0004\u00080\u0010-R\u001a\u00101\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0007\"\u0004\u00083\u0010\t\u00a8\u00065"
    }
    d2 = {
        "Lcom/transsion/publish/api/bean/RequestPostEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "groupId",
        "getGroupId",
        "setGroupId",
        "subjectId",
        "getSubjectId",
        "setSubjectId",
        "score",
        "getScore",
        "setScore",
        "link",
        "Lcom/transsion/publish/api/bean/MediaLinkEntity;",
        "getLink",
        "()Lcom/transsion/publish/api/bean/MediaLinkEntity;",
        "setLink",
        "(Lcom/transsion/publish/api/bean/MediaLinkEntity;)V",
        "media",
        "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;",
        "getMedia",
        "()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;",
        "setMedia",
        "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V",
        "publishType",
        "",
        "getPublishType",
        "()I",
        "setPublishType",
        "(I)V",
        "lon",
        "",
        "getLon",
        "()D",
        "setLon",
        "(D)V",
        "lat",
        "getLat",
        "setLat",
        "poiName",
        "getPoiName",
        "setPoiName",
        "toString",
        "PublishApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private lat:D

.field private link:Lcom/transsion/publish/api/bean/MediaLinkEntity;

.field private lon:D

.field private media:Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

.field private poiName:Ljava/lang/String;

.field private publishType:I

.field private score:Ljava/lang/String;

.field private subjectId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->groupId:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->subjectId:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->score:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->poiName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lat:D

    return-wide v0
.end method

.method public final getLink()Lcom/transsion/publish/api/bean/MediaLinkEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->link:Lcom/transsion/publish/api/bean/MediaLinkEntity;

    return-object v0
.end method

.method public final getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lon:D

    return-wide v0
.end method

.method public final getMedia()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->media:Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    return-object v0
.end method

.method public final getPoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->poiName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishType()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->publishType:I

    return v0
.end method

.method public final getScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->score:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->groupId:Ljava/lang/String;

    return-void
.end method

.method public final setLat(D)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lat:D

    return-void
.end method

.method public final setLink(Lcom/transsion/publish/api/bean/MediaLinkEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->link:Lcom/transsion/publish/api/bean/MediaLinkEntity;

    return-void
.end method

.method public final setLon(D)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lon:D

    return-void
.end method

.method public final setMedia(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->media:Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    return-void
.end method

.method public final setPoiName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->poiName:Ljava/lang/String;

    return-void
.end method

.method public final setPublishType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->publishType:I

    return-void
.end method

.method public final setScore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->score:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->subjectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->score:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->link:Lcom/transsion/publish/api/bean/MediaLinkEntity;

    iget-object v6, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->media:Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    iget v7, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->publishType:I

    iget-wide v8, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lon:D

    iget-wide v10, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->lat:D

    iget-object v12, p0, Lcom/transsion/publish/api/bean/RequestPostEntity;->poiName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RequestPostEntity(title=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', content=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', groupId=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', subjectId=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', score=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', link="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", media="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", publishType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lon="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",lat="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",poiName="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
