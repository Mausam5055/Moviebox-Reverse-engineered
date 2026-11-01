.class public final Lcom/cloud/hisavana/sdk/common/bean/VastData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008P\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00e7\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0016\u0012\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010W\u001a\u00020\u0016J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010[\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u0010\u0010`\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000f\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00f0\u0001\u0010j\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010H\u00c6\u0001\u00a2\u0006\u0002\u0010kJ\t\u0010l\u001a\u00020\u0014H\u00d6\u0001J\u0013\u0010m\u001a\u00020\u00162\u0008\u0010n\u001a\u0004\u0018\u00010oH\u00d6\u0003J\t\u0010p\u001a\u00020\u0014H\u00d6\u0001J\t\u0010q\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020\u0014H\u00d6\u0001R \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010%\"\u0004\u00084\u0010\'R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010!\"\u0004\u00086\u0010#R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u0015\u00107\"\u0004\u00088\u00109R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u001c\u00107\"\u0004\u0008;\u00109R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u001b\u00107\"\u0004\u0008<\u00109R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008E\u0010+\"\u0004\u0008F\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010%\"\u0004\u0008H\u0010\'R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010%\"\u0004\u0008R\u0010\'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006w"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/VastData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "title",
        "icon",
        "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
        "vastTrack",
        "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
        "vastClick",
        "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
        "mainAd",
        "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
        "videoMask",
        "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
        "impression",
        "",
        "version",
        "description",
        "duration",
        "",
        "isCached",
        "",
        "progressData",
        "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
        "skipOffSet",
        "buttonTxt",
        "isVideoType",
        "isVideoCached",
        "adVerifications",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getAdVerifications",
        "()Ljava/util/List;",
        "setAdVerifications",
        "(Ljava/util/List;)V",
        "getButtonTxt",
        "()Ljava/lang/String;",
        "setButtonTxt",
        "(Ljava/lang/String;)V",
        "getDescription",
        "setDescription",
        "getDuration",
        "()Ljava/lang/Integer;",
        "setDuration",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getIcon",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
        "setIcon",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V",
        "getId",
        "setId",
        "getImpression",
        "setImpression",
        "()Ljava/lang/Boolean;",
        "setCached",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "setVideoCached",
        "setVideoType",
        "getMainAd",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
        "setMainAd",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V",
        "getProgressData",
        "()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
        "setProgressData",
        "(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V",
        "getSkipOffSet",
        "setSkipOffSet",
        "getTitle",
        "setTitle",
        "getVastClick",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
        "setVastClick",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V",
        "getVastTrack",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
        "setVastTrack",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V",
        "getVersion",
        "setVersion",
        "getVideoMask",
        "()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
        "setVideoMask",
        "(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V",
        "checkVast",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/common/bean/VastData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adVerifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation
.end field

.field private buttonTxt:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

.field private id:Ljava/lang/String;

.field private impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCached:Ljava/lang/Boolean;

.field private isVideoCached:Ljava/lang/Boolean;

.field private isVideoType:Ljava/lang/Boolean;

.field private mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

.field private progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

.field private skipOffSet:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

.field private vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

.field private version:Ljava/lang/String;

.field private videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastData$Creator;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData$Creator;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const v19, 0x3ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
            "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p18

    const-string v2, "adVerifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    move-object v2, p4

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-object v2, p5

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    move-object v2, p6

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-object v2, p7

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-object v2, p8

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    move-object v2, p9

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    move-object v2, p10

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    move-object v2, p11

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    move-object v2, p12

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_11

    :cond_11
    move-object/from16 v0, p18

    :goto_11
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v0

    invoke-direct/range {p1 .. p19}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/sdk/common/bean/VastData;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final checkVast()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getMediaResource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component13()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component17()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    return-object v0
.end method

.method public final component4()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    return-object v0
.end method

.method public final component5()Lcom/cloud/hisavana/sdk/common/bean/VastClick;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    return-object v0
.end method

.method public final component6()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    return-object v0
.end method

.method public final component7()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
            "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)",
            "Lcom/cloud/hisavana/sdk/common/bean/VastData;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    const-string v0, "adVerifications"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v18}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v19
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getAdVerifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    return-object v0
.end method

.method public final getButtonTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpression()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    return-object v0
.end method

.method public final getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    return-object v0
.end method

.method public final getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    return-object v0
.end method

.method public final getSkipOffSet()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVastClick()Lcom/cloud/hisavana/sdk/common/bean/VastClick;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    return-object v0
.end method

.method public final getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    if-nez v2, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCached()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isVideoCached()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isVideoType()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAdVerifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    return-void
.end method

.method public final setButtonTxt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    return-void
.end method

.method public final setCached(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public final setIcon(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    return-void
.end method

.method public final setImpression(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    return-void
.end method

.method public final setMainAd(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    return-void
.end method

.method public final setProgressData(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    return-void
.end method

.method public final setSkipOffSet(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    return-void
.end method

.method public final setVastClick(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    return-void
.end method

.method public final setVastTrack(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVideoCached(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    return-void
.end method

.method public final setVideoMask(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    return-void
.end method

.method public final setVideoType(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vastTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vastClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipOffSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonTxt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adVerifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    if-nez v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_b

    :cond_b
    return-void
.end method
