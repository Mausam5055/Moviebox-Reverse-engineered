.class final Lcom/google/android/gms/measurement/zza;
.super Lcom/google/android/gms/measurement/AppMeasurement$zza;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzlb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/AppMeasurement$zza;-><init>(Lcom/google/android/gms/measurement/zzc;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zza()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Lcom/google/android/gms/measurement/internal/zzjl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Lcom/google/android/gms/measurement/internal/zzjm;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzb()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zzb(Lcom/google/android/gms/measurement/internal/zzjl;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzlb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlb;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzlb;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzlb;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzlb;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzlb;->zzi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zza:Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzlb;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
