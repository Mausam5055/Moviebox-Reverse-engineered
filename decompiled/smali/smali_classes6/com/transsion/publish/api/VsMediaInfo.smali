.class public final Lcom/transsion/publish/api/VsMediaInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0007\"\u0004\u00085\u0010\t\u00a8\u00066"
    }
    d2 = {
        "Lcom/transsion/publish/api/VsMediaInfo;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "enableSelect",
        "",
        "getEnableSelect",
        "()Z",
        "setEnableSelect",
        "(Z)V",
        "videoTitle",
        "",
        "getVideoTitle",
        "()Ljava/lang/String;",
        "setVideoTitle",
        "(Ljava/lang/String;)V",
        "videoPath",
        "getVideoPath",
        "setVideoPath",
        "imagePath",
        "getImagePath",
        "setImagePath",
        "videoDuration",
        "",
        "getVideoDuration",
        "()J",
        "setVideoDuration",
        "(J)V",
        "videoSize",
        "getVideoSize",
        "setVideoSize",
        "videoBitmap",
        "Landroid/graphics/Bitmap;",
        "getVideoBitmap",
        "()Landroid/graphics/Bitmap;",
        "setVideoBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "width",
        "getWidth",
        "setWidth",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "isAdd",
        "setAdd",
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
.field private enableSelect:Z

.field private height:I

.field private imagePath:Ljava/lang/String;

.field private isAdd:Z

.field private uri:Landroid/net/Uri;

.field private videoBitmap:Landroid/graphics/Bitmap;

.field private videoDuration:J

.field private videoPath:Ljava/lang/String;

.field private videoSize:J

.field private videoTitle:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->enableSelect:Z

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->height:I

    return v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getVideoDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoDuration:J

    return-wide v0
.end method

.method public final getVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoSize:J

    return-wide v0
.end method

.method public final getVideoTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->width:I

    return v0
.end method

.method public final isAdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/publish/api/VsMediaInfo;->isAdd:Z

    return v0
.end method

.method public final setAdd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->isAdd:Z

    return-void
.end method

.method public final setEnableSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->enableSelect:Z

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->height:I

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final setVideoBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setVideoDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoDuration:J

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public final setVideoSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoSize:J

    return-void
.end method

.method public final setVideoTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/api/VsMediaInfo;->width:I

    return-void
.end method
