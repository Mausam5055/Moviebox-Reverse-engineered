.class final Lcom/google/android/libraries/places/internal/zzqe;
.super Lcom/google/android/libraries/places/internal/zzqh;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzqg;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzqf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzqc;Lcom/google/android/libraries/places/internal/zzqd;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzqh;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqe;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzqe;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzqc;->zzf(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzqc;->zze(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzqc;->zzc(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqe;->zzc:Lcom/google/android/libraries/places/internal/zzqg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzqc;->zzb(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqe;->zzd:Lcom/google/android/libraries/places/internal/zzqf;

    return-void
.end method
