.class public final Lcom/vungle/ads/internal/network/k;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/network/k;

.field private static appId:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static headerUa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/network/k;

    invoke-direct {v0}, Lcom/vungle/ads/internal/network/k;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    invoke-direct {v0}, Lcom/vungle/ads/internal/network/k;->defaultHeader()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/k;->headerUa:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultHeader()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleAmazon/"

    goto :goto_0

    :cond_0
    const-string v1, "VungleDroid/"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "7.5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/k;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/k;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderUa()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/k;->headerUa:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/k;->defaultHeader()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/k;->headerUa:Ljava/lang/String;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/vungle/ads/internal/network/k;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/vungle/ads/internal/network/k;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setHeaderUa(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/vungle/ads/internal/network/k;->headerUa:Ljava/lang/String;

    return-void
.end method
