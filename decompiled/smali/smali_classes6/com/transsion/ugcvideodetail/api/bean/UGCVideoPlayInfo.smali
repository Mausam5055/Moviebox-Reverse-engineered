.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J1\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0016H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;",
        "Ljava/io/Serializable;",
        "ugcVideoId",
        "",
        "resources",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
        "firstImage",
        "Lcom/transsion/moviedetailapi/bean/FirstFrame;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V",
        "getUgcVideoId",
        "()Ljava/lang/String;",
        "setUgcVideoId",
        "(Ljava/lang/String;)V",
        "getResources",
        "()Ljava/util/List;",
        "setResources",
        "(Ljava/util/List;)V",
        "getFirstImage",
        "()Lcom/transsion/moviedetailapi/bean/FirstFrame;",
        "downloadStatus",
        "",
        "getDownloadStatus",
        "()I",
        "setDownloadStatus",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "UGCVideoDetailApi_psRelease"
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
.field private transient downloadStatus:I

.field private final firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;"
        }
    .end annotation
.end field

.field private ugcVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/FirstFrame;",
            ")V"
        }
    .end annotation

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;ILjava/lang/Object;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->copy(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/FirstFrame;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/FirstFrame;",
            ")",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;"
        }
    .end annotation

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    iget-object p1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDownloadStatus()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->downloadStatus:I

    return v0
.end method

.method public final getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    return-object v0
.end method

.method public final getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDownloadStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->downloadStatus:I

    return-void
.end method

.method public final setResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->ugcVideoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->resources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->firstImage:Lcom/transsion/moviedetailapi/bean/FirstFrame;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UGCVideoPlayInfo(ugcVideoId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resources="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", firstImage="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
