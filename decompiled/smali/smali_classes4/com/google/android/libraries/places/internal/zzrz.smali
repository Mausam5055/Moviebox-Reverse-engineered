.class public final Lcom/google/android/libraries/places/internal/zzrz;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzrz;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzrz;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzrz;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrz;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzrz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrz;->zza:Lcom/google/android/libraries/places/internal/zzrz;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrz;

    const-string v1, "<br>"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzrz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrz;->zzb:Lcom/google/android/libraries/places/internal/zzrz;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzrz;

    const-string v1, "<!DOCTYPE html>"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzrz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrz;->zzc:Lcom/google/android/libraries/places/internal/zzrz;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzrz;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzrz;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x33b02fa9

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafeHtml{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzrz;->zzd:Ljava/lang/String;

    return-object v0
.end method
