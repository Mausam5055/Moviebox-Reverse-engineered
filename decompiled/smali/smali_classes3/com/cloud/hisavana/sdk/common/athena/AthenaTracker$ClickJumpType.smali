.class public final enum Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickJumpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;


# instance fields
.field private final rawValue:I


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const-string v1, "PS_FULL_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const-string v1, "PS_HALF_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const-string v1, "GP"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const-string v1, "PULL_LIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    const-string v1, "OTHER"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->rawValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    return-object v0
.end method


# virtual methods
.method public rawValue()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->rawValue:I

    return v0
.end method
