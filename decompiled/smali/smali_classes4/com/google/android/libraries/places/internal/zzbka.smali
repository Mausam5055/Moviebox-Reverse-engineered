.class final Lcom/google/android/libraries/places/internal/zzbka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbkb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbka;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbka;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzp(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/Collection;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbka;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbka;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzp(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbka;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzB(Lcom/google/android/libraries/places/internal/zzbkd;)V

    :cond_0
    return-void
.end method
