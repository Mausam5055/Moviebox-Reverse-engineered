.class public final enum Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;


# instance fields
.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_DELETE_USED_APP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_DELETE_OFFLINEDOWNLOAD_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_BRIDGEAPI"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_PINFORLATER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_OPEN_APP"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "SCAN_OFFLINEDOWNLOAD_APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    invoke-static {}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

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

    iput p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    return-void
.end method
