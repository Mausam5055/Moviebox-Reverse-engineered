.class public final Lcom/transsion/publish/api/bean/MediaVideoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010(\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\tR\u001a\u0010%\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0016\"\u0004\u0008\'\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/publish/api/bean/MediaVideoEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "size",
        "",
        "getSize",
        "()J",
        "setSize",
        "(J)V",
        "duration",
        "getDuration",
        "setDuration",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "width",
        "getWidth",
        "setWidth",
        "fps",
        "getFps",
        "setFps",
        "bitrate",
        "getBitrate",
        "setBitrate",
        "imagePath",
        "getImagePath",
        "setImagePath",
        "definition",
        "getDefinition",
        "setDefinition",
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
.field private bitrate:I

.field private definition:I

.field private duration:J

.field private fps:I

.field private height:I

.field private imagePath:Ljava/lang/String;

.field private size:J

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBitrate()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->bitrate:I

    return v0
.end method

.method public final getDefinition()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->definition:I

    return v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->duration:J

    return-wide v0
.end method

.method public final getFps()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->fps:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->height:I

    return v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->size:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->width:I

    return v0
.end method

.method public final setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->bitrate:I

    return-void
.end method

.method public final setDefinition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->definition:I

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->duration:J

    return-void
.end method

.method public final setFps(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->fps:I

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->height:I

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->size:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->url:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->size:J

    iget-wide v3, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->duration:J

    iget v5, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->height:I

    iget v6, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->width:I

    iget v7, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->fps:I

    iget v8, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->bitrate:I

    iget-object v9, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->imagePath:Ljava/lang/String;

    iget v10, p0, Lcom/transsion/publish/api/bean/MediaVideoEntity;->definition:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MediaVideoEntity(url=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', size="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fps="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bitrate="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imagePath="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", definition="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
