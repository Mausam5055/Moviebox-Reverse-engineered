.class final Lcom/google/android/libraries/places/internal/zzqz;
.super Lcom/google/android/libraries/places/internal/zzqp;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzpu;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzqh;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzpu;ZZ)V
    .locals 0

    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrb;->zzd()Ljava/util/Set;

    move-result-object p3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrb;->zzb()Lcom/google/android/libraries/places/internal/zzqh;

    move-result-object p5

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzqp;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzqz;->zza:Lcom/google/android/libraries/places/internal/zzpu;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqz;->zzb:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzqz;->zzc:Ljava/util/Set;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzqz;->zzd:Lcom/google/android/libraries/places/internal/zzqh;

    return-void
.end method
