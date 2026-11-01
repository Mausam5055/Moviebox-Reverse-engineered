.class final Lcom/google/android/libraries/places/internal/zzblc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblc;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblc;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzP(Lcom/google/android/libraries/places/internal/zzbma;)V

    return-void
.end method
