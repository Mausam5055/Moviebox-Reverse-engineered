.class public final Lcom/google/android/libraries/places/internal/zzbfv;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbaa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbfv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbfv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzaye;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    return-object p0
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbaa;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    return-object v0
.end method
