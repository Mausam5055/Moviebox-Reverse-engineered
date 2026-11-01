.class public final enum Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/privacy/PrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceIdAllowed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;",
        "",
        "(Ljava/lang/String;I)V",
        "ALLOW_ID",
        "DISABLE_ID",
        "FALLBACK",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

.field public static final enum ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

.field public static final enum DISABLE_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

.field public static final enum FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->DISABLE_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const-string v1, "ALLOW_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const-string v1, "DISABLE_ID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->DISABLE_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    const-string v1, "FALLBACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->$values()[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->$VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;
    .locals 1

    const-class v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->$VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    return-object v0
.end method
