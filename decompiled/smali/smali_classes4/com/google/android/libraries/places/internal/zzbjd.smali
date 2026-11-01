.class public final Lcom/google/android/libraries/places/internal/zzbjd;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzbca;

.field static final zzg:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzh:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzi:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzj:Lcom/google/android/libraries/places/internal/zzbca;

.field public static final zzk:Lcom/google/android/libraries/places/internal/zzmy;

.field public static final zzl:J

.field public static final zzm:Lcom/google/android/libraries/places/internal/zzbde;

.field public static final zzn:Lcom/google/android/libraries/places/internal/zzbde;

.field public static final zzo:Lcom/google/android/libraries/places/internal/zzayh;

.field public static final zzp:Lcom/google/android/libraries/places/internal/zzbql;

.field public static final zzq:Lcom/google/android/libraries/places/internal/zzbql;

.field public static final zzr:Lcom/google/android/libraries/places/internal/zznc;

.field private static final zzs:Ljava/util/logging/Logger;

.field private static final zzt:Ljava/util/Set;

.field private static final zzu:Lcom/google/android/libraries/places/internal/zzayx;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/google/android/libraries/places/internal/zzbjd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzs:Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbdj;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzd:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzf:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzg:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzj:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzk:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzl:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzp:Lcom/google/android/libraries/places/internal/zzbdj;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzt:Ljava/util/Set;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zza:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjc;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbjc;-><init>()V

    const-string v1, "grpc-timeout"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzb:Lcom/google/android/libraries/places/internal/zzbca;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbcf;->zzb:Lcom/google/android/libraries/places/internal/zzbbx;

    const-string v1, "grpc-encoding"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbja;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbja;-><init>(Lcom/google/android/libraries/places/internal/zzbiz;)V

    const-string v3, "grpc-accept-encoding"

    invoke-static {v3, v1}, Lcom/google/android/libraries/places/internal/zzbar;->zzb(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbaq;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzd:Lcom/google/android/libraries/places/internal/zzbca;

    const-string v1, "content-encoding"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbja;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbja;-><init>(Lcom/google/android/libraries/places/internal/zzbiz;)V

    const-string v2, "accept-encoding"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbar;->zzb(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbaq;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzf:Lcom/google/android/libraries/places/internal/zzbca;

    const-string v1, "content-length"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzg:Lcom/google/android/libraries/places/internal/zzbca;

    const-string v1, "content-type"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzh:Lcom/google/android/libraries/places/internal/zzbca;

    const-string v1, "te"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzi:Lcom/google/android/libraries/places/internal/zzbca;

    const-string v1, "user-agent"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbca;->zzc(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbbx;)Lcom/google/android/libraries/places/internal/zzbca;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzj:Lcom/google/android/libraries/places/internal/zzbca;

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzma;->zzb(C)Lcom/google/android/libraries/places/internal/zzma;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmy;->zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzma;->zzc()Lcom/google/android/libraries/places/internal/zzma;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmy;->zzc(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzk:Lcom/google/android/libraries/places/internal/zzmy;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzl:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzm:Lcom/google/android/libraries/places/internal/zzbde;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzn:Lcom/google/android/libraries/places/internal/zzbde;

    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayh;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzo:Lcom/google/android/libraries/places/internal/zzayh;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzu:Lcom/google/android/libraries/places/internal/zzayx;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzp:Lcom/google/android/libraries/places/internal/zzbql;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbix;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbix;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzq:Lcom/google/android/libraries/places/internal/zzbql;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbiy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbiy;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzr:Lcom/google/android/libraries/places/internal/zznc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(I)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzn:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzc:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_1
    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzo:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzm:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzh:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzq:Lcom/google/android/libraries/places/internal/zzbdj;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzn:Lcom/google/android/libraries/places/internal/zzbdj;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzt:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inappropriate status code from control plane: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static zzc(Lcom/google/android/libraries/places/internal/zzbbe;Z)Lcom/google/android/libraries/places/internal/zzbfu;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzblx;

    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    const-string v3, "Subchannel is not started"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqv;->zzh()Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbim;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfs;->zzc:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbim;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;)V

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbim;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbe;->zzf()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbim;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static zzd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const-string v3, "places.googleapis.com"

    :try_start_0
    new-instance p0, Ljava/net/URI;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x1bb

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid host or port: places.googleapis.com 443"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid authority: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzg(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzakd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzakd;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzakd;->zza(Z)Lcom/google/android/libraries/places/internal/zzakd;

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/zzakd;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzakd;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzakd;->zzc()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    return-object p0
.end method

.method static zzh(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 1

    :goto_0
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzbqq;->zza()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzi(Ljava/io/Closeable;)V
    .locals 6

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzs:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "closeQuietly"

    const-string v4, "exception caught in closeQuietly"

    const-string v2, "io.grpc.internal.GrpcUtil"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzj(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznb;->zzd(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzayj;->zzm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzayx;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzayw;->zza()Lcom/google/android/libraries/places/internal/zzayv;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzayv;->zza(Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayv;

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzayv;->zzc(I)Lcom/google/android/libraries/places/internal/zzayv;

    invoke-virtual {v3, p3}, Lcom/google/android/libraries/places/internal/zzayv;->zzb(Z)Lcom/google/android/libraries/places/internal/zzayv;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayv;->zzd()Lcom/google/android/libraries/places/internal/zzayw;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/places/internal/zzayu;

    invoke-virtual {p3, p0, p1}, Lcom/google/android/libraries/places/internal/zzayu;->zza(Lcom/google/android/libraries/places/internal/zzayw;Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayx;

    move-result-object p3

    aput-object p3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/libraries/places/internal/zzbjd;->zzu:Lcom/google/android/libraries/places/internal/zzayx;

    aput-object p0, v2, v1

    return-object v2
.end method
