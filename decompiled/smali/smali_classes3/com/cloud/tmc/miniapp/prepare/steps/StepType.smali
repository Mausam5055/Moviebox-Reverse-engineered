.class public final enum Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/prepare/steps/StepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum CHECK_CONFIG:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum CHECK_CONFIG_VIRTUAL:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum COMMON_RES_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum COMMON_RES_INFO_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum COMMON_RES_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FILE_SCAN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FW_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FW_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FW_MOVE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FW_START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum FW_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum OFFLINE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum SETUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum WARMUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum WARMUP_AND_OFFSCREEN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public static final enum WARMUP_CHECK:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->SETUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->CHECK_CONFIG:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_MOVE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->OFFLINE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP_CHECK:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FILE_SCAN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->CHECK_CONFIG_VIRTUAL:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP_AND_OFFSCREEN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_INFO_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "SETUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->SETUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "CHECK_CONFIG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->CHECK_CONFIG:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FW_MOVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_MOVE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FW_UPDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FW_DOWNLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FW_LOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FW_START"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FW_START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "OFFLINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->OFFLINE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "LOAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "START"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->START:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "WARMUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "WARMUP_CHECK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP_CHECK:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "FILE_SCAN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->FILE_SCAN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "CHECK_CONFIG_VIRTUAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->CHECK_CONFIG_VIRTUAL:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "WARMUP_AND_OFFSCREEN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP_AND_OFFSCREEN:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "COMMON_RES_INFO_UPDATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_INFO_UPDATE:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "COMMON_RES_DOWNLOAD"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v1, "COMMON_RES_LOAD"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_LOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->$values()[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->$VALUES:[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->$VALUES:[Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method
