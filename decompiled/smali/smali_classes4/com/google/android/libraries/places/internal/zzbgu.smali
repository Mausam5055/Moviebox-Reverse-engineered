.class final Lcom/google/android/libraries/places/internal/zzbgu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgy;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgu;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgu;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgu;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgy;->zze(Lcom/google/android/libraries/places/internal/zzbgy;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgu;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayn;->zzb(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
