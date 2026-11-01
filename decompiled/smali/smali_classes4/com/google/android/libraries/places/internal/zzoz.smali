.class public Lcom/google/android/libraries/places/internal/zzoz;
.super Lcom/google/android/libraries/places/internal/zzpb;


# instance fields
.field private final zza:[[C

.field private final zzb:I

.field private final zzc:C


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzpa;CC)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzpb;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzpa;->zzb()[[C

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzoz;->zza:[[C

    array-length p1, p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzoz;->zzb:I

    const p1, 0xffff

    iput-char p1, p0, Lcom/google/android/libraries/places/internal/zzoz;->zzc:C

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzoz;->zzb:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzoz;->zza:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    :cond_0
    iget-char v2, p0, Lcom/google/android/libraries/places/internal/zzoz;->zzc:C

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzpb;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method protected final zzb(C)[C
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzoz;->zzb:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoz;->zza:[[C

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
