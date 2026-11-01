.class final Lcom/google/android/libraries/places/internal/zzbna;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbnj;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbnj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbna;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbna;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzk(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbna;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzh(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbna;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_0
    return-void
.end method
