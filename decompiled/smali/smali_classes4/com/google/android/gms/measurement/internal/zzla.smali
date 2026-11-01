.class final Lcom/google/android/gms/measurement/internal/zzla;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zzb:J

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzje;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZLcom/google/android/gms/measurement/internal/zzje;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:J

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzc:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzd:Lcom/google/android/gms/measurement/internal/zzje;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:J

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzc:Z

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zze:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzd:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V

    return-void
.end method
