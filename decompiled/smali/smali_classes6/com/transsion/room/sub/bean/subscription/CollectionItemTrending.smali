.class public final Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00081\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000b\u00105\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH\u00c6\u0003J\t\u0010<\u001a\u00020\u000eH\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0097\u0001\u0010@\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0006\u0010A\u001a\u00020\u000eJ\u0013\u0010B\u001a\u00020C2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u00d6\u0003J\t\u0010F\u001a\u00020\u000eH\u00d6\u0001J\t\u0010G\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0016\"\u0004\u0008&\u0010\u0018R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0016\"\u0004\u00080\u0010\u0018R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010(\"\u0004\u00082\u0010*R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0016\"\u0004\u00084\u0010\u0018\u00a8\u0006M"
    }
    d2 = {
        "Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;",
        "Landroid/os/Parcelable;",
        "collectionId",
        "",
        "title",
        "description",
        "cover",
        "Lcom/transsion/room/sub/bean/subscription/CoverTrending;",
        "creator",
        "Lcom/transsion/room/sub/bean/subscription/CreatorTrending;",
        "category",
        "genres",
        "",
        "videoNum",
        "",
        "watchNum",
        "videos",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "ops",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
        "getCollectionId",
        "()Ljava/lang/String;",
        "setCollectionId",
        "(Ljava/lang/String;)V",
        "getTitle",
        "setTitle",
        "getDescription",
        "setDescription",
        "getCover",
        "()Lcom/transsion/room/sub/bean/subscription/CoverTrending;",
        "setCover",
        "(Lcom/transsion/room/sub/bean/subscription/CoverTrending;)V",
        "getCreator",
        "()Lcom/transsion/room/sub/bean/subscription/CreatorTrending;",
        "setCreator",
        "(Lcom/transsion/room/sub/bean/subscription/CreatorTrending;)V",
        "getCategory",
        "setCategory",
        "getGenres",
        "()Ljava/util/List;",
        "setGenres",
        "(Ljava/util/List;)V",
        "getVideoNum",
        "()I",
        "setVideoNum",
        "(I)V",
        "getWatchNum",
        "setWatchNum",
        "getVideos",
        "setVideos",
        "getOps",
        "setOps",
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
            "Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Ljava/lang/String;

.field private collectionId:Ljava/lang/String;

.field private cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

.field private creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

.field private description:Ljava/lang/String;

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ops:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoNum:I

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation
.end field

.field private watchNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending$a;

    invoke-direct {v0}, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending$a;-><init>()V

    sput-object v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CoverTrending;",
            "Lcom/transsion/room/sub/bean/subscription/CreatorTrending;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    iput-object p5, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    iput-object p6, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    iput p8, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    iput-object p9, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    iput-object p11, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

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
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    move-object v3, p0

    move-object/from16 v10, p7

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v14}, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/transsion/room/sub/bean/subscription/CoverTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    return-object v0
.end method

.method public final component5()Lcom/transsion/room/sub/bean/subscription/CreatorTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/room/sub/bean/subscription/CoverTrending;",
            "Lcom/transsion/room/sub/bean/subscription/CreatorTrending;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;"
        }
    .end annotation

    new-instance v12, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v12
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
    instance-of v1, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    iget v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Lcom/transsion/room/sub/bean/subscription/CoverTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    return-object v0
.end method

.method public final getCreator()Lcom/transsion/room/sub/bean/subscription/CreatorTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    return v0
.end method

.method public final getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    return-object v0
.end method

.method public final getWatchNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/CoverTrending;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/CreatorTrending;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    return-void
.end method

.method public final setCollectionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    return-void
.end method

.method public final setCover(Lcom/transsion/room/sub/bean/subscription/CoverTrending;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    return-void
.end method

.method public final setCreator(Lcom/transsion/room/sub/bean/subscription/CreatorTrending;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    return-void
.end method

.method public final setVideoNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    return-void
.end method

.method public final setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    return-void
.end method

.method public final setWatchNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    iget-object v4, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    iget-object v5, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    iget v7, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    iget-object v8, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    iget-object v10, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CollectionItemTrending(collectionId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cover="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", creator="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", category="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", genres="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoNum="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", watchNum="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videos="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ops="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->collectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->cover:Lcom/transsion/room/sub/bean/subscription/CoverTrending;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/CoverTrending;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->creator:Lcom/transsion/room/sub/bean/subscription/CreatorTrending;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/CreatorTrending;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->genres:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videoNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->watchNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->videos:Ljava/util/List;

    if-nez p2, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;->ops:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
