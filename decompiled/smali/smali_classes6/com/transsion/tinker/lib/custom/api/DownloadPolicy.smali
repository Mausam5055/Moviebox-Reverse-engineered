.class public final enum Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

.field public static final enum ANY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

.field public static final enum WIFI_ONLY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;


# direct methods
.method private static synthetic $values()[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->ANY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->WIFI_ONLY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->ANY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    const-string v1, "WIFI_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->WIFI_ONLY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    invoke-static {}, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->$values()[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    move-result-object v0

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->$VALUES:[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
    .locals 1

    const-class v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
    .locals 1

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->$VALUES:[Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    invoke-virtual {v0}, [Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    return-object v0
.end method
