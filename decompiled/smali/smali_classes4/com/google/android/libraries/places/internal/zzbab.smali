.class public final Lcom/google/android/libraries/places/internal/zzbab;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/internal/zzbac;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbau;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbab;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbab;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbac;)Lcom/google/android/libraries/places/internal/zzbab;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbau;)Lcom/google/android/libraries/places/internal/zzbab;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzd:Lcom/google/android/libraries/places/internal/zzbau;

    return-object p0
.end method

.method public final zzd(J)Lcom/google/android/libraries/places/internal/zzbab;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzc:Ljava/lang/Long;

    return-object p0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbae;
    .locals 10

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbab;->zza:Ljava/lang/String;

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    const-string v1, "severity"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzc:Ljava/lang/Long;

    const-string v1, "timestampNanos"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbae;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbab;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbab;->zzd:Lcom/google/android/libraries/places/internal/zzbau;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/libraries/places/internal/zzbae;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbac;JLcom/google/android/libraries/places/internal/zzbau;Lcom/google/android/libraries/places/internal/zzbau;Lcom/google/android/libraries/places/internal/zzbad;)V

    return-object v0
.end method
