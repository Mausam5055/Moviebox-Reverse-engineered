.class public Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008S\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u00a7\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010s\u001a\u00020\u0004J\u0008\u0010t\u001a\u00020\u0006H\u0016J\u0018\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u0006H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010#R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010#\"\u0004\u0008,\u0010%R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010#\"\u0004\u0008.\u0010%R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010#\"\u0004\u00080\u0010%R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\'\"\u0004\u0008>\u0010)R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010#\"\u0004\u0008@\u0010%R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010#\"\u0004\u0008B\u0010%R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010#\"\u0004\u0008D\u0010%R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\'\"\u0004\u0008F\u0010)R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\'\"\u0004\u0008H\u0010)R\u001a\u0010\u0015\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\'\"\u0004\u0008J\u0010)R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010#\"\u0004\u0008L\u0010%R\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\'\"\u0004\u0008N\u0010)R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010#\"\u0004\u0008P\u0010%R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010#\"\u0004\u0008R\u0010%R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010#\"\u0004\u0008T\u0010%R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010#\"\u0004\u0008V\u0010%R\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\'\"\u0004\u0008X\u0010)R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010#\"\u0004\u0008Z\u0010%R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010#\"\u0004\u0008\\\u0010%R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010#\"\u0004\u0008^\u0010%R$\u0010_\u001a\u00020`8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008a\u0010b\u001a\u0004\u0008_\u0010c\"\u0004\u0008d\u0010eR$\u0010f\u001a\u00020`8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008g\u0010b\u001a\u0004\u0008f\u0010c\"\u0004\u0008h\u0010eR\u0011\u0010i\u001a\u00020`8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010cR\u0011\u0010j\u001a\u00020`8F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010cR\u0011\u0010k\u001a\u00020`8F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010cR\u0011\u0010l\u001a\u00020`8F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010cR\u0011\u0010m\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010#R\u0011\u0010o\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010#R\u0013\u0010q\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010#\u00a8\u0006z"
    }
    d2 = {
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "resourceStreamType",
        "",
        "resourceId",
        "lan",
        "lanName",
        "url",
        "size",
        "",
        "delay",
        "downloads",
        "type",
        "postId",
        "subtitleName",
        "subjectId",
        "ep",
        "se",
        "resolution",
        "subjectName",
        "status",
        "fileCharsetName",
        "path",
        "zipPath",
        "taskId",
        "failCount",
        "ugcVideoId",
        "ugcVideoCollectionId",
        "ops",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "getResourceStreamType",
        "()I",
        "setResourceStreamType",
        "(I)V",
        "getResourceId",
        "getLan",
        "setLan",
        "getLanName",
        "setLanName",
        "getUrl",
        "setUrl",
        "getSize",
        "()Ljava/lang/Long;",
        "setSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getDelay",
        "setDelay",
        "getDownloads",
        "()Ljava/lang/Integer;",
        "setDownloads",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getType",
        "setType",
        "getPostId",
        "setPostId",
        "getSubtitleName",
        "setSubtitleName",
        "getSubjectId",
        "setSubjectId",
        "getEp",
        "setEp",
        "getSe",
        "setSe",
        "getResolution",
        "setResolution",
        "getSubjectName",
        "setSubjectName",
        "getStatus",
        "setStatus",
        "getFileCharsetName",
        "setFileCharsetName",
        "getPath",
        "setPath",
        "getZipPath",
        "setZipPath",
        "getTaskId",
        "setTaskId",
        "getFailCount",
        "setFailCount",
        "getUgcVideoId",
        "setUgcVideoId",
        "getUgcVideoCollectionId",
        "setUgcVideoCollectionId",
        "getOps",
        "setOps",
        "isSetImmediately",
        "",
        "isSetImmediately$annotations",
        "()V",
        "()Z",
        "setSetImmediately",
        "(Z)V",
        "isAutoDownload",
        "isAutoDownload$annotations",
        "setAutoDownload",
        "isInner",
        "isDownloaded",
        "isSearch",
        "isOpenSbNewApi",
        "subjectFileName",
        "getSubjectFileName",
        "name",
        "getName",
        "lanAbbr",
        "getLanAbbr",
        "getSubtitleInfo",
        "describeContents",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "SubtitleDownload_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delay:Ljava/lang/Long;

.field private downloads:Ljava/lang/Integer;

.field private ep:I

.field private failCount:I

.field private fileCharsetName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isAutoDownload:Z

.field private isSetImmediately:Z

.field private lan:Ljava/lang/String;

.field private lanName:Ljava/lang/String;

.field private ops:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private postId:Ljava/lang/String;

.field private resolution:I

.field private final resourceId:Ljava/lang/String;

.field private resourceStreamType:I

.field private se:I

.field private size:Ljava/lang/Long;

.field private status:I

.field private subjectId:Ljava/lang/String;

.field private subjectName:Ljava/lang/String;

.field private subtitleName:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private type:I

.field private ugcVideoCollectionId:Ljava/lang/String;

.field private ugcVideoId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private zipPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable$a;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable$a;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p21

    const-string v4, "id"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "resourceId"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "zipPath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->id:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceStreamType:I

    iput-object v2, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceId:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->url:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->size:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->delay:Ljava/lang/Long;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->downloads:Ljava/lang/Integer;

    move v1, p10

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->postId:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subtitleName:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectId:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    move/from16 v1, p15

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->se:I

    move/from16 v1, p16

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resolution:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectName:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->status:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->fileCharsetName:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->path:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->zipPath:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->taskId:Ljava/lang/String;

    move/from16 v1, p23

    iput v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->failCount:I

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoId:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoCollectionId:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ops:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v3

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v3

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v3

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v3

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move v13, v2

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v3

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v3

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v3

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move/from16 v17, v2

    goto :goto_b

    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move/from16 v18, v2

    goto :goto_c

    :cond_c
    move/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v19, v2

    goto :goto_d

    :cond_d
    move/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v3

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v21, v2

    goto :goto_f

    :cond_f
    move/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    const-string v4, ""

    if-eqz v1, :cond_11

    move-object/from16 v23, v4

    goto :goto_11

    :cond_11
    move-object/from16 v23, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v24, v4

    goto :goto_12

    :cond_12
    move-object/from16 v24, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v25, v4

    goto :goto_13

    :cond_13
    move-object/from16 v25, p22

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move/from16 v26, v2

    goto :goto_14

    :cond_14
    move/from16 v26, p23

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move-object/from16 v27, v3

    goto :goto_15

    :cond_15
    move-object/from16 v27, p24

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    move-object/from16 v28, v3

    goto :goto_16

    :cond_16
    move-object/from16 v28, p25

    :goto_16
    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    move-object/from16 v29, v3

    goto :goto_17

    :cond_17
    move-object/from16 v29, p26

    :goto_17
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v29}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic isAutoDownload$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isSetImmediately$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDelay()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->delay:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDownloads()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->downloads:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEp()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    return v0
.end method

