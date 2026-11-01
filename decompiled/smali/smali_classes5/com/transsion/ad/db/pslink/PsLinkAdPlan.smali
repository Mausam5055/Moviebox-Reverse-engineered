.class public final Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008F\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00ad\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0005H\u00c6\u0003J\t\u0010D\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u0010\u0010I\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u0010\u0010J\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010O\u001a\u00020\u0003H\u00c6\u0003J\u00be\u0001\u0010P\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010QJ\u0006\u0010R\u001a\u00020\u0003J\u0013\u0010S\u001a\u00020T2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u00d6\u0003J\t\u0010W\u001a\u00020\u0003H\u00d6\u0001J\t\u0010X\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001c\"\u0004\u0008 \u0010\u001eR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001c\"\u0004\u0008&\u0010\u001eR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001c\"\u0004\u0008(\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001c\"\u0004\u0008*\u0010\u001eR\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010/\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001c\"\u0004\u00088\u0010\u001eR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0018\"\u0004\u0008:\u0010\u001aR\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0018\"\u0004\u0008<\u0010\u001aR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u001c\"\u0004\u0008>\u0010\u001eR\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0018\"\u0004\u0008?\u0010\u001a\u00a8\u0006^"
    }
    d2 = {
        "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "nonId",
        "",
        "adSource",
        "extAdSlot",
        "rank",
        "psPlanId",
        "psLinkAdInfoStr",
        "psInfoJson",
        "updateTimestamp",
        "",
        "showMax",
        "clickMax",
        "showHours",
        "showedTimes",
        "clickedTimes",
        "showDate",
        "isOffer",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getNonId",
        "()Ljava/lang/String;",
        "setNonId",
        "(Ljava/lang/String;)V",
        "getAdSource",
        "setAdSource",
        "getExtAdSlot",
        "setExtAdSlot",
        "getRank",
        "setRank",
        "getPsPlanId",
        "setPsPlanId",
        "getPsLinkAdInfoStr",
        "setPsLinkAdInfoStr",
        "getPsInfoJson",
        "setPsInfoJson",
        "getUpdateTimestamp",
        "()Ljava/lang/Long;",
        "setUpdateTimestamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getShowMax",
        "()Ljava/lang/Integer;",
        "setShowMax",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getClickMax",
        "setClickMax",
        "getShowHours",
        "setShowHours",
        "getShowedTimes",
        "setShowedTimes",
        "getClickedTimes",
        "setClickedTimes",
        "getShowDate",
        "setShowDate",
        "setOffer",
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
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
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
        "lib_ad_gpRelease"
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
            "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adSource:Ljava/lang/String;

.field private clickMax:Ljava/lang/Integer;

.field private clickedTimes:I

.field private extAdSlot:Ljava/lang/String;

.field private id:I

.field private isOffer:I

.field private nonId:Ljava/lang/String;

.field private psInfoJson:Ljava/lang/String;

.field private psLinkAdInfoStr:Ljava/lang/String;

.field private psPlanId:Ljava/lang/String;

.field private rank:I

.field private showDate:Ljava/lang/String;

.field private showHours:Ljava/lang/String;

.field private showMax:Ljava/lang/Integer;

.field private showedTimes:I

.field private updateTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan$a;

    invoke-direct {v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    const-string v4, "nonId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adSource"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "extAdSlot"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v4, p1

    iput v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    move/from16 v1, p13

    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    move/from16 v1, p14

    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v11, v3

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v3

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v3

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v14, v3

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object v15, v3

    goto :goto_7

    :cond_7
    move-object/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move/from16 v16, v2

    goto :goto_8

    :cond_8
    move/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move/from16 v17, v2

    goto :goto_9

    :cond_9
    move/from16 v17, p14

    :goto_9
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    move-object/from16 v18, v3

    goto :goto_a

    :cond_a
    move-object/from16 v18, p15

    :goto_a
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v19, p16

    invoke-direct/range {v3 .. v19}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;IILjava/lang/Object;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p15, v15

    move/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    return v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 18

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    const-string v0, "nonId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSource"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extAdSlot"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V

    return-object v17
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
    instance-of v1, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    iget p1, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAdSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickMax()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getClickedTimes()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    return v0
.end method

.method public final getExtAdSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    return v0
.end method

.method public final getNonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsInfoJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsLinkAdInfoStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsPlanId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRank()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    return v0
.end method

.method public final getShowDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowHours()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowMax()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getShowedTimes()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    return v0
.end method

.method public final getUpdateTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOffer()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    return v0
.end method

.method public final setAdSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    return-void
.end method

.method public final setClickMax(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    return-void
.end method

.method public final setClickedTimes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    return-void
.end method

.method public final setExtAdSlot(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    return-void
.end method

.method public final setNonId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    return-void
.end method

.method public final setOffer(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    return-void
.end method

.method public final setPsInfoJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    return-void
.end method

.method public final setPsLinkAdInfoStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    return-void
.end method

.method public final setPsPlanId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    return-void
.end method

.method public final setShowDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    return-void
.end method

.method public final setShowHours(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    return-void
.end method

.method public final setShowMax(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    return-void
.end method

.method public final setShowedTimes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    return-void
.end method

.method public final setUpdateTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    iget-object v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    iget v5, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    iget-object v6, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    iget-object v10, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    iget v13, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    iget v14, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    iget-object v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    move-object/from16 v16, v15

    iget v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string v15, "PsLinkAdPlan(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extAdSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", psPlanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psLinkAdInfoStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psInfoJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

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
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->isOffer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
