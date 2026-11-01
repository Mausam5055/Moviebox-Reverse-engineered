.class final Lcom/google/android/libraries/places/internal/zzblo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/Runnable;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzblq;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblq;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblo;->zza:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblo;->zzb:Lcom/google/android/libraries/places/internal/zzblq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblo;->zza:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzblp;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblo;->zzb:Lcom/google/android/libraries/places/internal/zzblq;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzblp;-><init>(Lcom/google/android/libraries/places/internal/zzblq;)V

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method
