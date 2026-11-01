.class final Lcom/google/android/libraries/places/internal/zzbms;
.super Ljava/io/OutputStream;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbmw;

.field private final zzb:Ljava/util/List;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbra;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzb:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbms;)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzb:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbms;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzb:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    int-to-byte p1, p1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, p1}, Lcom/google/android/libraries/places/internal/zzbra;->zzc(B)V

    return-void

    :cond_0
    new-array v2, v1, [B

    aput-byte p1, v2, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbms;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzg(Lcom/google/android/libraries/places/internal/zzbmw;)Lcom/google/android/libraries/places/internal/zzbrb;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbmw;->zzg(Lcom/google/android/libraries/places/internal/zzbmw;)Lcom/google/android/libraries/places/internal/zzbrb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbms;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzd([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method
