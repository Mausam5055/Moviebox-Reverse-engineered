.class final Lcom/google/android/gms/measurement/internal/zzmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzmq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzgb;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmt;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzc(Lcom/google/android/gms/measurement/internal/zzls;)V

    return-void
.end method
