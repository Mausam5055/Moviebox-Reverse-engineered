.class public final Lcom/google/android/libraries/places/internal/zzbvi;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvk;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbbi;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbvg;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbbo;

.field private zzf:Lcom/google/android/libraries/places/internal/zzaze;

.field private zzg:Lcom/google/android/libraries/places/internal/zzbbk;

.field private zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbvk;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzbbi;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zze:Lcom/google/android/libraries/places/internal/zzbbo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzg:Lcom/google/android/libraries/places/internal/zzbbk;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbvg;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbvh;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzbvh;-><init>(Lcom/google/android/libraries/places/internal/zzbvi;)V

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzbvg;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzd:Lcom/google/android/libraries/places/internal/zzbvg;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzf:Lcom/google/android/libraries/places/internal/zzaze;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzc:Lcom/google/android/libraries/places/internal/zzbbi;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzbvg;->zzp(Lcom/google/android/libraries/places/internal/zzbbb;)V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbvi;)Lcom/google/android/libraries/places/internal/zzbvg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzd:Lcom/google/android/libraries/places/internal/zzbvg;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbvi;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbvi;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzg:Lcom/google/android/libraries/places/internal/zzbbk;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbvi;Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzf:Lcom/google/android/libraries/places/internal/zzaze;

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbvi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    return p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbvj;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzf:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzg:Lcom/google/android/libraries/places/internal/zzbbk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzd:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbvg;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    if-eq v4, v5, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    const-string v4, ", deactivated"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", picker type: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lb: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzaze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzf:Lcom/google/android/libraries/places/internal/zzaze;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbbk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzg:Lcom/google/android/libraries/places/internal/zzbbk;

    return-object v0
.end method

.method protected final zzc()Lcom/google/android/libraries/places/internal/zzbbo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zze:Lcom/google/android/libraries/places/internal/zzbbo;

    return-object v0
.end method

.method protected final zzh()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzj(Lcom/google/android/libraries/places/internal/zzbvk;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvk;->zzk()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "deactivate"

    const-string v5, "Child balancer {0} deactivated"

    const-string v3, "io.grpc.util.MultiChildLoadBalancer$ChildLbState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzi(Lcom/google/android/libraries/places/internal/zzbbo;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    return-void
.end method

.method protected final zzj(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzc:Lcom/google/android/libraries/places/internal/zzbbi;

    return-void
.end method

.method protected final zzk()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzd:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbvb;->zze()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzf:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvk;->zzk()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Child balancer {0} deleted"

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzb:Ljava/lang/Object;

    const-string v3, "io.grpc.util.MultiChildLoadBalancer$ChildLbState"

    const-string v4, "shutdown"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbvi;->zzh:Z

    return v0
.end method
