.class public final Lcom/google/android/libraries/places/internal/zzbvx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwq;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvz;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbwq;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbwq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zzb:Lcom/google/android/libraries/places/internal/zzbwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zzb:Lcom/google/android/libraries/places/internal/zzbwq;

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbwq;->close()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw v1
.end method

.method public final flush()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zzb:Lcom/google/android/libraries/places/internal/zzbwq;

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbwq;->flush()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zzb:Lcom/google/android/libraries/places/internal/zzbwq;

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

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbvx;->zzb:Lcom/google/android/libraries/places/internal/zzbwq;

    :try_start_0
    invoke-interface {v3, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    sub-long/2addr p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {p2, v2}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {p2, v2}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw p1

    :cond_2
    return-void
.end method
