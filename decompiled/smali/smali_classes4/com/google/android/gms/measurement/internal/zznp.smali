.class final Lcom/google/android/gms/measurement/internal/zznp;
.super Lcom/google/android/gms/measurement/internal/zzav;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznq;Lcom/google/android/gms/measurement/internal/zzjc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzjc;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    return-void
.end method
