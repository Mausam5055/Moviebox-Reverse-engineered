.class final Lcom/google/android/gms/internal/measurement/zzcd;
.super Lcom/google/android/gms/internal/measurement/zzcl;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/measurement/zzco;

.field private zzc:Lcom/google/android/gms/internal/measurement/zzcn;

.field private zzd:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzcn;)Lcom/google/android/gms/internal/measurement/zzcl;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzc:Lcom/google/android/gms/internal/measurement/zzcn;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null filePurpose"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzco;)Lcom/google/android/gms/internal/measurement/zzcl;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null fileChecks"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/measurement/zzcl;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzd:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzd:B

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzcm;
    .locals 10

    iget-byte v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzd:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzc:Lcom/google/android/gms/internal/measurement/zzcn;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzc:Lcom/google/android/gms/internal/measurement/zzcn;

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzco;Lcom/google/android/gms/internal/measurement/zzcc;Lcom/google/android/gms/internal/measurement/zzcb;Lcom/google/android/gms/internal/measurement/zzcn;Lcom/google/android/gms/internal/measurement/zzcg;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, " fileOwner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v2, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzd:B

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    const-string v1, " hasDifferentDmaOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    if-nez v1, :cond_4

    const-string v1, " fileChecks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzc:Lcom/google/android/gms/internal/measurement/zzcn;

    if-nez v1, :cond_5

    const-string v1, " filePurpose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
