.class public final Lcom/google/android/libraries/places/internal/zzbco;
.super Ljava/lang/Object;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbde;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbdw;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbcu;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzaym;

.field private final zzg:Ljava/util/concurrent/Executor;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Integer;Lcom/google/android/libraries/places/internal/zzbde;Lcom/google/android/libraries/places/internal/zzbdw;Lcom/google/android/libraries/places/internal/zzbcu;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzaym;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p8, "defaultPort not set"

    invoke-static {p1, p8}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/16 p1, 0x1bb

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbco;->zza:I

    const-string p1, "proxyDetector not set"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    const-string p1, "syncContext not set"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    const-string p1, "serviceConfigParser not set"

    invoke-static {p4, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbco;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzg:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbcm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "defaultPort"

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "proxyDetector"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "syncContext"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "serviceConfigParser"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "scheduledExecutorService"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "channelLogger"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "executor"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzg:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "overrideAuthority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zza:I

    return v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbcu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzbde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object v0
.end method

.method public final zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zzg:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzg()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbco;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScheduledExecutorService not set in Builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
