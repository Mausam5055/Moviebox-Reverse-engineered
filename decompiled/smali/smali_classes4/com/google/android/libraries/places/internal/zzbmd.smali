.class public final Lcom/google/android/libraries/places/internal/zzbmd;
.super Lcom/google/android/libraries/places/internal/zzbbs;


# static fields
.field static final zza:J

.field static final zzb:J

.field private static final zzm:Ljava/util/logging/Logger;

.field private static final zzn:Lcom/google/android/libraries/places/internal/zzazq;

.field private static final zzo:Lcom/google/android/libraries/places/internal/zzazd;

.field private static final zzp:Ljava/lang/reflect/Method;

.field private static final zzt:Lcom/google/android/libraries/places/internal/zzbqn;


# instance fields
.field final zzc:Lcom/google/android/libraries/places/internal/zzbdb;

.field final zzd:Ljava/util/List;

.field final zze:Ljava/lang/String;

.field final zzf:Ljava/lang/String;

.field final zzg:Lcom/google/android/libraries/places/internal/zzazq;

.field final zzh:Lcom/google/android/libraries/places/internal/zzazd;

.field final zzi:J

.field final zzj:Lcom/google/android/libraries/places/internal/zzbah;

.field final zzk:Lcom/google/android/libraries/places/internal/zzbqn;

.field final zzl:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzq:Ljava/util/List;

.field private final zzr:Lcom/google/android/libraries/places/internal/zzbmc;

.field private final zzs:Lcom/google/android/libraries/places/internal/zzbmb;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/libraries/places/internal/zzbmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbmd;->zza:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzb:J

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzp:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzt:Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazq;->zzb()Lcom/google/android/libraries/places/internal/zzazq;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzn:Lcom/google/android/libraries/places/internal/zzazq;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazd;->zza()Lcom/google/android/libraries/places/internal/zzazd;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzo:Lcom/google/android/libraries/places/internal/zzazd;

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/android/libraries/places/internal/zzbea;

    sget v2, Lcom/google/android/libraries/places/internal/zzbea;->a:I

    const-string v2, "getClientInterceptor"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v7, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v1

    goto :goto_1

    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "<clinit>"

    const-string v6, "Unable to apply census stats"

    const-string v4, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "<clinit>"

    const-string v6, "Unable to apply census stats"

    const-string v4, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzp:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzayl;Lcom/google/android/libraries/places/internal/zzayf;Lcom/google/android/libraries/places/internal/zzbmc;Lcom/google/android/libraries/places/internal/zzbmb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbs;-><init>()V

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbmd;->zzt:Lcom/google/android/libraries/places/internal/zzbqn;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzk:Lcom/google/android/libraries/places/internal/zzbqn;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzq:Ljava/util/List;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbdb;->zzb()Lcom/google/android/libraries/places/internal/zzbdb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzc:Lcom/google/android/libraries/places/internal/zzbdb;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzd:Ljava/util/List;

    const-string p2, "pick_first"

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzf:Ljava/lang/String;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbmd;->zzn:Lcom/google/android/libraries/places/internal/zzazq;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzg:Lcom/google/android/libraries/places/internal/zzazq;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbmd;->zzo:Lcom/google/android/libraries/places/internal/zzazd;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzh:Lcom/google/android/libraries/places/internal/zzazd;

    sget-wide p2, Lcom/google/android/libraries/places/internal/zzbmd;->zza:J

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzi:J

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbah;->zza()Lcom/google/android/libraries/places/internal/zzbah;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzj:Lcom/google/android/libraries/places/internal/zzbah;

    const-string p2, "target"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zze:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzr:Lcom/google/android/libraries/places/internal/zzbmc;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzs:Lcom/google/android/libraries/places/internal/zzbmb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbbr;
    .locals 24

    move-object/from16 v9, p0

    const/4 v1, 0x0

    iget-object v0, v9, Lcom/google/android/libraries/places/internal/zzbmd;->zzr:Lcom/google/android/libraries/places/internal/zzbmc;

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbmf;

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbma;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbmc;->zza()Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v3

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbij;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzbij;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzp:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    move-result-object v5

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbjd;->zzr:Lcom/google/android/libraries/places/internal/zznc;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/google/android/libraries/places/internal/zzbmd;->zzq:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbmd;->zzp:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v8, 0x4

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v12, v8, v1

    const/4 v13, 0x1

    aput-object v12, v8, v13

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v14, 0x2

    aput-object v13, v8, v14

    const/4 v13, 0x3

    aput-object v12, v8, v13

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzayp;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_2

    :goto_0
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    const-string v14, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    move-object v0, v2

    goto :goto_3

    :goto_2
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    const-string v14, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_1

    invoke-interface {v7, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :try_start_1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbeb;

    const-string v8, "getClientInterceptor"

    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzayp;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v23, v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v23, v0

    goto :goto_7

    :goto_4
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    const-string v14, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_5
    sget-object v18, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    const-string v20, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_6
    sget-object v12, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    const-string v14, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    sget-object v18, Lcom/google/android/libraries/places/internal/zzbmd;->zzm:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    const-string v20, "io.grpc.internal.ManagedChannelImplBuilder"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    if-eqz v2, :cond_2

    invoke-interface {v7, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbqt;->zza:Lcom/google/android/libraries/places/internal/zzbqt;

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/places/internal/zzbma;-><init>(Lcom/google/android/libraries/places/internal/zzbmd;Lcom/google/android/libraries/places/internal/zzbfw;Lcom/google/android/libraries/places/internal/zzbij;Lcom/google/android/libraries/places/internal/zzbqn;Lcom/google/android/libraries/places/internal/zznc;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzbqt;)V

    invoke-direct {v10, v11}, Lcom/google/android/libraries/places/internal/zzbmf;-><init>(Lcom/google/android/libraries/places/internal/zzbbr;)V

    return-object v10
.end method

.method final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmd;->zzs:Lcom/google/android/libraries/places/internal/zzbmb;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbmb;->zza()I

    const/16 v0, 0x1bb

    return v0
.end method
