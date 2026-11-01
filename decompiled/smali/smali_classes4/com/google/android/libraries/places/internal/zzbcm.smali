.class public final Lcom/google/android/libraries/places/internal/zzbcm;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Lcom/google/android/libraries/places/internal/zzbde;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbdw;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbcu;

.field private zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzf:Lcom/google/android/libraries/places/internal/zzaym;

.field private zzg:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    const/16 p1, 0x1bb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzg:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbde;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    return-object p0
.end method

.method public final zze(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbcu;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzbdw;)Lcom/google/android/libraries/places/internal/zzbcm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/libraries/places/internal/zzbco;
    .locals 11

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbco;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzb:Lcom/google/android/libraries/places/internal/zzbde;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzd:Lcom/google/android/libraries/places/internal/zzbcu;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzf:Lcom/google/android/libraries/places/internal/zzaym;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbcm;->zzg:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzbco;-><init>(Ljava/lang/Integer;Lcom/google/android/libraries/places/internal/zzbde;Lcom/google/android/libraries/places/internal/zzbdw;Lcom/google/android/libraries/places/internal/zzbcu;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzaym;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbcn;)V

    return-object v10
.end method
