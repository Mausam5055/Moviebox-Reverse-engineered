.class public final Lcom/transsion/mpush/api/LocalPushMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/api/LocalPushMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008;\n\u0002\u0010 \n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 n2\u00020\u0001:\u0001nB\u00cf\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00050OJ\t\u0010P\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010Z\u001a\u00020\u000fH\u00c6\u0003J\t\u0010[\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\\\u001a\u00020\u000fH\u00c6\u0003J\t\u0010]\u001a\u00020\u0013H\u00c6\u0003J\t\u0010^\u001a\u00020\u0013H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010`\u001a\u00020\u0013H\u00c6\u0003J\t\u0010a\u001a\u00020\u0003H\u00c6\u0003J\u00d1\u0001\u0010b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010c\u001a\u00020\u0003J\u0013\u0010d\u001a\u00020\u00132\u0008\u0010e\u001a\u0004\u0018\u00010fH\u00d6\u0003J\t\u0010g\u001a\u00020\u0003H\u00d6\u0001J\t\u0010h\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001f\"\u0004\u0008%\u0010!R \u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010!R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001f\"\u0004\u0008+\u0010!R \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001f\"\u0004\u0008-\u0010!R \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001f\"\u0004\u0008/\u0010!R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001f\"\u0004\u00081\u0010!R\u001e\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u001b\"\u0004\u00087\u0010\u001dR\u001e\u0010\u0011\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00103\"\u0004\u00089\u00105R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001e\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010;\"\u0004\u0008?\u0010=R \u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u001f\"\u0004\u0008A\u0010!R\u001e\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010;\"\u0004\u0008C\u0010=R\u001e\u0010\u0017\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u001b\"\u0004\u0008E\u0010\u001dR$\u0010F\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010\u001b\"\u0004\u0008J\u0010\u001dR$\u0010K\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008L\u0010H\u001a\u0004\u0008K\u0010;\"\u0004\u0008M\u0010=\u00a8\u0006o"
    }
    d2 = {
        "Lcom/transsion/mpush/api/LocalPushMessage;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "messageId",
        "",
        "title",
        "desc",
        "deeplink",
        "imageList",
        "pushTime",
        "source",
        "style",
        "type",
        "receiveTime",
        "",
        "msgStatus",
        "showTime",
        "forceShow",
        "",
        "hasScreenOn",
        "extraMap",
        "builtIn",
        "permanentMsgStatus",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getMessageId",
        "()Ljava/lang/String;",
        "setMessageId",
        "(Ljava/lang/String;)V",
        "getTitle",
        "setTitle",
        "getDesc",
        "setDesc",
        "getDeeplink",
        "setDeeplink",
        "getImageList",
        "setImageList",
        "getPushTime",
        "setPushTime",
        "getSource",
        "setSource",
        "getStyle",
        "setStyle",
        "getType",
        "setType",
        "getReceiveTime",
        "()J",
        "setReceiveTime",
        "(J)V",
        "getMsgStatus",
        "setMsgStatus",
        "getShowTime",
        "setShowTime",
        "getForceShow",
        "()Z",
        "setForceShow",
        "(Z)V",
        "getHasScreenOn",
        "setHasScreenOn",
        "getExtraMap",
        "setExtraMap",
        "getBuiltIn",
        "setBuiltIn",
        "getPermanentMsgStatus",
        "setPermanentMsgStatus",
        "triggerSource",
        "getTriggerSource$annotations",
        "()V",
        "getTriggerSource",
        "setTriggerSource",
        "isRefresh",
        "isRefresh$annotations",
        "setRefresh",
        "getImageArray",
        "",
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
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "MBPush_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/mpush/api/LocalPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/mpush/api/LocalPushMessage$Companion;

.field public static final NATIVE_LOCAL:Ljava/lang/String; = "3"

.field public static final NATIVE_STANDARD:Ljava/lang/String; = "3"

.field public static final STATUS_CLICKED:I = 0x2

.field public static final STATUS_SHOWN:I = 0x1

.field public static final STATUS_UNSHOW:I = 0x0

.field public static final STYLE_HOR_TYPE:Ljava/lang/String; = "101"

.field public static final STYLE_VERTICAL_TYPE:Ljava/lang/String; = "102"


# instance fields
.field private builtIn:Z

.field private deeplink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "deepLink",
            "deep_link"
        }
        value = "deeplink"
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private extraMap:Ljava/lang/String;

.field private forceShow:Z

.field private hasScreenOn:Z

.field private id:I

.field private imageList:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "image",
            "image_list"
        }
        value = "imageList"
    .end annotation
.end field

.field private isRefresh:Z

.field private messageId:Ljava/lang/String;

.field private msgStatus:I

.field private permanentMsgStatus:I

.field private pushTime:Ljava/lang/String;

.field private receiveTime:J

.field private showTime:J

.field private source:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private triggerSource:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/api/LocalPushMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/api/LocalPushMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/api/LocalPushMessage;->Companion:Lcom/transsion/mpush/api/LocalPushMessage$Companion;

    new-instance v0, Lcom/transsion/mpush/api/LocalPushMessage$Creator;

    invoke-direct {v0}, Lcom/transsion/mpush/api/LocalPushMessage$Creator;-><init>()V

    sput-object v0, Lcom/transsion/mpush/api/LocalPushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    const v21, 0x3ffff

    const/16 v22, 0x0

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

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->id:I

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->messageId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->title:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->desc:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->deeplink:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->imageList:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->pushTime:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->source:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->style:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->type:Ljava/lang/String;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->receiveTime:J

    move/from16 v1, p13

    iput v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->msgStatus:I

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->showTime:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->forceShow:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->hasScreenOn:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->extraMap:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->builtIn:Z

    move/from16 v1, p20

    iput v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->permanentMsgStatus:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_a

    move-wide/from16 v16, v14

    goto :goto_a

    :cond_a
    move-wide/from16 v16, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move/from16 v13, p13

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move/from16 v2, p16

    :goto_d
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    move/from16 v4, p17

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v18, p18

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    :cond_10
    move/from16 v19, p19

    :goto_10
    const/high16 v20, 0x20000

    and-int v0, v0, v20

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    move/from16 v0, p20

    :goto_11
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-wide/from16 p12, v16

    move/from16 p14, v13

    move-wide/from16 p15, v14

    move/from16 p17, v2

    move/from16 p18, v4

    move-object/from16 p19, v18

    move/from16 p20, v19

    move/from16 p21, v0

    invoke-direct/range {p1 .. p21}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/transsion/mpush/api/LocalPushMessage;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/mpush/api/LocalPushMessage;->messageId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/mpush/api/LocalPushMessage;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/mpush/api/LocalPushMessage;->desc:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/mpush/api/LocalPushMessage;->deeplink:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/mpush/api/LocalPushMessage;->imageList:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/mpush/api/LocalPushMessage;->pushTime:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/mpush/api/LocalPushMessage;->source:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/mpush/api/LocalPushMessage;->style:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/mpush/api/LocalPushMessage;->type:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lcom/transsion/mpush/api/LocalPushMessage;->receiveTime:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/transsion/mpush/api/LocalPushMessage;->msgStatus:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/transsion/mpush/api/LocalPushMessage;->showTime:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Lcom/transsion/mpush/api/LocalPushMessage;->forceShow:Z

    goto :goto_d

    :cond_d
    move/from16 v14, p16

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lcom/transsion/mpush/api/LocalPushMessage;->hasScreenOn:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/mpush/api/LocalPushMessage;->extraMap:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-boolean v15, v0, Lcom/transsion/mpush/api/LocalPushMessage;->builtIn:Z

    goto :goto_10

    :cond_10
    move/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/transsion/mpush/api/LocalPushMessage;->permanentMsgStatus:I

    goto :goto_11

    :cond_11
    move/from16 v1, p20

    :goto_11
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move/from16 p16, v14

    move/from16 p19, v15

    move/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/transsion/mpush/api/LocalPushMessage;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getTriggerSource$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isRefresh$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final native component1()I
.end method

.method public final native component10()Ljava/lang/String;
.end method

.method public final native component11()J
.end method

.method public final native component12()I
.end method

.method public final native component13()J
.end method

.method public final native component14()Z
.end method

.method public final native component15()Z
.end method

.method public final native component16()Ljava/lang/String;
.end method

.method public final native component17()Z
.end method

.method public final native component18()I
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native component3()Ljava/lang/String;
.end method

.method public final native component4()Ljava/lang/String;
.end method

.method public final native component5()Ljava/lang/String;
.end method

.method public final native component6()Ljava/lang/String;
.end method

.method public final native component7()Ljava/lang/String;
.end method

.method public final native component8()Ljava/lang/String;
.end method

.method public final native component9()Ljava/lang/String;
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 22

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    new-instance v21, Lcom/transsion/mpush/api/LocalPushMessage;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V

    return-object v21
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getBuiltIn()Z
.end method

.method public final native getDeeplink()Ljava/lang/String;
.end method

.method public final native getDesc()Ljava/lang/String;
.end method

.method public final native getExtraMap()Ljava/lang/String;
.end method

.method public final native getForceShow()Z
.end method

.method public final native getHasScreenOn()Z
.end method

.method public final native getId()I
.end method

.method public final native getImageArray()Ljava/util/List;
.end method

.method public final native getImageList()Ljava/lang/String;
.end method

.method public final native getMessageId()Ljava/lang/String;
.end method

.method public final native getMsgStatus()I
.end method

.method public final native getPermanentMsgStatus()I
.end method

.method public final native getPushTime()Ljava/lang/String;
.end method

.method public final native getReceiveTime()J
.end method

.method public final native getShowTime()J
.end method

.method public final native getSource()Ljava/lang/String;
.end method

.method public final native getStyle()Ljava/lang/String;
.end method

.method public final native getTitle()Ljava/lang/String;
.end method

.method public final native getTriggerSource()I
.end method

.method public final native getType()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public final native isRefresh()Z
.end method

.method public final native setBuiltIn(Z)V
.end method

.method public final native setDeeplink(Ljava/lang/String;)V
.end method

.method public final native setDesc(Ljava/lang/String;)V
.end method

.method public final native setExtraMap(Ljava/lang/String;)V
.end method

.method public final native setForceShow(Z)V
.end method

.method public final native setHasScreenOn(Z)V
.end method

.method public final native setId(I)V
.end method

.method public final native setImageList(Ljava/lang/String;)V
.end method

.method public final native setMessageId(Ljava/lang/String;)V
.end method

.method public final native setMsgStatus(I)V
.end method

.method public final native setPermanentMsgStatus(I)V
.end method

.method public final native setPushTime(Ljava/lang/String;)V
.end method

.method public final native setReceiveTime(J)V
.end method

.method public final native setRefresh(Z)V
.end method

.method public final native setShowTime(J)V
.end method

.method public final native setSource(Ljava/lang/String;)V
.end method

.method public final native setStyle(Ljava/lang/String;)V
.end method

.method public final native setTitle(Ljava/lang/String;)V
.end method

.method public final native setTriggerSource(I)V
.end method

.method public final native setType(Ljava/lang/String;)V
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
