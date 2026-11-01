.class public final Lcom/transsion/publish/api/bean/RequestPostMediaEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u0016R\u001c\u0010!\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "mediaType",
        "",
        "getMediaType",
        "()I",
        "setMediaType",
        "(I)V",
        "cover",
        "Lcom/transsion/publish/api/bean/MediaCoverEntity;",
        "getCover",
        "()Lcom/transsion/publish/api/bean/MediaCoverEntity;",
        "setCover",
        "(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V",
        "video",
        "",
        "Lcom/transsion/publish/api/bean/MediaVideoEntity;",
        "getVideo",
        "()Ljava/util/List;",
        "setVideo",
        "(Ljava/util/List;)V",
        "audio",
        "Lcom/transsion/publish/api/bean/MediaAudioEntity;",
        "getAudio",
        "setAudio",
        "image",
        "Lcom/transsion/publish/api/bean/MediaImageEntity;",
        "getImage",
        "setImage",
        "toString",
        "",
        "tempBucket",
        "getTempBucket",
        "()Ljava/lang/String;",
        "setTempBucket",
        "(Ljava/lang/String;)V",
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
.field private audio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaAudioEntity;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Lcom/transsion/publish/api/bean/MediaCoverEntity;

.field private image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mediaType:I

.field private tempBucket:Ljava/lang/String;

.field private video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaVideoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAudio()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaAudioEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->audio:Ljava/util/List;

    return-object v0
.end method

.method public final getCover()Lcom/transsion/publish/api/bean/MediaCoverEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->cover:Lcom/transsion/publish/api/bean/MediaCoverEntity;

    return-object v0
.end method

.method public final getImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaImageEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->image:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaType()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->mediaType:I

    return v0
.end method

.method public final getTempBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->tempBucket:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaVideoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->video:Ljava/util/List;

    return-object v0
.end method

.method public final setAudio(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaAudioEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->audio:Ljava/util/List;

    return-void
.end method

.method public final setCover(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->cover:Lcom/transsion/publish/api/bean/MediaCoverEntity;

    return-void
.end method

.method public final setImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaImageEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->image:Ljava/util/List;

    return-void
.end method

.method public final setMediaType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->mediaType:I

    return-void
.end method

.method public final setTempBucket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->tempBucket:Ljava/lang/String;

    return-void
.end method

.method public final setVideo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/bean/MediaVideoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->video:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->mediaType:I

    iget-object v1, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->cover:Lcom/transsion/publish/api/bean/MediaCoverEntity;

    iget-object v2, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->video:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->audio:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->image:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RequestPostMediaEntity(mediaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cover="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", video="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", audio="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", image="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
