.class final Lcom/google/android/gms/measurement/internal/zzll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzll;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzll;->zze:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V

    return-void
.end method
