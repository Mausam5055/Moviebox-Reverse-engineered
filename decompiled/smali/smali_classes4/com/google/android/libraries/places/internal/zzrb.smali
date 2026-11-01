.class public final Lcom/google/android/libraries/places/internal/zzrb;
.super Lcom/google/android/libraries/places/internal/zzqp;


# static fields
.field private static final zza:Ljava/util/Set;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzqh;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzqy;


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/libraries/places/internal/zzpu;

.field private final zzf:Ljava/util/logging/Level;

.field private final zzg:Ljava/util/Set;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzqh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzpr;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzpo;->zza:Lcom/google/android/libraries/places/internal/zzpr;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzpt;->zza:Lcom/google/android/libraries/places/internal/zzpr;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zza:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzqk;->zza(Ljava/util/Set;)Lcom/google/android/libraries/places/internal/zzqc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzqc;->zzd()Lcom/google/android/libraries/places/internal/zzqh;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zzb:Lcom/google/android/libraries/places/internal/zzqh;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzqy;-><init>(Lcom/google/android/libraries/places/internal/zzqx;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zzc:Lcom/google/android/libraries/places/internal/zzqy;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzpu;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/libraries/places/internal/zzqh;Lcom/google/android/libraries/places/internal/zzra;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzqp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x17

    if-le p1, p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p8, -0x1

    add-int/2addr p1, p8

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p8, p1

    :cond_2
    add-int/lit8 p8, p8, 0x1

    invoke-virtual {p2, p8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzrb;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzrb;->zze:Lcom/google/android/libraries/places/internal/zzpu;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzrb;->zzf:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzrb;->zzg:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzrb;->zzh:Lcom/google/android/libraries/places/internal/zzqh;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/libraries/places/internal/zzqh;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zzb:Lcom/google/android/libraries/places/internal/zzqh;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/libraries/places/internal/zzqy;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zzc:Lcom/google/android/libraries/places/internal/zzqy;

    return-object v0
.end method

.method static bridge synthetic zzd()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrb;->zza:Ljava/util/Set;

    return-object v0
.end method
