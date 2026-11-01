.class final Lcom/google/android/gms/measurement/internal/zznf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:J

.field zzb:J

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzng;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznf;->zzc:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zznf;->zza:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zznf;->zzb:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznf;->zzc:Lcom/google/android/gms/measurement/internal/zzng;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzni;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/google/android/gms/measurement/internal/zznf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method
