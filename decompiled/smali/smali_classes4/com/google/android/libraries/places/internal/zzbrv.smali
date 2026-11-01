.class public final Lcom/google/android/libraries/places/internal/zzbrv;
.super Lcom/google/android/libraries/places/internal/zzazt;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzbsz;

.field static final zzb:Lcom/google/android/libraries/places/internal/zzbqn;

.field private static final zzc:Ljava/util/logging/Logger;

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzbql;

.field private static final zze:Ljava/util/EnumSet;


# instance fields
.field private final zzf:Lcom/google/android/libraries/places/internal/zzbmd;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbqw;

.field private zzh:Ljavax/net/ssl/SSLSocketFactory;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzbsz;

.field private final zzj:J

.field private zzk:I

.field private final zzl:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzm:Lcom/google/android/libraries/places/internal/zzbqn;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/google/android/libraries/places/internal/zzbrv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzc:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsx;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbsz;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;-><init>(Lcom/google/android/libraries/places/internal/zzbsz;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbsw;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaK:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaO:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaL:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaP:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaT:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaS:Lcom/google/android/libraries/places/internal/zzbsw;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;->zza([Lcom/google/android/libraries/places/internal/zzbsw;)Lcom/google/android/libraries/places/internal/zzbsx;

    new-array v1, v4, [Lcom/google/android/libraries/places/internal/zzbtn;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtn;->zzb:Lcom/google/android/libraries/places/internal/zzbtn;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;->zzd([Lcom/google/android/libraries/places/internal/zzbtn;)Lcom/google/android/libraries/places/internal/zzbsx;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzbsx;->zzc(Z)Lcom/google/android/libraries/places/internal/zzbsx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbsx;->zzf()Lcom/google/android/libraries/places/internal/zzbsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbrn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbrn;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzd:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdy;->zzb:Lcom/google/android/libraries/places/internal/zzbdy;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdy;->zzc:Lcom/google/android/libraries/places/internal/zzbdy;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zze:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzazt;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbqz;->zza()Lcom/google/android/libraries/places/internal/zzbqw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzg:Lcom/google/android/libraries/places/internal/zzbqw;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzq:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzm:Lcom/google/android/libraries/places/internal/zzbqn;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzi:Lcom/google/android/libraries/places/internal/zzbsz;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    sget-wide v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzl:J

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzj:J

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbmd;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbrr;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrr;-><init>(Lcom/google/android/libraries/places/internal/zzbrv;Lcom/google/android/libraries/places/internal/zzbrq;)V

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbrp;

    invoke-direct {v7, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrp;-><init>(Lcom/google/android/libraries/places/internal/zzbrv;Lcom/google/android/libraries/places/internal/zzbro;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbmd;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzayl;Lcom/google/android/libraries/places/internal/zzayf;Lcom/google/android/libraries/places/internal/zzbmc;Lcom/google/android/libraries/places/internal/zzbmb;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzf:Lcom/google/android/libraries/places/internal/zzbmd;

    return-void
.end method

.method public static zze(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzbrv;
    .locals 1

    new-instance p0, Lcom/google/android/libraries/places/internal/zzbrv;

    const/16 p1, 0x1bb

    const-string v0, "places.googleapis.com"

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbrv;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected final zzb()Lcom/google/android/libraries/places/internal/zzbbs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzf:Lcom/google/android/libraries/places/internal/zzbmd;

    return-object v0
.end method

.method final zzc()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TLS not handled"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method final zzd()Lcom/google/android/libraries/places/internal/zzbru;
    .locals 21

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzj:J

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzi:Lcom/google/android/libraries/places/internal/zzbsz;

    new-instance v20, Lcom/google/android/libraries/places/internal/zzbru;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzg:Lcom/google/android/libraries/places/internal/zzbqw;

    move-object/from16 v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbrv;->zzg()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzm:Lcom/google/android/libraries/places/internal/zzbqn;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const v14, 0xffff

    const/4 v15, 0x0

    const v16, 0x7fffffff

    invoke-direct/range {v1 .. v19}, Lcom/google/android/libraries/places/internal/zzbru;-><init>(Lcom/google/android/libraries/places/internal/zzbqn;Lcom/google/android/libraries/places/internal/zzbqn;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/google/android/libraries/places/internal/zzbsz;IZJJIZILcom/google/android/libraries/places/internal/zzbqw;ZLcom/google/android/libraries/places/internal/zzbrt;)V

    return-object v20
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbrv;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    return-object p0
.end method

.method final zzg()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const-string v0, "Default"

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtl;->zze()Lcom/google/android/libraries/places/internal/zzbtl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbtl;->zzf()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown negotiation type: TLS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    throw v0
.end method
