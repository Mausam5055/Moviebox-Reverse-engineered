.class public final enum Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public static final enum TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;


# instance fields
.field public final isDragging:Z

.field public final isFinishing:Z

.field public final isFooter:Z

.field public final isHeader:Z

.field public final isOpening:Z

.field public final isReleaseToOpening:Z

.field public final isTwoLevel:Z


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "PULL_DOWN_TO_REFRESH"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v9, 0x0

    const-string v2, "PULL_UP_TO_LOAD"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-string v11, "PULL_DOWN_CANCELED"

    const/4 v12, 0x3

    const/4 v14, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-string v2, "PULL_UP_CANCELED"

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v18, 0x1

    const-string v11, "RELEASE_TO_REFRESH"

    const/4 v12, 0x5

    const/4 v14, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v9, 0x1

    const-string v2, "RELEASE_TO_LOAD"

    const/4 v3, 0x6

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v17, 0x1

    const-string v11, "RELEASE_TO_TWO_LEVEL"

    const/4 v12, 0x7

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v2, "TWO_LEVEL_RELEASED"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "REFRESH_RELEASED"

    const/16 v12, 0x9

    const/4 v14, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v8, 0x0

    const-string v2, "LOAD_RELEASED"

    const/16 v3, 0xa

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-string v11, "REFRESHING"

    const/16 v12, 0xb

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-string v2, "LOADING"

    const/16 v3, 0xc

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v17, 0x1

    const-string v11, "TwoLevel"

    const/16 v12, 0xd

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-string v2, "REFRESH_FINISH"

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/16 v17, 0x0

    const-string v11, "LOAD_FINISH"

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v8, 0x1

    const-string v2, "TwoLevelFinish"

    const/16 v3, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    move p1, p2

    :cond_1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isReleaseToOpening:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->$VALUES:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {v0}, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    return-object v0
.end method


# virtual methods
.method public toFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isTwoLevel:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->values()[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method
