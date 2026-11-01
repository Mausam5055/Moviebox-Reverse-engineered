.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(JLjava/lang/Exception;)V

    return-void
.end method
