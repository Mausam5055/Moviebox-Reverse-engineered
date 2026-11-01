.class public final Lcom/transsion/moviedetailapi/DownloadItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u00088\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b3\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010P\u001a\u00020Q2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u0096\u0002J\u0008\u0010T\u001a\u00020\u0007H\u0016J\u0006\u0010U\u001a\u00020VJ\u000b\u0010W\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010Z\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010[\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010(J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00103J\u0011\u0010_\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u00c6\u0003J\t\u0010`\u001a\u00020\u0007H\u00c6\u0003J\t\u0010a\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00103J\u000b\u0010c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00103J\u0010\u0010e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00103J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u00da\u0001\u0010h\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00c6\u0001\u00a2\u0006\u0002\u0010iJ\t\u0010j\u001a\u00020\u0003H\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001c\"\u0004\u0008 \u0010\u001eR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010+\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001c\"\u0004\u0008-\u0010\u001eR \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001c\"\u0004\u0008/\u0010\u001eR(\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u00106\u0012\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001e\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010$\"\u0004\u0008<\u0010&R\u001e\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010$\"\u0004\u0008>\u0010&R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00106\u001a\u0004\u0008?\u00103\"\u0004\u0008@\u00105R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001c\"\u0004\u0008B\u0010\u001eR\"\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00106\u001a\u0004\u0008C\u00103\"\u0004\u0008D\u00105R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00106\u001a\u0004\u0008E\u00103\"\u0004\u0008F\u00105R \u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u001c\"\u0004\u0008H\u0010\u001eR \u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\"\u0010M\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010+\u001a\u0004\u0008N\u0010(\"\u0004\u0008O\u0010*\u00a8\u0006k"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/DownloadItem;",
        "Ljava/io/Serializable;",
        "resourceId",
        "",
        "name",
        "url",
        "linkType",
        "",
        "size",
        "",
        "uploadBy",
        "postId",
        "epse",
        "extSubtitle",
        "",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "se",
        "ep",
        "status",
        "sourceUrl",
        "resolution",
        "requireMemberType",
        "memberIcon",
        "vipInfo",
        "Lcom/transsion/baselib/db/download/VipInfo;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V",
        "getResourceId",
        "()Ljava/lang/String;",
        "setResourceId",
        "(Ljava/lang/String;)V",
        "getName",
        "setName",
        "getUrl",
        "setUrl",
        "getLinkType",
        "()I",
        "setLinkType",
        "(I)V",
        "getSize",
        "()Ljava/lang/Long;",
        "setSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getUploadBy",
        "setUploadBy",
        "getPostId",
        "setPostId",
        "getEpse$annotations",
        "()V",
        "getEpse",
        "()Ljava/lang/Integer;",
        "setEpse",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getExtSubtitle",
        "()Ljava/util/List;",
        "setExtSubtitle",
        "(Ljava/util/List;)V",
        "getSe",
        "setSe",
        "getEp",
        "setEp",
        "getStatus",
        "setStatus",
        "getSourceUrl",
        "setSourceUrl",
        "getResolution",
        "setResolution",
        "getRequireMemberType",
        "setRequireMemberType",
        "getMemberIcon",
        "setMemberIcon",
        "getVipInfo",
        "()Lcom/transsion/baselib/db/download/VipInfo;",
        "setVipInfo",
        "(Lcom/transsion/baselib/db/download/VipInfo;)V",
        "duration",
        "getDuration",
        "setDuration",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toDownloadBean",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)Lcom/transsion/moviedetailapi/DownloadItem;",
        "toString",
        "MovieDetailApi_psRelease"
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
.field private duration:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private ep:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ep"
    .end annotation
.end field

.field private epse:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode"
    .end annotation
.end field

.field private extSubtitle:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extCaptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation
.end field

.field private linkType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkType"
    .end annotation
.end field

.field private memberIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memberIcon"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private postId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postId"
    .end annotation
.end field

.field private requireMemberType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requireMemberType"
    .end annotation
.end field

.field private resolution:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resourceId"
    .end annotation
.end field

.field private se:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "se"
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceUrl"
    .end annotation
.end field

.field private transient status:Ljava/lang/Integer;

.field private uploadBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadBy"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resourceLink"
    .end annotation
.end field

.field private vipInfo:Lcom/transsion/baselib/db/download/VipInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vipInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/transsion/baselib/db/download/VipInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    move v1, p10

    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    move v1, p11

    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    move-object v1, p12

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    move-object v1, p13

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p18

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/transsion/moviedetailapi/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;ILjava/lang/Object;)Lcom/transsion/moviedetailapi/DownloadItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/transsion/moviedetailapi/DownloadItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)Lcom/transsion/moviedetailapi/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getEpse$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    return v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Lcom/transsion/baselib/db/download/VipInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    return v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)Lcom/transsion/moviedetailapi/DownloadItem;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/transsion/baselib/db/download/VipInfo;",
            ")",
            "Lcom/transsion/moviedetailapi/DownloadItem;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    new-instance v18, Lcom/transsion/moviedetailapi/DownloadItem;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/transsion/moviedetailapi/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/transsion/moviedetailapi/DownloadItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    check-cast p1, Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object p1, p1, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getEp()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    return v0
.end method

.method public final getEpse()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExtSubtitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    return-object v0
.end method

.method public final getLinkType()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    return v0
.end method

.method public final getMemberIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireMemberType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResolution()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSe()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    return v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSourceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUploadBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    return-void
.end method

.method public final setEp(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    return-void
.end method

.method public final setEpse(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    return-void
.end method

.method public final setExtSubtitle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    return-void
.end method

.method public final setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    return-void
.end method

.method public final setMemberIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    return-void
.end method

.method public final setRequireMemberType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    return-void
.end method

.method public final setResolution(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setSe(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    return-void
.end method

.method public final setSourceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    return-void
.end method

.method public final setUploadBy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVipInfo(Lcom/transsion/baselib/db/download/VipInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    return-void
.end method

.method public final toDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    move-object/from16 v0, p0

    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    const-string v93, ""

    if-nez v1, :cond_0

    move-object/from16 v2, v93

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v3, v93

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object/from16 v94, v93

    goto :goto_2

    :cond_2
    move-object/from16 v94, v1

    :goto_2
    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    const v91, 0xffff

    const/16 v92, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, -0x20

    const/16 v90, -0x1

    const-string v5, ""

    move-object v1, v4

    move-object/from16 v95, v4

    move-object/from16 v4, v94

    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object/from16 v1, v93

    :cond_3
    move-object/from16 v2, v95

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object/from16 v1, v93

    :cond_4
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    iget v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    iget v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_6
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    iget v4, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    iget-object v5, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    iget v10, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    iget v11, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    iget-object v12, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->vipInfo:Lcom/transsion/baselib/db/download/VipInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "DownloadItem(resourceId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", epse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", se="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requireMemberType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memberIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vipInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