.method public final getFailCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->failCount:I

    return v0
.end method

.method public final getFileCharsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->fileCharsetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanAbbr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    const-string v1, "in_id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "in"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getLanName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subtitleName:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object v2
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResolution()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resolution:I

    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceStreamType()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceStreamType:I

    return v0
.end method

.method public final getSe()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->se:I

    return v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->status:I

    return v0
.end method

.method public final getSubjectFileName()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[\\\\!/:#*?\"<>|&,]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceId:Ljava/lang/String;

    goto :goto_0

    :goto_2
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, " "

    const-string v3, "_"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleInfo()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->url:Ljava/lang/String;

    const-string v1, "."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "?"

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v2}, Lkotlin/text/StringsKt;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2, v4, v2}, Lkotlin/text/StringsKt;->f1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    const-string v3, "_"

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectFileName()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->se:I

    iget v5, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    iget-object v6, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_S"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_E"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSubtitleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subtitleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    return v0
.end method

.method public final getUgcVideoCollectionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoCollectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->zipPath:Ljava/lang/String;

    return-object v0
.end method

.method public final isAutoDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload:Z

    return v0
.end method

.method public final isDownloaded()Z
    .locals 2

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInner()Z
    .locals 2

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isOpenSbNewApi()Z
    .locals 2

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSearch()Z
    .locals 2

    iget v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSetImmediately()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately:Z

    return v0
.end method

.method public final setAutoDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload:Z

    return-void
.end method

.method public final setDelay(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->delay:Ljava/lang/Long;

    return-void
.end method

.method public final setDownloads(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->downloads:Ljava/lang/Integer;

    return-void
.end method

.method public final setEp(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    return-void
.end method

.method public final setFailCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->failCount:I

    return-void
.end method

.method public final setFileCharsetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->fileCharsetName:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->id:Ljava/lang/String;

    return-void
.end method

.method public final setLan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    return-void
.end method

.method public final setLanName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->path:Ljava/lang/String;

    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->postId:Ljava/lang/String;

    return-void
.end method

.method public final setResolution(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resolution:I

    return-void
.end method

.method public final setResourceStreamType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceStreamType:I

    return-void
.end method

.method public final setSe(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->se:I

    return-void
.end method

.method public final setSetImmediately(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately:Z

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->size:Ljava/lang/Long;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->status:I

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectName:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subtitleName:Ljava/lang/String;

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->taskId:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    return-void
.end method

.method public final setUgcVideoCollectionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoCollectionId:Ljava/lang/String;

    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoId:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->url:Ljava/lang/String;

    return-void
.end method

.method public final setZipPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->zipPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceStreamType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resourceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lan:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->lanName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->size:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->delay:Ljava/lang/Long;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->downloads:Ljava/lang/Integer;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->postId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subtitleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ep:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->se:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->resolution:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->subjectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->fileCharsetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->zipPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->failCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ugcVideoCollectionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->ops:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
