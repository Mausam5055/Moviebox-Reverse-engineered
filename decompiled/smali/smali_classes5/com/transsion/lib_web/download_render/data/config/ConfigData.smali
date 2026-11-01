.class public final Lcom/transsion/lib_web/download_render/data/config/ConfigData;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/lib_web/download_render/data/config/ConfigData;",
        "",
        "maxCacheSize",
        "",
        "maxUsedTime",
        "maxUpgradeTime",
        "htmlUseRemote",
        "",
        "requestMinInterval",
        "<init>",
        "(JJJZJ)V",
        "getMaxCacheSize",
        "()J",
        "getMaxUsedTime",
        "getMaxUpgradeTime",
        "getHtmlUseRemote",
        "()Z",
        "getRequestMinInterval",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final htmlUseRemote:Z

.field private final maxCacheSize:J

.field private final maxUpgradeTime:J

.field private final maxUsedTime:J

.field private final requestMinInterval:J


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/transsion/lib_web/download_render/data/config/ConfigData;-><init>(JJJZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxCacheSize:J

    iput-wide p3, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxUsedTime:J

    iput-wide p5, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxUpgradeTime:J

    iput-boolean p7, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->htmlUseRemote:Z

    iput-wide p8, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->requestMinInterval:J

    return-void
.end method

.method public synthetic constructor <init>(JJJZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x6400000

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    const-wide v3, 0x9a7ec800L

    if-eqz v2, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    move-wide v5, p3

    :goto_1
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-wide v3, p5

    :goto_2
    and-int/lit8 v2, p10, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    move/from16 v2, p7

    :goto_3
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_4

    const-wide/32 v7, 0x36ee80

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p8

    :goto_4
    move-object p1, p0

    move-wide p2, v0

    move-wide p4, v5

    move-wide p6, v3

    move/from16 p8, v2

    move-wide/from16 p9, v7

    invoke-direct/range {p1 .. p10}, Lcom/transsion/lib_web/download_render/data/config/ConfigData;-><init>(JJJZJ)V

    return-void
.end method


# virtual methods
.method public final getHtmlUseRemote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->htmlUseRemote:Z

    return v0
.end method

.method public final getMaxCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxCacheSize:J

    return-wide v0
.end method

.method public final getMaxUpgradeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxUpgradeTime:J

    return-wide v0
.end method

.method public final getMaxUsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->maxUsedTime:J

    return-wide v0
.end method

.method public final getRequestMinInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->requestMinInterval:J

    return-wide v0
.end method
