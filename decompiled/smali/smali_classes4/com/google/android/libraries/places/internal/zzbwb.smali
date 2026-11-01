.class public final Lcom/google/android/libraries/places/internal/zzbwb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.implements Lcom/google/android/libraries/places/internal/zzbwd;
.implements Lcom/google/android/libraries/places/internal/zzbwc;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public zza:Lcom/google/android/libraries/places/internal/zzbwn;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private zzb:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    :goto_1
    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v3, v1, Lcom/google/android/libraries/places/internal/zzbwb;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :goto_0
    move v2, v4

    goto/16 :goto_3

    :cond_1
    iget-wide v5, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbwb;

    iget-wide v7, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v6, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    move-wide v9, v7

    :goto_1
    iget-wide v11, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    iget v11, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int/2addr v11, v5

    iget v12, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_2
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    iget-object v15, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_2

    :cond_5
    iget v13, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-ne v5, v13, :cond_6

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :cond_6
    iget v13, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-ne v6, v13, :cond_7

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v6, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :cond_7
    add-long/2addr v9, v11

    goto :goto_1

    :cond_8
    :goto_3
    return v2
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzz()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v2

    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v5, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return v0
.end method

.method public final zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-array v0, v3, [[B

    add-int v2, v3, v3

    new-array v2, v2, [I

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    move-object v5, v4

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    aput-object v6, v0, v4

    iget v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v7, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    iget v7, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    add-int/2addr v4, v6

    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwp;

    invoke-direct {p1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwp;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public final zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 2

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object p1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object p1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr v1, p1

    const/16 p1, 0x2000

    if-gt v1, p1, :cond_2

    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzC()S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    int-to-short v0, v0

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, v3, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v9, -0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-int/2addr v1, v4

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_1

    :cond_1
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :goto_1
    or-int v0, v6, v3

    goto :goto_0

    :goto_2
    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzD(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzE(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-void
.end method

.method public final zzF(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long/2addr p1, v4

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final zzG()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzH(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    long-to-int p1, p1

    new-array p2, p1, [B

    const-string v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    sub-int v2, p1, v0

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzd([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p2

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    move-wide p2, v2

    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    return-wide p2

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzb(J)B
    .locals 6
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long v3, v1, p1

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    :goto_2
    return p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    throw p1
.end method

.method public final zzc()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v7, -0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_0

    :cond_0
    iput v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int v2, v1, p3

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    invoke-static {v3, p1, p2, v1, v2}, Lkotlin/collections/ArraysKt;->j([B[BIII)[B

    iget p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget p2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    if-eq p1, p2, :cond_1

    move p1, p3

    :goto_0
    return p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    return p3
.end method

.method public final zze()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v1, 0x3

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    iget-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v9, -0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    if-eqz v4, :cond_1

    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public final zzg()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-wide v0
.end method

.method public final zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v2, v1

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    int-to-long v5, v4

    add-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    long-to-int v5, p1

    invoke-direct {v2, v3, v1, v5, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long/2addr v5, p1

    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    :cond_2
    return-object v2

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzi()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(J)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    goto/16 :goto_9

    :cond_2
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v12, v1, v7

    const/16 v13, 0xa

    if-gez v12, :cond_7

    :goto_2
    cmp-long v12, v1, v7

    if-lez v12, :cond_4

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v14, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v12, v14

    int-to-long v14, v12

    sub-long/2addr v1, v14

    goto :goto_2

    :cond_4
    move-wide v14, v7

    :goto_3
    cmp-long v12, v1, v5

    if-gez v12, :cond_1

    iget-object v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    int-to-long v3, v3

    iget v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v10, v10

    add-long/2addr v10, v5

    sub-long/2addr v10, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v10, v4

    add-long/2addr v10, v14

    sub-long/2addr v10, v1

    long-to-int v4, v10

    :goto_4
    if-ge v4, v3, :cond_6

    aget-byte v10, v12, v4

    if-ne v10, v13, :cond_5

    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v4, v3

    int-to-long v3, v4

    :goto_5
    add-long/2addr v3, v1

    const-wide/16 v1, -0x1

    goto :goto_9

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v14, v1, v3

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-wide v1, v14

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_3

    :cond_7
    move-wide v1, v7

    :goto_6
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v10, v3, v7

    if-gtz v10, :cond_8

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_6

    :cond_8
    move-wide v3, v7

    :goto_7
    cmp-long v10, v1, v5

    if-gez v10, :cond_1

    iget-object v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v11, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    int-to-long v11, v11

    iget v14, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v14, v14

    add-long/2addr v14, v5

    sub-long/2addr v14, v1

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    iget v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    int-to-long v14, v12

    add-long/2addr v14, v3

    sub-long/2addr v14, v1

    long-to-int v3, v14

    :goto_8
    if-ge v3, v11, :cond_a

    aget-byte v4, v10, v3

    if-ne v4, v13, :cond_9

    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_7

    :goto_9
    cmp-long v5, v3, v1

    if-eqz v5, :cond_c

    sget v5, Lcom/google/android/libraries/places/internal/zzbwx;->zza:I

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    cmp-long v5, v3, v7

    if-lez v5, :cond_b

    add-long v10, v3, v1

    invoke-virtual {v0, v10, v11}, Lcom/google/android/libraries/places/internal/zzbwb;->zzb(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10, v11, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    goto :goto_a

    :cond_b
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    :goto_a
    return-object v1

    :cond_c
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    const-wide/16 v2, 0x20

    iget-wide v4, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-string v4, "out"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v11, 0x0

    move-wide v13, v2

    invoke-static/range {v9 .. v14}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    cmp-long v4, v2, v7

    if-eqz v4, :cond_f

    iget-wide v4, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    move-wide v5, v7

    :goto_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v9, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v10, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    cmp-long v11, v5, v9

    if-ltz v11, :cond_d

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    sub-long/2addr v5, v9

    goto :goto_b

    :cond_d
    :goto_c
    cmp-long v9, v2, v7

    if-lez v9, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v9

    iget v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    long-to-int v5, v5

    add-int/2addr v10, v5

    iput v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    long-to-int v6, v2

    add-int/2addr v10, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v5, :cond_e

    iput-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v9, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_d

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    :goto_d
    iget v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v6, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    move-wide v5, v7

    goto :goto_c

    :cond_f
    new-instance v2, Ljava/io/EOFException;

    iget-wide v3, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-wide v5, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\n not found: limit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzk(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V

    return-object p0
.end method

.method public final zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v2

    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    rsub-int v3, v3, 0x2000

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int v5, v0, v1

    invoke-static {p1, v3, v4, v0, v5}, Lkotlin/collections/ArraysKt;->j([B[BIII)[B

    iget v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    move v0, v5

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-object p0
.end method

.method public final zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-object p0
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_a

    iget-wide v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_9

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    long-to-int v2, p2

    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    iget v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :goto_2
    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zze(Lcom/google/android/libraries/places/internal/zzbwn;I)V

    iget-wide v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-void

    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zzd(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    :cond_4
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v3, :cond_5

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_5

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    if-eq v3, v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    rsub-int v4, v4, 0x2000

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-boolean v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    :goto_4
    add-int/2addr v4, v1

    if-gt v3, v4, :cond_7

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbwn;->zze(Lcom/google/android/libraries/places/internal/zzbwn;I)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    :cond_7
    :goto_5
    int-to-long v0, v2

    iget-wide v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    sub-long/2addr p2, v0

    goto/16 :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzo(J)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    ushr-long v6, v1, v0

    const-wide v8, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v6, v8

    sub-long/2addr v1, v6

    ushr-long v6, v1, v3

    const-wide v8, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v6, v8

    and-long v0, v1, v8

    add-long/2addr v6, v0

    ushr-long v0, v6, v4

    add-long/2addr v0, v6

    const-wide v6, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, v6

    ushr-long v5, v0, v5

    add-long/2addr v0, v5

    const/16 v2, 0x10

    ushr-long v5, v0, v2

    add-long/2addr v0, v5

    const/16 v2, 0x20

    ushr-long v5, v0, v2

    const-wide/16 v7, 0x3f

    and-long/2addr v0, v7

    and-long/2addr v5, v7

    add-long/2addr v0, v5

    const-wide/16 v5, 0x3

    add-long/2addr v0, v5

    shr-long/2addr v0, v3

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int v5, v3, v0

    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-lt v5, v3, :cond_1

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwx;->zza()[B

    move-result-object v8

    long-to-int v6, v6

    aget-byte v6, v8, v6

    aput-byte v6, v2, v5

    ushr-long/2addr p1, v4

    goto :goto_0

    :cond_1
    iget p1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr p1, v0

    iput p1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    :goto_1
    return-object p0
.end method

.method public final zzp(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, p1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v4, v3, 0x3

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    add-int/2addr v3, v0

    iput v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-object p0
.end method

.method public final zzq(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    add-int/2addr v3, v0

    iput v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    return-object p0
.end method

.method public final zzr(Ljava/io/OutputStream;J)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-long/2addr p2, v5

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzt(Ljava/lang/String;II)Lcom/google/android/libraries/places/internal/zzbwb;

    return-object p0
.end method

.method public final zzt(Ljava/lang/String;II)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 10

    const-string p2, "string"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_8

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    int-to-byte v2, v2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int/2addr v6, v0

    rsub-int v7, v6, 0x2000

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v0, v6

    aput-byte v2, v5, v0

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v6

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/2addr v6, v0

    iget v1, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    sub-int/2addr v6, v1

    add-int/2addr v1, v6

    iput v1, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    int-to-long v3, v6

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    goto :goto_0

    :cond_1
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    shr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    add-int/2addr v6, v0

    iput v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    goto/16 :goto_4

    :cond_2
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_6

    const v4, 0xdfff

    if-le v2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-ge v1, p3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    :cond_4
    move v4, p2

    :goto_2
    const v6, 0xdbff

    if-gt v2, v6, :cond_5

    const v6, 0xdc00

    if-lt v4, v6, :cond_5

    const v6, 0xe000

    if-ge v4, v6, :cond_5

    and-int/lit16 v1, v2, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v2, v4, 0x3ff

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v6

    iget-object v7, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v8, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    add-int/lit8 v2, v8, 0x1

    shr-int/lit8 v9, v1, 0xc

    and-int/2addr v9, v5

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    add-int/lit8 v2, v8, 0x2

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v5

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    add-int/lit8 v2, v8, 0x3

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v7, v2

    add-int/2addr v8, v4

    iput v8, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v7, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v5, v9

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    add-int/2addr v7, v0

    iput v7, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    :goto_4
    move v0, v1

    goto/16 :goto_0

    :cond_7
    return-object p0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex < beginIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzu(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    goto/16 :goto_0

    :cond_1
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xe000

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    :goto_0
    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbvv;->zza(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected code point: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzz()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size > Int.MAX_VALUE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
