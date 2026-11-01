.class final Lcom/google/android/libraries/places/internal/zzbrf;
.super Lcom/google/android/libraries/places/internal/zzbrl;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbri;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbri;Lcom/google/android/libraries/places/internal/zzbts;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrf;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbrl;-><init>(Lcom/google/android/libraries/places/internal/zzbts;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrf;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zza(Lcom/google/android/libraries/places/internal/zzbri;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzi(Lcom/google/android/libraries/places/internal/zzbri;I)V

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzbrl;->zza(Lcom/google/android/libraries/places/internal/zzbue;)V

    return-void
.end method

.method public final zzb(ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrf;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zza(Lcom/google/android/libraries/places/internal/zzbri;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzi(Lcom/google/android/libraries/places/internal/zzbri;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrl;->zzb(ZII)V

    return-void
.end method

.method public final zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrf;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zza(Lcom/google/android/libraries/places/internal/zzbri;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzi(Lcom/google/android/libraries/places/internal/zzbri;I)V

    invoke-super {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbrl;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    return-void
.end method
