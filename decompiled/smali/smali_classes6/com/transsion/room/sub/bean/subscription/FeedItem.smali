.class public final Lcom/transsion/room/sub/bean/subscription/FeedItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008N\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00f5\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000c\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000b\u0010V\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH\u00c6\u0003J\t\u0010]\u001a\u00020\u000eH\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000cH\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003J\u00fb\u0001\u0010i\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000c2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00c6\u0001J\u0006\u0010j\u001a\u00020\u000eJ\u0013\u0010k\u001a\u00020l2\u0008\u0010m\u001a\u0004\u0018\u00010nH\u00d6\u0003J\t\u0010o\u001a\u00020\u000eH\u00d6\u0001J\t\u0010p\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010!\"\u0004\u0008%\u0010#R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010!\"\u0004\u00081\u0010#R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010!\"\u0004\u0008;\u0010#R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010!\"\u0004\u0008=\u0010#R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00103\"\u0004\u0008?\u00105R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010!\"\u0004\u0008E\u0010#R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010!\"\u0004\u0008K\u0010#R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010!\"\u0004\u0008M\u0010#R\"\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u00103\"\u0004\u0008O\u00105R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010!\"\u0004\u0008Q\u0010#R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010U\u00a8\u0006v"
    }
    d2 = {
        "Lcom/transsion/room/sub/bean/subscription/FeedItem;",
        "Landroid/os/Parcelable;",
        "ugcVideoId",
        "",
        "title",
        "description",
        "cover",
        "Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;",
        "creator",
        "Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;",
        "category",
        "genres",
        "",
        "duration",
        "",
        "publishTime",
        "watchNum",
        "hashTags",
        "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
        "interactiveInfo",
        "Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;",
        "subjectId",
        "belongToCollection",
        "Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;",
        "ops",
        "corner",
        "country",
        "releaseDate",
        "operatingInfo",
        "Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V",
        "getUgcVideoId",
        "()Ljava/lang/String;",
        "setUgcVideoId",
        "(Ljava/lang/String;)V",
        "getTitle",
        "setTitle",
        "getDescription",
        "setDescription",
        "getCover",
        "()Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;",
        "setCover",
        "(Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;)V",
        "getCreator",
        "()Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;",
        "setCreator",
        "(Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;)V",
        "getCategory",
        "setCategory",
        "getGenres",
        "()Ljava/util/List;",
        "setGenres",
        "(Ljava/util/List;)V",
        "getDuration",
        "()I",
        "setDuration",
        "(I)V",
        "getPublishTime",
        "setPublishTime",
        "getWatchNum",
        "setWatchNum",
        "getHashTags",
        "setHashTags",
        "getInteractiveInfo",
        "()Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;",
        "setInteractiveInfo",
        "(Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;)V",
        "getSubjectId",
        "setSubjectId",
        "getBelongToCollection",
        "()Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;",
        "setBelongToCollection",
        "(Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;)V",
        "getOps",
        "setOps",
        "getCorner",
        "setCorner",
        "getCountry",
        "setCountry",
        "getReleaseDate",
        "setReleaseDate",
        "getOperatingInfo",
        "()Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;",
        "setOperatingInfo",
        "(Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V",
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
        "component18",
        "component19",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Room_psRelease"
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
            "Lcom/transsion/room/sub/bean/subscription/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

.field private category:Ljava/lang/String;

.field private corner:Ljava/lang/String;

.field private country:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

.field private creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

.field private description:Ljava/lang/String;

.field private duration:I

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hashTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;"
        }
    .end annotation
.end field

.field private interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

.field private operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

.field private ops:Ljava/lang/String;

.field private publishTime:Ljava/lang/String;

.field private releaseDate:Ljava/lang/String;

.field private subjectId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ugcVideoId:Ljava/lang/String;

.field private watchNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/FeedItem$a;

    invoke-direct {v0}, Lcom/transsion/room/sub/bean/subscription/FeedItem$a;-><init>()V

    sput-object v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;",
            "Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;",
            "Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p11

    const-string v2, "hashTags"

    invoke-static {p11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    move-object v2, p4

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    move-object v2, p5

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    move-object v2, p6

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    move-object v2, p7

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    move v2, p8

    iput v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    move-object v2, p9

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    move-object v2, p10

    iput-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v11, v1

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    move-object/from16 v3, p0

    move-object/from16 v10, p7

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v22}, Lcom/transsion/room/sub/bean/subscription/FeedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/sub/bean/subscription/FeedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;ILjava/lang/Object;)Lcom/transsion/room/sub/bean/subscription/FeedItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p18, v15

    move-object/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/transsion/room/sub/bean/subscription/FeedItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)Lcom/transsion/room/sub/bean/subscription/FeedItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    return-object v0
.end method

.method public final component5()Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)Lcom/transsion/room/sub/bean/subscription/FeedItem;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;",
            "Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;",
            "Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;",
            ")",
            "Lcom/transsion/room/sub/bean/subscription/FeedItem;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

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

    move-object/from16 v19, p19

    const-string v0, "hashTags"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lcom/transsion/room/sub/bean/subscription/FeedItem;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v19}, Lcom/transsion/room/sub/bean/subscription/FeedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V

    return-object v20
.end method

.method public final describeContents()I
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
    instance-of v1, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    iget v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    iget-object p1, p1, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final getBelongToCollection()Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    return-object v0
.end method

.method public final getCover()Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    return-object v0
.end method

.method public final getCreator()Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    return v0
.end method

.method public final getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final getHashTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    return-object v0
.end method

.method public final getInteractiveInfo()Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    return-object v0
.end method

.method public final getOperatingInfo()Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getReleaseDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    if-nez v2, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBelongToCollection(Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    return-void
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    return-void
.end method

.method public final setCorner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    return-void
.end method

.method public final setCover(Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    return-void
.end method

.method public final setCreator(Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    return-void
.end method

.method public final setGenres(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    return-void
.end method

.method public final setHashTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    return-void
.end method

.method public final setInteractiveInfo(Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    return-void
.end method

.method public final setOperatingInfo(Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setPublishTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public final setReleaseDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    return-void
.end method

.method public final setWatchNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    iget-object v5, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    iget-object v6, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    iget v8, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    iget-object v9, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    iget-object v12, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    iget-object v13, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    const-string v15, "FeedItem(ugcVideoId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", watchNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interactiveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", belongToCollection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", corner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operatingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ugcVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->cover:Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->publishTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->watchNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->hashTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/room/sub/bean/subscription/HashTagFeed;

    invoke-virtual {v3, p1, p2}, Lcom/transsion/room/sub/bean/subscription/HashTagFeed;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->interactiveInfo:Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->belongToCollection:Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->ops:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->corner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->country:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/FeedItem;->operatingInfo:Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    return-void
.end method
