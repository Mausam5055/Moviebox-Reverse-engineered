.class final Lcom/google/android/libraries/places/internal/zzblw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzblx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblw;->zza:Lcom/google/android/libraries/places/internal/zzblx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblw;->zza:Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbma;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzF(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method
