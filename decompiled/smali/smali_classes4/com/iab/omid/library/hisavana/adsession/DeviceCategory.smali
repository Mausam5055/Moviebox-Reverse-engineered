.class public final enum Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

.field public static final enum CTV:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

.field public static final enum MOBILE:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

.field public static final enum OTHER:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;


# instance fields
.field private final deviceCategory:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->CTV:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->MOBILE:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->OTHER:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v1, 0x0

    const-string v2, "ctv"

    const-string v3, "CTV"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->CTV:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v1, 0x1

    const-string v2, "mobile"

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->MOBILE:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    const/4 v1, 0x2

    const-string v2, "other"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->OTHER:Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    invoke-static {}, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->$values()[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->$VALUES:[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->deviceCategory:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;
    .locals 1

    const-class v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->$VALUES:[Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    invoke-virtual {v0}, [Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->deviceCategory:Ljava/lang/String;

    return-object v0
.end method
