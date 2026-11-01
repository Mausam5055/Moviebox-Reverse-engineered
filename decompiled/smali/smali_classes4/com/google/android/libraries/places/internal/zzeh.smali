.class public final Lcom/google/android/libraries/places/internal/zzeh;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzei;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzei;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzei;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzeg;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/libraries/places/internal/zzeg;-><init>(JJ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzeh;->zza:Lcom/google/android/libraries/places/internal/zzei;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzdv;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/libraries/places/internal/zzeh;->zza:Lcom/google/android/libraries/places/internal/zzei;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzeh;->zzc:Lcom/google/android/libraries/places/internal/zzei;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzeg;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzeg;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzeh;->zzb:Lcom/google/android/libraries/places/internal/zzei;

    return-void
.end method
