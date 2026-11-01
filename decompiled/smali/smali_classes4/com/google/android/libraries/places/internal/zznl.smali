.class final Lcom/google/android/libraries/places/internal/zznl;
.super Lcom/google/android/libraries/places/internal/zznp;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zznl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zznl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zznl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zznl;->zzb:Lcom/google/android/libraries/places/internal/zznl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zznp;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/libraries/places/internal/zznl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zznl;->zzb:Lcom/google/android/libraries/places/internal/zznl;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zznp;->zza(Lcom/google/android/libraries/places/internal/zznp;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "+\u221e"

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zznp;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method final zzc(Ljava/lang/StringBuilder;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method final zzd(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "+\u221e)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final zze(Ljava/lang/Comparable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
