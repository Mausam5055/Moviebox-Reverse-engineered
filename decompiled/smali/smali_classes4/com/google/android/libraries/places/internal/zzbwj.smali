.class final Lcom/google/android/libraries/places/internal/zzbwj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwq;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final zza:Ljava/io/OutputStream;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwv;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zza:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zzb:Lcom/google/android/libraries/places/internal/zzbwv;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zza:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zza:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zza:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwv;->zzb()V

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwj;->zza:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzE(J)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-long/2addr p2, v4

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_0

    :cond_1
    return-void
.end method
