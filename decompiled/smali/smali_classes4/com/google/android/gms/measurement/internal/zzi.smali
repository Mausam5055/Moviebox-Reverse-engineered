.class final Lcom/google/android/gms/measurement/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzdo;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzdo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzi;->zza:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzi;->zza:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/internal/measurement/zzdo;)V

    return-void
.end method
