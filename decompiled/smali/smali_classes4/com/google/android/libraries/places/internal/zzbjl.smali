.class final Lcom/google/android/libraries/places/internal/zzbjl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjl;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjl;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzv(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjl;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "CONNECTING after backoff"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjl;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjl;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V

    return-void
.end method
