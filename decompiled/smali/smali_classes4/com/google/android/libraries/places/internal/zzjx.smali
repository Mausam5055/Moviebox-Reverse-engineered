.class final Lcom/google/android/libraries/places/internal/zzjx;
.super Lcom/google/android/libraries/places/internal/zzka;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I

.field private zzc:B

.field private zzd:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzka;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzka;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null packageName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzb(I)Lcom/google/android/libraries/places/internal/zzka;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzb:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    return-object p0
.end method

.method final zzc()Lcom/google/android/libraries/places/internal/zzkb;
    .locals 5

    iget-byte v0, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/internal/zzjz;

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzb:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzjz;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzjy;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    if-nez v1, :cond_3

    const-string v1, " versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    if-nez v1, :cond_4

    const-string v1, " requestSource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzd(I)Lcom/google/android/libraries/places/internal/zzka;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    return-object p0
.end method
