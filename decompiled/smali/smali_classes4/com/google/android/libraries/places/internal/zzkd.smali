.class public final Lcom/google/android/libraries/places/internal/zzkd;
.super Ljava/lang/Object;


# static fields
.field private static zza:Landroid/os/DropBoxManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzb:Ljava/util/LinkedHashMap;

.field private static zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkc;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzkc;-><init>(IFZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Z)V
    .locals 1

    const-class p1, Lcom/google/android/libraries/places/internal/zzkd;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "dropbox"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    sput-object p0, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    const-string p0, "com.google.android.libraries.places"

    sput-object p0, Lcom/google/android/libraries/places/internal/zzkd;->zzc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/Throwable;)V
    .locals 17

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Lcom/google/android/libraries/places/internal/zzkd;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    if-eqz v7, :cond_3

    const-string v8, "system_app_crash"

    invoke-virtual {v7, v8}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2e

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzma;->zzb(C)Lcom/google/android/libraries/places/internal/zzma;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzmy;->zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    move-result-object v9

    const-string v10, "3.5.0"

    invoke-virtual {v9, v10}, Lcom/google/android/libraries/places/internal/zzmy;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v10, v0, :cond_1

    :catch_0
    const-wide/16 v11, -0x1

    goto :goto_2

    :cond_1
    const-wide/16 v13, 0x0

    move v10, v2

    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_2

    const-wide/16 v15, 0x64

    mul-long/2addr v13, v15

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v11, v15

    add-long/2addr v13, v11

    add-int/2addr v10, v1

    goto :goto_1

    :cond_2
    move-wide v11, v13

    :goto_2
    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v10, Lcom/google/android/libraries/places/internal/zzkd;->zzc:Ljava/lang/String;

    aput-object v10, v0, v2

    aput-object v9, v0, v1

    const-string v9, "3.5.0"

    const/4 v10, 0x2

    aput-object v9, v0, v10

    const-string v9, "Package: %s v%d (%s)\n"

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Build: %s\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_app_crash"

    invoke-virtual {v7, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    monitor-exit v3

    return-void

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
