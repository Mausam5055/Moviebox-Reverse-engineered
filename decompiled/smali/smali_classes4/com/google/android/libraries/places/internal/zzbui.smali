.class public final Lcom/google/android/libraries/places/internal/zzbui;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbug;Lcom/google/android/libraries/places/internal/zzbuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zza:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbug;->zza()I

    move-result p2

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbug;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    return-void
.end method

.method static zza(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x30

    return p0

    :cond_1
    :goto_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_3
    :goto_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_4

    const/16 v0, 0x46

    if-gt p0, v0, :cond_4

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static zzb(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbui;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbui;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzc:I

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzb:Ljava/lang/String;

    return-object v0
.end method
