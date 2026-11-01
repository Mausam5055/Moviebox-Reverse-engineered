.class final Lcom/google/android/libraries/places/internal/zzbso;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbrb;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzbra;
    .locals 2

    const/16 v0, 0x1000

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsn;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbsn;-><init>(Lcom/google/android/libraries/places/internal/zzbwb;I)V

    return-object v0
.end method
