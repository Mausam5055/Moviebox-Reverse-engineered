.class final Lcom/google/android/libraries/places/internal/zzbht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbqq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhx;Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbht;->zza:Lcom/google/android/libraries/places/internal/zzbqq;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbht;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbht;->zzb:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhx;->zza(Lcom/google/android/libraries/places/internal/zzbhx;)Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbht;->zza:Lcom/google/android/libraries/places/internal/zzbqq;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqr;->zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V

    return-void
.end method
