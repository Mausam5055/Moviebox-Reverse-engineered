.class public final enum Lcom/bytedance/adsdk/ugeno/core/Ym;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/core/Ym;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dq:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Fmk:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Jcg:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum RiZ:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TEQ:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TzV:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Ym:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Zq:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum aa:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum dNu:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field private static final synthetic ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sU:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sef:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum uA:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum uvD:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/core/Ym;


# instance fields
.field private dx:Ljava/lang/String;

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/Ym;->Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const/4 v3, 0x1

    const-string v4, "onTap"

    const-string v5, "TAP_EVENT"

    invoke-direct {v1, v5, v3, v4, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/core/Ym;->sP:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v4, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const/4 v5, 0x2

    const-string v6, "onLongTap"

    const-string v7, "LONG_TAP_EVENT"

    invoke-direct {v4, v7, v5, v6, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/core/Ym;->TKC:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v6, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const/4 v7, 0x3

    const-string v8, "onShake"

    const-string v9, "SHAKE_EVENT"

    invoke-direct {v6, v9, v7, v8, v7}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/bytedance/adsdk/ugeno/core/Ym;->EjP:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v8, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v9, "TWIST_EVENT"

    const/4 v10, 0x4

    const-string v11, "onTwist"

    const/16 v12, 0x12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/bytedance/adsdk/ugeno/core/Ym;->HiB:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v9, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v11, "onSlide"

    const-string v13, "SLIDE_EVENT"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11, v10}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/bytedance/adsdk/ugeno/core/Ym;->vS:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v11, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v13, "onExposure"

    const-string v15, "EXPOSURE_EVENT"

    const/4 v10, 0x6

    invoke-direct {v11, v15, v10, v13, v14}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/bytedance/adsdk/ugeno/core/Ym;->Jcg:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v13, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onScroll"

    const-string v14, "SCROLL_EVENT"

    const/4 v7, 0x7

    invoke-direct {v13, v14, v7, v15, v10}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/bytedance/adsdk/ugeno/core/Ym;->Dq:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v14, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onPullToRefresh"

    const-string v10, "PULL_TO_REFRESH_EVENT"

    const/16 v5, 0x8

    invoke-direct {v14, v10, v5, v15, v7}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/bytedance/adsdk/ugeno/core/Ym;->uA:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v10, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onLoadMore"

    const-string v7, "LOAD_MORE_EVENT"

    const/16 v3, 0x9

    invoke-direct {v10, v7, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/bytedance/adsdk/ugeno/core/Ym;->TEQ:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v7, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onTimer"

    const-string v5, "TIMER"

    const/16 v2, 0xa

    invoke-direct {v7, v5, v2, v15, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/bytedance/adsdk/ugeno/core/Ym;->Ym:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v5, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onDelay"

    const-string v3, "DELAY"

    const/16 v12, 0xb

    invoke-direct {v5, v3, v12, v15, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/core/Ym;->aa:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onAnimation"

    const-string v2, "ANIMATION"

    move-object/from16 v16, v5

    const/16 v5, 0xc

    invoke-direct {v3, v2, v5, v15, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->Fmk:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onVideoProgress"

    const-string v12, "VIDEO_PROGRESS"

    move-object/from16 v17, v3

    const/16 v3, 0xd

    invoke-direct {v2, v12, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->sef:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v12, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onVideoPause"

    const-string v5, "VIDEO_PAUSE"

    move-object/from16 v18, v2

    const/16 v2, 0xe

    invoke-direct {v12, v5, v2, v15, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/bytedance/adsdk/ugeno/core/Ym;->Zq:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v5, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onVideoResume"

    const-string v3, "VIDEO_RESUME"

    move-object/from16 v19, v12

    const/16 v12, 0xf

    invoke-direct {v5, v3, v12, v15, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/core/Ym;->uvD:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onVideoFinish"

    const-string v2, "VIDEO_FINISH"

    move-object/from16 v20, v5

    const/16 v5, 0x10

    invoke-direct {v3, v2, v5, v15, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->dNu:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "onVideoPlay"

    const-string v12, "VIDEO_PLAY"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    invoke-direct {v2, v12, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->TzV:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v12, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v15, "DOWN_EVENT"

    const-string v5, "onDown"

    move-object/from16 v22, v2

    const/16 v2, 0x12

    invoke-direct {v12, v15, v2, v5, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/bytedance/adsdk/ugeno/core/Ym;->RiZ:Lcom/bytedance/adsdk/ugeno/core/Ym;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    const-string v5, "onRenderSuccess"

    const/16 v15, 0x16

    const-string v3, "RENDER_SUCCESS"

    move-object/from16 v23, v12

    const/16 v12, 0x13

    invoke-direct {v2, v3, v12, v5, v15}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->sU:Lcom/bytedance/adsdk/ugeno/core/Ym;

    const/16 v3, 0x14

    new-array v3, v3, [Lcom/bytedance/adsdk/ugeno/core/Ym;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v10, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    aput-object v2, v3, v12

    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->dx:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->zR:I

    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 5

    invoke-static {}, Lcom/bytedance/adsdk/ugeno/core/Ym;->values()[Lcom/bytedance/adsdk/ugeno/core/Ym;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->dx:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/core/Ym;->ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/core/Ym;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/core/Ym;

    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->zR:I

    return v0
.end method
