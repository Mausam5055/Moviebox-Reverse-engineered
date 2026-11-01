.class public final enum Lcom/mbridge/msdk/foundation/download/DownloadStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/foundation/download/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum COMPLETED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum DELAY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum FAILED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum PAUSED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum QUEUED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum RETRY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum RUNNING:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

.field public static final enum UNKNOWN:Lcom/mbridge/msdk/foundation/download/DownloadStatus;


# direct methods
.method private static synthetic $values()[Lcom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->QUEUED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->RUNNING:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->PAUSED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->COMPLETED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->FAILED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->DELAY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->UNKNOWN:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "QUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->QUEUED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->RUNNING:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->PAUSED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->COMPLETED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "CANCELLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->FAILED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "DELAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->DELAY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "RETRY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->UNKNOWN:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->$values()[Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->$VALUES:[Lcom/mbridge/msdk/foundation/download/DownloadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->$VALUES:[Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/foundation/download/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    return-object v0
.end method
