.class final Lcom/google/android/gms/measurement/internal/zzmm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzae;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzae;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;ZLcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzc:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zze:Lcom/google/android/gms/measurement/internal/zzae;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zza:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzc:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zze:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzd:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmm;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V

    return-void
.end method
