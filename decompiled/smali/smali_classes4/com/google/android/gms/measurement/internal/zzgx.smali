.class final Lcom/google/android/gms/measurement/internal/zzgx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzgy;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Z)V

    return-void
.end method
