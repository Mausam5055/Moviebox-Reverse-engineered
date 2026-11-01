.class final Lcom/google/android/libraries/places/internal/zzbla;
.super Lcom/google/android/libraries/places/internal/zzbji;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbkz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbla;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbji;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbla;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzV()V

    return-void
.end method

.method protected final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbla;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbla;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzS(Lcom/google/android/libraries/places/internal/zzbma;)V

    return-void
.end method
