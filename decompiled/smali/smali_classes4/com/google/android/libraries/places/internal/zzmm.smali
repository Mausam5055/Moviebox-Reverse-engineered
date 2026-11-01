.class public final Lcom/google/android/libraries/places/internal/zzmm;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzmk;

.field private zzc:Lcom/google/android/libraries/places/internal/zzmk;

.field private zzd:Z


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/libraries/places/internal/zzmk;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzmk;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzb:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzd:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmm;->zza:Ljava/lang/String;

    return-void
.end method

.method private final zzh()Lcom/google/android/libraries/places/internal/zzmk;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmk;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmk;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object v0, v1, Lcom/google/android/libraries/places/internal/zzmk;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    return-object v0
.end method

.method private final zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzmj;-><init>(Lcom/google/android/libraries/places/internal/zzmi;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object v0, v1, Lcom/google/android/libraries/places/internal/zzmk;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    iput-object p2, v0, Lcom/google/android/libraries/places/internal/zzmk;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/libraries/places/internal/zzmk;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzd:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzmm;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzb:Lcom/google/android/libraries/places/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzmk;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    const-string v4, ""

    :goto_0
    if-eqz v3, :cond_4

    instance-of v5, v3, Lcom/google/android/libraries/places/internal/zzmj;

    iget-object v6, v3, Lcom/google/android/libraries/places/internal/zzmk;->zzb:Ljava/lang/Object;

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzmk;->zza:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, ", "

    :cond_3
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzmk;->zzc:Lcom/google/android/libraries/places/internal/zzmk;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;D)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 0

    const-string p1, "backoffMultiplier"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmm;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmm;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmm;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzmm;->zzh()Lcom/google/android/libraries/places/internal/zzmk;

    move-result-object v0

    iput-object p2, v0, Lcom/google/android/libraries/places/internal/zzmk;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/libraries/places/internal/zzmk;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmm;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzmm;->zzh()Lcom/google/android/libraries/places/internal/zzmk;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/libraries/places/internal/zzmk;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzmm;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzmm;->zzd:Z

    return-object p0
.end method
