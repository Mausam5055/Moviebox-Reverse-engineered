.class final Lcom/google/android/libraries/places/internal/zzbsn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbra;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbwb;

.field private zzb:I

.field private zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzc:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    return v0
.end method

.method public final zzc(B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzc:I

    return-void
.end method

.method public final zzd([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzb:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zzc:I

    return-void
.end method

.method final zze()Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsn;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    return-object v0
.end method
