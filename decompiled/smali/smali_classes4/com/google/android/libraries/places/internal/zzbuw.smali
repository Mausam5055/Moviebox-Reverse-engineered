.class final Lcom/google/android/libraries/places/internal/zzbuw;
.super Lcom/google/android/libraries/places/internal/zzbuu;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbus;

.field private zzb:Ljava/lang/Object;

.field private zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbuu;-><init>(Lcom/google/android/libraries/places/internal/zzbut;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zza:Lcom/google/android/libraries/places/internal/zzbus;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzc:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zza:Lcom/google/android/libraries/places/internal/zzbus;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "No value received for unary call"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v1, v0, p2}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbus;->zzm(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zza:Lcom/google/android/libraries/places/internal/zzbus;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbus;->zzl(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zza:Lcom/google/android/libraries/places/internal/zzbus;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbus;->zzm(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzc:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzb:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zzc:Z

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0
.end method

.method final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuw;->zza:Lcom/google/android/libraries/places/internal/zzbus;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbus;->zzn(Lcom/google/android/libraries/places/internal/zzbus;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayo;->zzc(I)V

    return-void
.end method
