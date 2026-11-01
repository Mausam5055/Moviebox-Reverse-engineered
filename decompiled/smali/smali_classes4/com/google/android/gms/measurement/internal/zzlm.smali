.class final Lcom/google/android/gms/measurement/internal/zzlm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzlm;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V

    return-void
.end method
