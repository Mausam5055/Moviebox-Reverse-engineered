.class public interface abstract Lcom/vungle/ads/internal/platform/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/platform/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/platform/d$a;

.field public static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/platform/d$a;->$$INSTANCE:Lcom/vungle/ads/internal/platform/d$a;

    sput-object v0, Lcom/vungle/ads/internal/platform/d;->Companion:Lcom/vungle/ads/internal/platform/d$a;

    return-void
.end method


# virtual methods
.method public abstract getAdvertisingInfo()Lcom/vungle/ads/internal/model/a;
.end method

.method public abstract getAppSetId()Ljava/lang/String;
.end method

.method public abstract getAppSetIdScope()Ljava/lang/Integer;
.end method

.method public abstract getBuildTime()J
.end method

.method public abstract getCarrierName()Ljava/lang/String;
.end method

.method public abstract getLastBootTime()J
.end method

.method public abstract getOSInstallationTime()J
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getUserAgentLazy(Landroidx/core/util/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getVolumeLevel()F
.end method

.method public abstract isBatterySaverEnabled()Z
.end method

.method public abstract isSdCardPresent()Z
.end method

.method public abstract isSideLoaded()Z
.end method

.method public abstract isSilentModeEnabled()Z
.end method

.method public abstract isSoundEnabled()Z
.end method
