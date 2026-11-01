.class final Lcom/google/android/libraries/places/internal/zzql;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzqn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqn;->zzo()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzql;->zzb([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzql;->zza:Lcom/google/android/libraries/places/internal/zzqn;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/libraries/places/internal/zzqn;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzql;->zza:Lcom/google/android/libraries/places/internal/zzqn;

    return-object v0
.end method

.method private static zzb([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzqn;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqo;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/zzqn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6

    :catchall_0
    move-exception v6

    instance-of v7, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    :cond_1
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No logging platforms found:"

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
