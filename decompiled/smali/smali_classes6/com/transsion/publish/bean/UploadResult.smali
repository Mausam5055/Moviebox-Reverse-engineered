.class public final Lcom/transsion/publish/bean/UploadResult;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/publish/bean/UploadResult;",
        "",
        "<init>",
        "()V",
        "videoId",
        "",
        "getVideoId",
        "()Ljava/lang/String;",
        "setVideoId",
        "(Ljava/lang/String;)V",
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
.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/UploadResult;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/UploadResult;->videoId:Ljava/lang/String;

    return-void
.end method
