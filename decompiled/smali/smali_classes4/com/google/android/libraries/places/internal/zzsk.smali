.class public final Lcom/google/android/libraries/places/internal/zzsk;
.super Lcom/google/android/libraries/places/internal/zzato;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzsj;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsm;->zzc()Lcom/google/android/libraries/places/internal/zzsm;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzato;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzagi;)Lcom/google/android/libraries/places/internal/zzsk;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzw()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsm;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzsm;->zzd(Lcom/google/android/libraries/places/internal/zzsm;Lcom/google/android/libraries/places/internal/zzagi;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzsk;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzw()V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsm;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzsm;->zze(Lcom/google/android/libraries/places/internal/zzsm;I)V

    return-object p0
.end method
