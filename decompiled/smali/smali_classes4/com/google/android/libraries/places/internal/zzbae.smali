.class public final Lcom/google/android/libraries/places/internal/zzbae;
.super Ljava/lang/Object;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/libraries/places/internal/zzbac;

.field public final zzc:J

.field public final zzd:Lcom/google/android/libraries/places/internal/zzbau;

.field public final zze:Lcom/google/android/libraries/places/internal/zzbau;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbac;JLcom/google/android/libraries/places/internal/zzbau;Lcom/google/android/libraries/places/internal/zzbau;Lcom/google/android/libraries/places/internal/zzbad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    const-string p1, "severity"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzc:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzd:Lcom/google/android/libraries/places/internal/zzbau;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbae;->zze:Lcom/google/android/libraries/places/internal/zzbau;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbae;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbae;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzc:J

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/zzbae;->zzc:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbae;->zze:Lcom/google/android/libraries/places/internal/zzbau;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbae;->zze:Lcom/google/android/libraries/places/internal/zzbau;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbae;->zze:Lcom/google/android/libraries/places/internal/zzbau;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "severity"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "timestampNanos"

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "channelRef"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "subchannelRef"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbae;->zze:Lcom/google/android/libraries/places/internal/zzbau;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
