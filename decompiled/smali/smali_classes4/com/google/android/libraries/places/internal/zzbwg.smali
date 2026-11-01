.class final Lcom/google/android/libraries/places/internal/zzbwg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwv;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zzb:Lcom/google/android/libraries/places/internal/zzbwv;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwv;->zzb()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v0

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    invoke-virtual {p3, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    iget p2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-ne p2, p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    iget p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzE(J)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbwi;->zza(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    throw p1
.end method
