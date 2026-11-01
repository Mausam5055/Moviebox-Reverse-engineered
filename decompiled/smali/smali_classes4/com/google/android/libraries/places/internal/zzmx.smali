.class abstract Lcom/google/android/libraries/places/internal/zzmx;
.super Lcom/google/android/libraries/places/internal/zzlt;


# instance fields
.field final zzb:Ljava/lang/CharSequence;

.field final zzc:Lcom/google/android/libraries/places/internal/zzma;

.field zzd:I

.field zze:I


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzlt;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzmy;->zza(Lcom/google/android/libraries/places/internal/zzmy;)Lcom/google/android/libraries/places/internal/zzma;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzc:Lcom/google/android/libraries/places/internal/zzma;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zze:I

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzmx;->zzd(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzmx;->zzc(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    :goto_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzc:Lcom/google/android/libraries/places/internal/zzma;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzma;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzc:Lcom/google/android/libraries/places/internal/zzma;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzma;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zze:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzd:I

    :goto_4
    if-le v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzc:Lcom/google/android/libraries/places/internal/zzma;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzma;->zza(C)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v4

    goto :goto_4

    :cond_5
    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzmx;->zze:I

    :cond_6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzmx;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzlt;->zzb()Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_5
    return-object v0
.end method

.method abstract zzc(I)I
.end method

.method abstract zzd(I)I
.end method
