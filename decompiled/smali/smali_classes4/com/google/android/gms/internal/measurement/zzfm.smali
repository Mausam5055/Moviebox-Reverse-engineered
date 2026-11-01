.class final Lcom/google/android/gms/internal/measurement/zzfm;
.super Lcom/google/android/gms/internal/measurement/zzdy$zza;


# instance fields
.field private final synthetic zzc:Landroid/app/Activity;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzdk;

.field private final synthetic zze:Lcom/google/android/gms/internal/measurement/zzdy$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdy$zzd;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzdk;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzd:Lcom/google/android/gms/internal/measurement/zzdk;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zze:Lcom/google/android/gms/internal/measurement/zzdy$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdy$zzd;->zza:Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdy;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zze:Lcom/google/android/gms/internal/measurement/zzdy$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzdy$zzd;->zza:Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzd:Lcom/google/android/gms/internal/measurement/zzdk;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzb:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdo;J)V

    return-void
.end method
