.class public final Lcom/google/android/libraries/places/internal/zzbar;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbar;->zza:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbcf;->zzc:Lcom/google/android/libraries/places/internal/zzsi;

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbar;->zzb:Lcom/google/android/libraries/places/internal/zzsi;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzbcf;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbcf;->zza()I

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbaq;)Lcom/google/android/libraries/places/internal/zzbca;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/libraries/places/internal/zzbcd;-><init>(Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzbce;Lcom/google/android/libraries/places/internal/zzbcc;)V

    return-object v0
.end method

.method public static varargs zzc([[B)Lcom/google/android/libraries/places/internal/zzbcf;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcf;

    array-length v1, p0

    shr-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/libraries/places/internal/zzbcf;)[[B
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzg()[[B

    move-result-object p0

    return-object p0
.end method
