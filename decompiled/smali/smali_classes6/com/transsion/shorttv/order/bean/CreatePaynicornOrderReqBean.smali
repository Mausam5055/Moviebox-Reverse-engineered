.class public final Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0017\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nH\u00c6\u0003J\t\u00101\u001a\u00020\u000cH\u00c6\u0003J\t\u00102\u001a\u00020\u000eH\u00c6\u0003Jw\u00103\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0006\u00104\u001a\u000205J\u0013\u00106\u001a\u00020\u000c2\u0008\u00107\u001a\u0004\u0018\u000108H\u00d6\u0003J\t\u00109\u001a\u000205H\u00d6\u0001J\t\u0010:\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000205R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\"\u0004\u0008\u001e\u0010\u0014R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
        "Landroid/os/Parcelable;",
        "projectName",
        "",
        "skuId",
        "userId",
        "cpFrontPage",
        "activityId",
        "ext",
        "extStrJson",
        "",
        "isDebug",
        "",
        "payChannel",
        "Lcom/transsion/shorttv/order/EnumPayChannel;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)V",
        "getProjectName",
        "()Ljava/lang/String;",
        "setProjectName",
        "(Ljava/lang/String;)V",
        "getSkuId",
        "setSkuId",
        "getUserId",
        "setUserId",
        "getCpFrontPage",
        "setCpFrontPage",
        "getActivityId",
        "setActivityId",
        "getExt",
        "setExt",
        "getExtStrJson",
        "()Ljava/util/Map;",
        "setExtStrJson",
        "(Ljava/util/Map;)V",
        "()Z",
        "setDebug",
        "(Z)V",
        "getPayChannel",
        "()Lcom/transsion/shorttv/order/EnumPayChannel;",
        "setPayChannel",
        "(Lcom/transsion/shorttv/order/EnumPayChannel;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
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
        "shortTvLib_release"
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
            "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityId:Ljava/lang/String;

.field private cpFrontPage:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private extStrJson:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDebug:Z

.field private payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

.field private projectName:Ljava/lang/String;

.field private skuId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/shorttv/order/EnumPayChannel;",
            ")V"
        }
    .end annotation

    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payChannel"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    iput-boolean p8, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    iput-object p9, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v11, v1

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    sget-object v0, Lcom/transsion/shorttv/order/EnumPayChannel;->PAY_CHANNEL_PAYNICORN:Lcom/transsion/shorttv/order/EnumPayChannel;

    move-object v12, v0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v12}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;ILjava/lang/Object;)Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    return v0
.end method

.method public final component9()Lcom/transsion/shorttv/order/EnumPayChannel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/shorttv/order/EnumPayChannel;",
            ")",
            "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;"
        }
    .end annotation

    const-string v0, "projectName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payChannel"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    move-object v1, v0

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)V

    return-object v0
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
    instance-of v1, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    iget-boolean v3, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    iget-object p1, p1, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpFrontPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtStrJson()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    return-object v0
.end method

.method public final getPayChannel()Lcom/transsion/shorttv/order/EnumPayChannel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    return-object v0
.end method

.method public final getProjectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkuId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    return v0
.end method

.method public final setActivityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    return-void
.end method

.method public final setCpFrontPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    return-void
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    return-void
.end method

.method public final setExtStrJson(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    return-void
.end method

.method public final setPayChannel(Lcom/transsion/shorttv/order/EnumPayChannel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    return-void
.end method

.method public final setProjectName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    return-void
.end method

.method public final setSkuId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    iget-object v8, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CreatePaynicornOrderReqBean(projectName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skuId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cpFrontPage="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activityId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ext="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extStrJson="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isDebug="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", payChannel="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->projectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->skuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->cpFrontPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->activityId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->ext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->extStrJson:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->payChannel:Lcom/transsion/shorttv/order/EnumPayChannel;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
