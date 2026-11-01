.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;",
        "",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;",
        "objectId",
        "",
        "objectNameEn",
        "objectNameZh",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getObjectId",
        "()Ljava/lang/String;",
        "getObjectNameEn",
        "getObjectNameZh",
        "START_UP",
        "UPDATE_REQUEST",
        "CARD_EXPOSURE",
        "GO_TO_MY_BYTEAPP",
        "LATEST_USE_EXPOSURE",
        "LATEST_USE_CLICK",
        "RECOMMEND_EXPOSURE",
        "RECOMMEND_CLICK",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;


# instance fields
.field private final objectId:Ljava/lang/String;

.field private final objectNameEn:Ljava/lang/String;

.field private final objectNameZh:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v4, "startup"

    const-string v5, "\u5361\u7247\u542f\u52a8"

    const-string v1, "START_UP"

    const/4 v2, 0x0

    const-string v3, "800"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v11, "update_request"

    const-string v12, "\u66f4\u65b0\u8bf7\u6c42"

    const-string v8, "UPDATE_REQUEST"

    const/4 v9, 0x1

    const-string v10, "801"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v5, "card_exposure"

    const-string v6, "\u5361\u7247\u66dd\u5149"

    const-string v2, "CARD_EXPOSURE"

    const/4 v3, 0x2

    const-string v4, "802"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v11, "go_to_my_byteapp"

    const-string v12, "\u524d\u5f80 My ByteApp"

    const-string v8, "GO_TO_MY_BYTEAPP"

    const/4 v9, 0x3

    const-string v10, "803"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v5, "latest_use_exposure"

    const-string v6, "\u6700\u8fd1\u4f7f\u7528\u533a\u57df\u66dd\u5149"

    const-string v2, "LATEST_USE_EXPOSURE"

    const/4 v3, 0x4

    const-string v4, "804"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v11, "latest_use_click"

    const-string v12, "\u6700\u8fd1\u4f7f\u7528\u5c0f\u7a0b\u5e8f\u70b9\u51fb"

    const-string v8, "LATEST_USE_CLICK"

    const/4 v9, 0x5

    const-string v10, "805"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v5, "recommend_exposure"

    const-string v6, "\u63a8\u8350\u533a\u57df\u66dd\u5149"

    const-string v2, "RECOMMEND_EXPOSURE"

    const/4 v3, 0x6

    const-string v4, "806"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    const-string v11, "recommend_click"

    const-string v12, "\u63a8\u8350\u5c0f\u7a0b\u5e8f\u70b9\u51fb"

    const-string v8, "RECOMMEND_CLICK"

    const/4 v9, 0x7

    const-string v10, "807"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectId:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameEn:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameZh:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    return-object v0
.end method


# virtual methods
.method public final getObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectNameEn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameEn:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectNameZh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameZh:Ljava/lang/String;

    return-object v0
.end method
