.class public final Lcom/google/android/libraries/places/internal/zzbwk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwc;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final zza:Lcom/google/android/libraries/places/internal/zzbwq;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final zzb:Lcom/google/android/libraries/places/internal/zzbwb;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzc:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbwq;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v3

    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwq;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    throw v2

    :cond_3
    :goto_2
    return-void
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwq;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zza:Lcom/google/android/libraries/places/internal/zzbwq;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzp(I)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
