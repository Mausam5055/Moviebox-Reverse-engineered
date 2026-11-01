.class public final Lcom/transsion/publish/bean/VideoAddressEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0007\"\u0004\u0008!\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/publish/bean/VideoAddressEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "videoId",
        "",
        "getVideoId",
        "()Ljava/lang/String;",
        "setVideoId",
        "(Ljava/lang/String;)V",
        "definition",
        "getDefinition",
        "setDefinition",
        "url",
        "getUrl",
        "setUrl",
        "duration",
        "getDuration",
        "setDuration",
        "width",
        "getWidth",
        "setWidth",
        "height",
        "getHeight",
        "setHeight",
        "size",
        "getSize",
        "setSize",
        "fps",
        "getFps",
        "setFps",
        "bitrate",
        "getBitrate",
        "setBitrate",
        "Publish_psRelease"
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
.field private bitrate:Ljava/lang/String;

.field private definition:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private fps:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitrate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->bitrate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefinition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public final getFps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->fps:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->height:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->width:Ljava/lang/String;

    return-object v0
.end method

.method public final setBitrate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->bitrate:Ljava/lang/String;

    return-void
.end method

.method public final setDefinition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->definition:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->duration:Ljava/lang/String;

    return-void
.end method

.method public final setFps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->fps:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->height:Ljava/lang/String;

    return-void
.end method

.method public final setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->size:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->videoId:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/VideoAddressEntity;->width:Ljava/lang/String;

    return-void
.end method
