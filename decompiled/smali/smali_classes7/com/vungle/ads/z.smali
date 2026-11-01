.class public final Lcom/vungle/ads/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/z$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/z$a;

.field public static final TAG:Ljava/lang/String; = "VungleAds"

.field public static final firstPartyData:Lez/b;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static initializer:Lcom/vungle/ads/internal/VungleInitializer;

.field private static vungleInternal:Lcom/vungle/ads/internal/VungleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    new-instance v0, Lcom/vungle/ads/internal/VungleInternal;

    invoke-direct {v0}, Lcom/vungle/ads/internal/VungleInternal;-><init>()V

    sput-object v0, Lcom/vungle/ads/z;->vungleInternal:Lcom/vungle/ads/internal/VungleInternal;

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer;

    invoke-direct {v0}, Lcom/vungle/ads/internal/VungleInitializer;-><init>()V

    sput-object v0, Lcom/vungle/ads/z;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    new-instance v0, Lez/b;

    invoke-direct {v0}, Lez/b;-><init>()V

    sput-object v0, Lcom/vungle/ads/z;->firstPartyData:Lez/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;
    .locals 1

    sget-object v0, Lcom/vungle/ads/z;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    return-object v0
.end method

.method public static final synthetic access$getVungleInternal$cp()Lcom/vungle/ads/internal/VungleInternal;
    .locals 1

    sget-object v0, Lcom/vungle/ads/z;->vungleInternal:Lcom/vungle/ads/internal/VungleInternal;

    return-object v0
.end method

.method public static final deInit(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->deInit(Landroid/content/Context;)V

    return-void
.end method

.method public static final getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/i;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/z$a;->getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/i;)V

    return-void
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/z$a;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V

    return-void
.end method

.method public static final isInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static final isInline(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->isInline(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/z$a;->setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V

    return-void
.end method
