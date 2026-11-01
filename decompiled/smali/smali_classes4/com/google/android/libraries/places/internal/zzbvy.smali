.class public final Lcom/google/android/libraries/places/internal/zzbvy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvz;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbws;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbws;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbws;->close()V

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

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {p3, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    throw p1
.end method
