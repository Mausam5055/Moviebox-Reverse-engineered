.class public final Lcom/google/android/libraries/places/internal/zzbux;
.super Ljava/lang/Object;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzayh;

.field private static final zzb:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/libraries/places/internal/zzbux;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbux;->zzb:Ljava/util/logging/Logger;

    const-string v0, "GRPC_CLIENT_CALL_REJECT_RUNNABLE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zznb;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "internal-stub-type"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayh;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbux;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbus;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbus;-><init>(Lcom/google/android/libraries/places/internal/zzayo;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbuw;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzbuw;-><init>(Lcom/google/android/libraries/places/internal/zzbus;)V

    invoke-static {p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbux;->zzc(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbuu;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzayo;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbux;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "cancelThrow"

    const-string v4, "RuntimeException encountered while closing call"

    const-string v2, "io.grpc.stub.ClientCalls"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method private static zzc(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbuu;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzayo;->zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbuu;->zze()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzayo;->zzd(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzayo;->zzb()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbux;->zzb(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
