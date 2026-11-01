.class public final Lcom/google/android/libraries/places/internal/zzbnr;
.super Lcom/google/android/libraries/places/internal/zzbbf;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzayj;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcf;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbcl;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbf;-><init>()V

    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    const-string p1, "callOptions"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/libraries/places/internal/zzbnr;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbnr;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " headers="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzayj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbcf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    return-object v0
.end method
