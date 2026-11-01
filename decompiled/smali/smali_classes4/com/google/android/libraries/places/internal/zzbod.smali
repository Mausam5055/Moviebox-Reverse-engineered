.class final Lcom/google/android/libraries/places/internal/zzbod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzboe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbod;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbod;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzd(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbob;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/libraries/places/internal/zzbob;-><init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboa;)V

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method
