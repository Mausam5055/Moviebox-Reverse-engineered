.class final Lcom/google/android/libraries/places/internal/zzbcd;
.super Lcom/google/android/libraries/places/internal/zzbca;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbce;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzbce;Lcom/google/android/libraries/places/internal/zzbcc;)V
    .locals 1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbca;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbz;)V

    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    const-string v0, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {p4, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzl(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbcd;->zza:Lcom/google/android/libraries/places/internal/zzbce;

    return-void
.end method


# virtual methods
.method final zza([B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcd;->zza:Lcom/google/android/libraries/places/internal/zzbce;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbce;->zza([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcd;->zza:Lcom/google/android/libraries/places/internal/zzbce;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbce;->zzb(Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "null marshaller.toAsciiString()"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
