.class public abstract Lcom/google/android/libraries/places/internal/zzasx;
.super Lcom/google/android/libraries/places/internal/zzarz;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Z

.field public static final synthetic zzf:I


# instance fields
.field zze:Lcom/google/android/libraries/places/internal/zzasy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzasx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzasx;->zza:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawx;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/zzasx;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzasw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzarz;-><init>()V

    return-void
.end method

.method public static zzA(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzaxc;->zzc(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzaxb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaud;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzB(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzC(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzD([BII)Lcom/google/android/libraries/places/internal/zzasx;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzast;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzast;-><init>([BII)V

    return-object v0
.end method

.method static bridge synthetic zzG()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzasx;->zzb:Z

    return v0
.end method

.method static zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzart;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzart;->zzak(Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzz(Lcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I
    .locals 0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzart;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzart;->zzak(Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final zzE()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzb()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzF(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzaxb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/libraries/places/internal/zzasx;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaud;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzasx;->zzu(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzasx;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzasu;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzJ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzK(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzL(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzM(ILcom/google/android/libraries/places/internal/zzask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb()I
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzn(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo(ILcom/google/android/libraries/places/internal/zzavf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzp(ILcom/google/android/libraries/places/internal/zzask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzq(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzs(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzu(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzv(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzw(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
