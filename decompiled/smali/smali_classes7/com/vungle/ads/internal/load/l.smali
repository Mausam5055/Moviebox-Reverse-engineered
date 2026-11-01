.class public final Lcom/vungle/ads/internal/load/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/load/l$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/load/l$a;

.field public static final RTA_DEBUG_ENDPOINT:Ljava/lang/String; = "https://events.ads.vungle.com/rtadebugging"


# instance fields
.field private final apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/load/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/load/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/load/l;->Companion:Lcom/vungle/ads/internal/load/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/l;->apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-void
.end method


# virtual methods
.method public final reportAdMarkup(Ljava/lang/String;)V
    .locals 2

    const-string v0, "adm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/load/l;->apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    const-string v1, "https://events.ads.vungle.com/rtadebugging"

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->sendAdMarkup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
