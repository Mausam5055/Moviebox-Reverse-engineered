.class public final Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public crashThreshold:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crashThreshold"
    .end annotation
.end field

.field public crashWindowMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crashWindowMs"
    .end annotation
.end field

.field public defaultMaxRetry:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultMaxRetry"
    .end annotation
.end field

.field public defaultRetryDelayMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultRetryDelayMs"
    .end annotation
.end field

.field public enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field public httpConnectTimeoutMs:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "httpConnectTimeoutMs"
    .end annotation
.end field

.field public httpReadTimeoutMs:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "httpReadTimeoutMs"
    .end annotation
.end field

.field public logEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logEnabled"
    .end annotation
.end field

.field public logFileMaxSizeBytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logFileMaxSizeBytes"
    .end annotation
.end field

.field public logFileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logFileName"
    .end annotation
.end field

.field public maxPatchSizeBytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxPatchSizeBytes"
    .end annotation
.end field

.field public maxRetryDelayMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxRetryDelayMs"
    .end annotation
.end field

.field public patchCacheDir:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "patchCacheDir"
    .end annotation
.end field

.field public watchdogTimeoutMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watchdogTimeoutMs"
    .end annotation
.end field

.field public workManagerBackoffMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "workManagerBackoffMs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
