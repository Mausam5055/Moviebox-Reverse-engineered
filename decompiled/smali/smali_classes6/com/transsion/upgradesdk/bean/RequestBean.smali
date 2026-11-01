.class public final Lcom/transsion/upgradesdk/bean/RequestBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u00085\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bb\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u001bJ\u000b\u00105\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0006H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0017H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0006H\u00c6\u0003J\t\u0010D\u001a\u00020\u0006H\u00c6\u0003J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003J\t\u0010F\u001a\u00020\u0003H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0003H\u00c6\u0003J\u00e9\u0001\u0010K\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010L\u001a\u00020M2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u00d6\u0003J\t\u0010P\u001a\u00020\u0017H\u00d6\u0001J\t\u0010Q\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001dR\u0011\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001dR\u0011\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0011\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001dR\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001dR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001dR\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010+R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001dR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010+R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001d\u00a8\u0006R"
    }
    d2 = {
        "Lcom/transsion/upgradesdk/bean/RequestBean;",
        "Ljava/io/Serializable;",
        "gaid",
        "",
        "pkg",
        "ver",
        "",
        "vn",
        "cy",
        "br",
        "mod",
        "androidVer",
        "appKey",
        "signMd5",
        "lan",
        "defaultLocale",
        "netType",
        "ua",
        "channel",
        "timestamp",
        "sign",
        "deviceNum",
        "systemVersionCode",
        "",
        "myCPU",
        "psVersionName",
        "psVersionCode",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V",
        "getAndroidVer",
        "()Ljava/lang/String;",
        "getAppKey",
        "getBr",
        "getChannel",
        "getCy",
        "getDefaultLocale",
        "getDeviceNum",
        "getGaid",
        "getLan",
        "getMod",
        "getMyCPU",
        "getNetType",
        "getPkg",
        "getPsVersionCode",
        "()J",
        "getPsVersionName",
        "getSign",
        "getSignMd5",
        "getSystemVersionCode",
        "()I",
        "getTimestamp",
        "getUa",
        "getVer",
        "getVn",
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
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "upgradesdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final androidVer:Ljava/lang/String;

.field private final appKey:Ljava/lang/String;

.field private final br:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final cy:Ljava/lang/String;

.field private final defaultLocale:Ljava/lang/String;

.field private final deviceNum:Ljava/lang/String;

.field private final gaid:Ljava/lang/String;

.field private final lan:Ljava/lang/String;

.field private final mod:Ljava/lang/String;

.field private final myCPU:Ljava/lang/String;

.field private final netType:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final psVersionCode:J

.field private final psVersionName:Ljava/lang/String;

.field private final sign:Ljava/lang/String;

.field private final signMd5:Ljava/lang/String;

.field private final systemVersionCode:I

.field private final timestamp:J

.field private final ua:Ljava/lang/String;

.field private final ver:J

.field private final vn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p19

    move-object/from16 v15, p22

    move-object/from16 v0, p23

    const-string v0, "pkg"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cy"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "br"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mod"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidVer"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signMd5"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lan"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultLocale"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netType"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ua"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myCPU"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psVersionName"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iput-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    move-wide/from16 v14, p3

    iput-wide v14, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    iput-object v2, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    iput-object v4, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    iput-object v5, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    iput-object v6, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    iput-object v7, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    iput-object v8, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    iput-object v9, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    iput-object v10, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    iput-object v11, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    iput-object v12, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    iput-object v13, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    move/from16 v1, p21

    iput v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    const/high16 v0, 0x20000

    and-int v0, p26, v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object/from16 v21, v0

    goto :goto_0

    :cond_0
    move-object/from16 v21, p20

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-wide/from16 v18, p17

    move-object/from16 v20, p19

    move/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-wide/from16 v25, p24

    invoke-direct/range {v1 .. v26}, Lcom/transsion/upgradesdk/bean/RequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/upgradesdk/bean/RequestBean;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/transsion/upgradesdk/bean/RequestBean;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p17, v14

    if-eqz v16, :cond_10

    iget-object v14, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v14, p19

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    goto :goto_12

    :cond_12
    move/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p23

    :goto_14
    const/high16 v16, 0x200000

    and-int v1, v1, v16

    move-object/from16 p19, v14

    move-object/from16 p23, v15

    if-eqz v1, :cond_15

    iget-wide v14, v0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    goto :goto_15

    :cond_15
    move-wide/from16 v14, p24

    :goto_15
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-wide/from16 p24, v14

    invoke-virtual/range {p0 .. p25}, Lcom/transsion/upgradesdk/bean/RequestBean;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)Lcom/transsion/upgradesdk/bean/RequestBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    return-wide v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)Lcom/transsion/upgradesdk/bean/RequestBean;
    .locals 27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

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

    move-wide/from16 v17, p17

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-wide/from16 v24, p24

    const-string v0, "pkg"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vn"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cy"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "br"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mod"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidVer"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signMd5"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lan"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultLocale"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netType"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ua"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sign"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myCPU"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psVersionName"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v26, Lcom/transsion/upgradesdk/bean/RequestBean;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v25}, Lcom/transsion/upgradesdk/bean/RequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-object v26
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/upgradesdk/bean/RequestBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/upgradesdk/bean/RequestBean;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    iget-wide v5, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    iget-wide v5, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    iget v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    iget-wide v5, p1, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAndroidVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getBr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final getLan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public final getMod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    return-object v0
.end method

.method public final getMyCPU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsVersionCode()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    return-wide v0
.end method

.method public final getPsVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final getSystemVersionCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    return-wide v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final getVer()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    return-wide v0
.end method

.method public final getVn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lvv/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestBean(gaid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->gaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ver:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->vn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->cy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", br="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->br:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->mod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->androidVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->signMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->lan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->defaultLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->deviceNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", systemVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->systemVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", myCPU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->myCPU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/upgradesdk/bean/RequestBean;->psVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
