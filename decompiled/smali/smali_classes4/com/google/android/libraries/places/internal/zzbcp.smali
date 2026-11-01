.class public final Lcom/google/android/libraries/places/internal/zzbcp;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzb:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "cannot use OK status: %s"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcp;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbcp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcp;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbcp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object v0
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

    const-class v3, Lcom/google/android/libraries/places/internal/zzbcp;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbcp;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcp;->zzb:Ljava/lang/Object;

    return-object v0
.end method
