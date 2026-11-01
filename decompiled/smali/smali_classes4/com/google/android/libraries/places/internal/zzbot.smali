.class final Lcom/google/android/libraries/places/internal/zzbot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbot;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbot;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzac(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzy(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqr;->zzg()V

    :cond_0
    return-void
.end method
