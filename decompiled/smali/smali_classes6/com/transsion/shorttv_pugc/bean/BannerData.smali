.class public final Lcom/transsion/shorttv_pugc/bean/BannerData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010I\u001a\u00020\u0008H\u00c6\u0003J\t\u0010J\u001a\u00020\nH\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0008H\u00c6\u0003J\u0010\u0010M\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010-J\u0010\u0010N\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u0098\u0001\u0010R\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u0010SJ\u0006\u0010T\u001a\u00020\u0008J\u0013\u0010U\u001a\u00020\n2\u0008\u0010V\u001a\u0004\u0018\u00010WH\u00d6\u0003J\t\u0010X\u001a\u00020\u0008H\u00d6\u0001J\t\u0010Y\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0008R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0017\"\u0004\u0008)\u0010\u0019R\u001a\u0010\u000c\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010#R\u001e\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00100\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0017\"\u0004\u00087\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006_"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/bean/BannerData;",
        "Landroid/os/Parcelable;",
        "content",
        "",
        "deepLink",
        "image",
        "Lcom/transsion/shorttv_pugc/bean/Image;",
        "type",
        "",
        "builtIn",
        "",
        "subjectId",
        "subjectType",
        "hasResource",
        "seenStatus",
        "ops",
        "subject",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "adData",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "getDeepLink",
        "setDeepLink",
        "getImage",
        "()Lcom/transsion/shorttv_pugc/bean/Image;",
        "setImage",
        "(Lcom/transsion/shorttv_pugc/bean/Image;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getBuiltIn",
        "()Z",
        "setBuiltIn",
        "(Z)V",
        "getSubjectId",
        "setSubjectId",
        "getSubjectType",
        "setSubjectType",
        "getHasResource",
        "()Ljava/lang/Boolean;",
        "setHasResource",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getSeenStatus",
        "()Ljava/lang/Integer;",
        "setSeenStatus",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getOps",
        "setOps",
        "getSubject",
        "()Lcom/transsion/shorttv_pugc/bean/Subject;",
        "setSubject",
        "(Lcom/transsion/shorttv_pugc/bean/Subject;)V",
        "getAdData",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "setAdData",
        "(Lcom/transsion/ad/monopoly/model/AdPlans;)V",
        "adview",
        "Landroid/view/View;",
        "getAdview",
        "()Landroid/view/View;",
        "setAdview",
        "(Landroid/view/View;)V",
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
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;",
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
            "Lcom/transsion/shorttv_pugc/bean/BannerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adData:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private transient adview:Landroid/view/View;

.field private builtIn:Z

.field private content:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private hasResource:Ljava/lang/Boolean;

.field private image:Lcom/transsion/shorttv_pugc/bean/Image;

.field private ops:Ljava/lang/String;

.field private seenStatus:Ljava/lang/Integer;

.field private subject:Lcom/transsion/shorttv_pugc/bean/Subject;

.field private subjectId:Ljava/lang/String;

.field private subjectType:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/bean/BannerData$a;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/bean/BannerData$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    iput p4, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    iput-boolean p5, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    iput-object p6, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    iput p7, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    iput-object p8, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    iput-object p12, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_8

    :cond_8
    move-object/from16 v6, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    move-object p1, p0

    move-object p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v6

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v2

    invoke-direct/range {p1 .. p13}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/bean/BannerData;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    goto :goto_b

    :cond_b
    move-object/from16 v1, p12

    :goto_b
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/transsion/shorttv_pugc/bean/BannerData;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/transsion/shorttv_pugc/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    return-object v0
.end method

.method public final component12()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    return v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 14

    new-instance v13, Lcom/transsion/shorttv_pugc/bean/BannerData;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-object v13
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
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    iget v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    iget-boolean v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    iget v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    iget-object p1, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAdData()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-object v0
.end method

.method public final getAdview()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adview:Landroid/view/View;

    return-object v0
.end method

.method public final getBuiltIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasResource()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImage()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeenStatus()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSubject()Lcom/transsion/shorttv_pugc/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectType()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAdData(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-void
.end method

.method public final setAdview(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adview:Landroid/view/View;

    return-void
.end method

.method public final setBuiltIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    return-void
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public final setHasResource(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImage(Lcom/transsion/shorttv_pugc/bean/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setSeenStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    return-void
.end method

.method public final setSubject(Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    iget v3, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    iget-object v5, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    iget v6, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    iget-object v7, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    iget-object v11, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BannerData(content="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deepLink="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", image="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", builtIn="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", subjectId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subjectType="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasResource="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", seenStatus="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ops="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adData="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
