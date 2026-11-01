.class public final Lcom/google/android/libraries/places/internal/zzrp;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/Comparator;

.field private static final zzb:Ljava/util/Comparator;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzrp;


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zzrn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrh;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzrh;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrp;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzri;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzri;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrp;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrp;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzrn;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzrn;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzrp;-><init>(Lcom/google/android/libraries/places/internal/zzrn;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrp;->zzc:Lcom/google/android/libraries/places/internal/zzrp;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzrn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzrp;->zzd:Lcom/google/android/libraries/places/internal/zzrn;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzrp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrp;->zzc:Lcom/google/android/libraries/places/internal/zzrp;

    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzrp;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzrp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzrp;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzrp;->zzd:Lcom/google/android/libraries/places/internal/zzrn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrp;->zzd:Lcom/google/android/libraries/places/internal/zzrn;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrp;->zzd:Lcom/google/android/libraries/places/internal/zzrn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrn;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrp;->zzd:Lcom/google/android/libraries/places/internal/zzrn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
