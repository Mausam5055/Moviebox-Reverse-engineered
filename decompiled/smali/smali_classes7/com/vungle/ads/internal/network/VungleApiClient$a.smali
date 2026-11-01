.class public final Lcom/vungle/ads/internal/network/VungleApiClient$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/VungleApiClient$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBASE_URL$vungle_ads_release()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/vungle/ads/internal/network/VungleApiClient;->access$getBASE_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reset$vungle_ads_release()V
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/k;->reset()V

    return-void
.end method
