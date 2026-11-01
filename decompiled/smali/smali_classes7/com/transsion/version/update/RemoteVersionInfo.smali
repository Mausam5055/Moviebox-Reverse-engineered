.class public final Lcom/transsion/version/update/RemoteVersionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0006H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\tH\u00c6\u0003J\t\u0010+\u001a\u00020\u0006H\u00c6\u0003J\t\u0010,\u001a\u00020\tH\u00c6\u0003J\t\u0010-\u001a\u00020\u0006H\u00c6\u0003J\t\u0010.\u001a\u00020\tH\u00c6\u0003J\t\u0010/\u001a\u00020\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\u0006H\u00c6\u0003J\t\u00101\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u008d\u0001\u00103\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001J\u0006\u00104\u001a\u000205J\u0013\u00106\u001a\u00020\u00032\u0008\u00107\u001a\u0004\u0018\u000108H\u00d6\u0003J\t\u00109\u001a\u000205H\u00d6\u0001J\t\u0010:\u001a\u00020\u0006H\u00d6\u0001J\u0016\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000205R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/version/update/RemoteVersionInfo;",
        "Landroid/os/Parcelable;",
        "hasUpdate",
        "",
        "forceUpdate",
        "patchUrl",
        "",
        "patchMd5",
        "patchSize",
        "",
        "installPkgUrl",
        "installPkgVersionCode",
        "installPkgMd5",
        "installPkgSize",
        "updateType",
        "appStoreUrl",
        "webDownloadUrl",
        "noticeConfig",
        "Lcom/transsion/version/update/NoticeConfig;",
        "<init>",
        "(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V",
        "getHasUpdate",
        "()Z",
        "getForceUpdate",
        "getPatchUrl",
        "()Ljava/lang/String;",
        "getPatchMd5",
        "getPatchSize",
        "()J",
        "getInstallPkgUrl",
        "getInstallPkgVersionCode",
        "getInstallPkgMd5",
        "getInstallPkgSize",
        "getUpdateType",
        "getAppStoreUrl",
        "getWebDownloadUrl",
        "getNoticeConfig",
        "()Lcom/transsion/version/update/NoticeConfig;",
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
        "Update_release"
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
            "Lcom/transsion/version/update/RemoteVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appStoreUrl:Ljava/lang/String;

.field private final forceUpdate:Z

.field private final hasUpdate:Z

.field private final installPkgMd5:Ljava/lang/String;

.field private final installPkgSize:J

.field private final installPkgUrl:Ljava/lang/String;

.field private final installPkgVersionCode:J

.field private final noticeConfig:Lcom/transsion/version/update/NoticeConfig;

.field private final patchMd5:Ljava/lang/String;

.field private final patchSize:J

.field private final patchUrl:Ljava/lang/String;

.field private final updateType:Ljava/lang/String;

.field private final webDownloadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/version/update/RemoteVersionInfo$a;

    invoke-direct {v0}, Lcom/transsion/version/update/RemoteVersionInfo$a;-><init>()V

    sput-object v0, Lcom/transsion/version/update/RemoteVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V
    .locals 9

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    const-string v8, "patchUrl"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "patchMd5"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "installPkgUrl"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "installPkgMd5"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "updateType"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appStoreUrl"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "webDownloadUrl"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v8, p1

    iput-boolean v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    move v8, p2

    iput-boolean v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    iput-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    iput-object v3, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    iput-object v4, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    iput-object v5, v0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    iput-object v6, v0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    iput-object v7, v0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/version/update/b;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    move-object/from16 v16, p13

    :goto_2
    and-int/lit16 v1, v0, 0x400

    const-string v2, ""

    if-eqz v1, :cond_3

    move-object/from16 v17, v2

    goto :goto_3

    :cond_3
    move-object/from16 v17, p14

    :goto_3
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    move-object/from16 v18, p15

    :goto_4
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object/from16 v19, v0

    goto :goto_5

    :cond_5
    move-object/from16 v19, p16

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-direct/range {v3 .. v19}, Lcom/transsion/version/update/RemoteVersionInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/version/update/RemoteVersionInfo;ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;ILjava/lang/Object;)Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p15

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p16

    :goto_c
    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-wide/from16 p8, v9

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/transsion/version/update/RemoteVersionInfo;->copy(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)Lcom/transsion/version/update/RemoteVersionInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final native component1()Z
.end method

.method public final native component10()Ljava/lang/String;
.end method

.method public final native component11()Ljava/lang/String;
.end method

.method public final native component12()Ljava/lang/String;
.end method

.method public final native component13()Lcom/transsion/version/update/NoticeConfig;
.end method

.method public final native component2()Z
.end method

.method public final native component3()Ljava/lang/String;
.end method

.method public final native component4()Ljava/lang/String;
.end method

.method public final native component5()J
.end method

.method public final native component6()Ljava/lang/String;
.end method

.method public final native component7()J
.end method

.method public final native component8()Ljava/lang/String;
.end method

.method public final native component9()J
.end method

.method public final copy(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 18

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "patchUrl"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "patchMd5"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installPkgUrl"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installPkgMd5"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateType"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStoreUrl"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webDownloadUrl"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/transsion/version/update/RemoteVersionInfo;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/transsion/version/update/RemoteVersionInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V

    return-object v17
.end method

.method public final native describeContents()I
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getAppStoreUrl()Ljava/lang/String;
.end method

.method public final native getForceUpdate()Z
.end method

.method public final native getHasUpdate()Z
.end method

.method public final native getInstallPkgMd5()Ljava/lang/String;
.end method

.method public final native getInstallPkgSize()J
.end method

.method public final native getInstallPkgUrl()Ljava/lang/String;
.end method

.method public final native getInstallPkgVersionCode()J
.end method

.method public final native getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;
.end method

.method public final native getPatchMd5()Ljava/lang/String;
.end method

.method public final native getPatchSize()J
.end method

.method public final native getPatchUrl()Ljava/lang/String;
.end method

.method public final native getUpdateType()Ljava/lang/String;
.end method

.method public final native getWebDownloadUrl()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public final native writeToParcel(Landroid/os/Parcel;I)V
.end method
