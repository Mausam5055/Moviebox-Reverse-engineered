.class final Lcom/google/android/libraries/places/internal/zzbid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbie;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzbid;->zza:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbid;->zzb:Lcom/google/android/libraries/places/internal/zzbie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbid;->zza:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbid;->zzb:Lcom/google/android/libraries/places/internal/zzbie;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzf:Z

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbih;->zze(Lcom/google/android/libraries/places/internal/zzbih;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbih;->zzf(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzna;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzna;->zzc()Lcom/google/android/libraries/places/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzna;->zzd()Lcom/google/android/libraries/places/internal/zzna;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbid;->zzb:Lcom/google/android/libraries/places/internal/zzbie;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbih;->zzl(Lcom/google/android/libraries/places/internal/zzbih;Z)V

    return-void
.end method
