.class public final Lcom/google/android/libraries/places/internal/zzpo;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzg:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzh:Lcom/google/android/libraries/places/internal/zzpr;

.field public static final zzi:Lcom/google/android/libraries/places/internal/zzpr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cause"

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zza:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "ratelimit_count"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzb:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "sampling_count"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzc:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "ratelimit_period"

    const-class v2, Lcom/google/android/libraries/places/internal/zzpl;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzd:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "skipped"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zze:Lcom/google/android/libraries/places/internal/zzpr;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpm;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "group_by"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzpm;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzf:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "forced"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzg:Lcom/google/android/libraries/places/internal/zzpr;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpn;

    const-class v1, Lcom/google/android/libraries/places/internal/zzrp;

    const/4 v2, 0x0

    const-string v3, "tags"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzh:Lcom/google/android/libraries/places/internal/zzpr;

    const-string v0, "stack_size"

    const-class v1, Lcom/google/android/libraries/places/internal/zzps;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzpr;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzpr;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpo;->zzi:Lcom/google/android/libraries/places/internal/zzpr;

    return-void
.end method
