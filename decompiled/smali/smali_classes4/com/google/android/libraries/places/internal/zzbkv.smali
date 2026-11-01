.class final Lcom/google/android/libraries/places/internal/zzbkv;
.super Lcom/google/android/libraries/places/internal/zzazv;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbam;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzayk;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbcl;

.field private final zze:Lcom/google/android/libraries/places/internal/zzazj;

.field private zzf:Lcom/google/android/libraries/places/internal/zzayj;

.field private zzg:Lcom/google/android/libraries/places/internal/zzayo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbam;Lcom/google/android/libraries/places/internal/zzayk;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzazv;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zza:Lcom/google/android/libraries/places/internal/zzbam;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzb:Lcom/google/android/libraries/places/internal/zzayk;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-virtual {p5}, Lcom/google/android/libraries/places/internal/zzayj;->zzn()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lcom/google/android/libraries/places/internal/zzayj;->zzn()Ljava/util/concurrent/Executor;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p5, p3}, Lcom/google/android/libraries/places/internal/zzayj;->zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzf:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zze:Lcom/google/android/libraries/places/internal/zzazj;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbkv;)Lcom/google/android/libraries/places/internal/zzazj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zze:Lcom/google/android/libraries/places/internal/zzazj;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzg:Lcom/google/android/libraries/places/internal/zzayo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayo;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnr;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzf:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-direct {v0, v2, p2, v1}, Lcom/google/android/libraries/places/internal/zzbnr;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zza:Lcom/google/android/libraries/places/internal/zzbam;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbam;->zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbal;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzc:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbku;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbku;-><init>(Lcom/google/android/libraries/places/internal/zzbkv;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzh()Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzg:Lcom/google/android/libraries/places/internal/zzayo;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbal;->zzc()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbmj;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbmj;->zzb(Lcom/google/android/libraries/places/internal/zzbcl;)Lcom/google/android/libraries/places/internal/zzbmg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzf:Lcom/google/android/libraries/places/internal/zzayj;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzayj;->zze(Lcom/google/android/libraries/places/internal/zzayh;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzf:Lcom/google/android/libraries/places/internal/zzayj;

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzb:Lcom/google/android/libraries/places/internal/zzayk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzf:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzg:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayo;->zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method protected final zzf()Lcom/google/android/libraries/places/internal/zzayo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkv;->zzg:Lcom/google/android/libraries/places/internal/zzayo;

    return-object v0
.end method
