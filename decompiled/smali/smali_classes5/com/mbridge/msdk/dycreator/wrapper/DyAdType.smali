.class public final enum Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field public static final enum INTERSTITIAL:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field public static final enum NATIVE:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field public static final enum REWARD:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field public static final enum SPLASH:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field private static final synthetic a:[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const-string v1, "SPLASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->SPLASH:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const-string v1, "BANNER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->BANNER:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->INTERSTITIAL:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const-string v1, "REWARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->REWARD:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const-string v1, "NATIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->NATIVE:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->a()[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->a:[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

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

.method private static synthetic a()[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->SPLASH:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->BANNER:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->INTERSTITIAL:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->REWARD:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->NATIVE:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->a:[Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object v0
.end method
