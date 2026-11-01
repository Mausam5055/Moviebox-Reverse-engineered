.class public final Lcom/google/android/libraries/places/internal/zzqc;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzqg;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzqf;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/libraries/places/internal/zzqg;

.field private zzf:Lcom/google/android/libraries/places/internal/zzqf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzpz;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqc;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqa;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqa;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqc;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzqg;Lcom/google/android/libraries/places/internal/zzqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqc;->zze:Lcom/google/android/libraries/places/internal/zzqg;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zze:Lcom/google/android/libraries/places/internal/zzqg;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzqf;)Lcom/google/android/libraries/places/internal/zzqc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzqh;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzqe;-><init>(Lcom/google/android/libraries/places/internal/zzqc;Lcom/google/android/libraries/places/internal/zzqd;)V

    return-object v0
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzpr;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzpr;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzqc;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzpr;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be repeating"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzqc;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
