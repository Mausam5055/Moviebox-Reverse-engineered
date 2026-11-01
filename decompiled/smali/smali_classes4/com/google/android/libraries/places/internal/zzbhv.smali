.class final Lcom/google/android/libraries/places/internal/zzbhv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhx;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhx;->zza(Lcom/google/android/libraries/places/internal/zzbhx;)Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhv;->zza:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbft;->zze(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
