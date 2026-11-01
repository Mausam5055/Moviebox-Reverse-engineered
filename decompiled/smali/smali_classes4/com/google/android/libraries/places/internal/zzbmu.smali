.class final Lcom/google/android/libraries/places/internal/zzbmu;
.super Ljava/io/OutputStream;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbmw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmu;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmu;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzh(Lcom/google/android/libraries/places/internal/zzbmw;[BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmu;->zza:Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbmw;->zzh(Lcom/google/android/libraries/places/internal/zzbmw;[BII)V

    return-void
.end method
