.class public final enum Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

.field public static final enum OFFLINE_DOWNLOAD:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

.field public static final enum USED:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;


# instance fields
.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->OFFLINE_DOWNLOAD:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->USED:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    const-string v1, "OFFLINE_DOWNLOAD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->OFFLINE_DOWNLOAD:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    const-string v1, "USED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->USED:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    invoke-static {}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->$values()[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

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

    iput p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->type:I

    return-void
.end method
