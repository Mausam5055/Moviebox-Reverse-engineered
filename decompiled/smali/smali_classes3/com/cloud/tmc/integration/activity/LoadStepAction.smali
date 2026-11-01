.class public final enum Lcom/cloud/tmc/integration/activity/LoadStepAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/activity/LoadStepAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/activity/LoadStepAction;",
        "",
        "(Ljava/lang/String;I)V",
        "STEP_START_LOADING",
        "STEP_UPDATE_APP_INFO",
        "STEP_FINISH_DOWNLOAD",
        "STEP_FINISH_DECOMPRESS",
        "STEP_FINISH_CREAT_RENDER",
        "STEP_FINISH_LOAD_RENDER",
        "STEP_FINISH_MINIAPP_LOAD",
        "com.cloud.tmc.integration"
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
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_FINISH_CREAT_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_FINISH_DECOMPRESS:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_FINISH_DOWNLOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_FINISH_LOAD_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

.field public static final enum STEP_UPDATE_APP_INFO:Lcom/cloud/tmc/integration/activity/LoadStepAction;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/integration/activity/LoadStepAction;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cloud/tmc/integration/activity/LoadStepAction;

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_UPDATE_APP_INFO:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DOWNLOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DECOMPRESS:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_CREAT_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_LOAD_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_START_LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_UPDATE_APP_INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_UPDATE_APP_INFO:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_FINISH_DOWNLOAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DOWNLOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_FINISH_DECOMPRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DECOMPRESS:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_FINISH_CREAT_RENDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_CREAT_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_FINISH_LOAD_RENDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_LOAD_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    const-string v1, "STEP_FINISH_MINIAPP_LOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/activity/LoadStepAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-static {}, Lcom/cloud/tmc/integration/activity/LoadStepAction;->$values()[Lcom/cloud/tmc/integration/activity/LoadStepAction;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->$VALUES:[Lcom/cloud/tmc/integration/activity/LoadStepAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/activity/LoadStepAction;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/activity/LoadStepAction;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/activity/LoadStepAction;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->$VALUES:[Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/activity/LoadStepAction;

    return-object v0
.end method
