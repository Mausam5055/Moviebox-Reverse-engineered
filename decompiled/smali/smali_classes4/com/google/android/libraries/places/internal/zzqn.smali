.class public abstract Lcom/google/android/libraries/places/internal/zzqn;
.super Ljava/lang/Object;


# static fields
.field private static zza:Ljava/lang/String; = "com.google.android.libraries.places.internal.zzqs"

.field private static zzb:Ljava/lang/String; = "com.google.common.flogger.backend.google.GooglePlatform"

.field private static zzc:Ljava/lang/String; = "com.google.common.flogger.backend.system.DefaultPlatform"

.field private static final zzd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.common.flogger.backend.google.GooglePlatform"

    const-string v1, "com.google.common.flogger.backend.system.DefaultPlatform"

    const-string v2, "com.google.android.libraries.places.internal.zzqs"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqn;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()I
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrt;->zza()I

    move-result v0

    return v0
.end method

.method public static zzb()J
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzql;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzqn;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzql;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzqn;->zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;

    move-result-object p0

    return-object p0
.end method

.method public static zzf()Lcom/google/android/libraries/places/internal/zzpy;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqn;->zzi()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrc;->zza()Lcom/google/android/libraries/places/internal/zzpy;

    move-result-object v0

    return-object v0
.end method

.method public static zzg()Lcom/google/android/libraries/places/internal/zzqm;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzql;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzqn;->zzh()Lcom/google/android/libraries/places/internal/zzqm;

    move-result-object v0

    return-object v0
.end method

.method public static zzi()Lcom/google/android/libraries/places/internal/zzrc;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzql;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzqn;->zzj()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v0

    return-object v0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzrp;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqn;->zzi()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrc;->zzc()Lcom/google/android/libraries/places/internal/zzrp;

    move-result-object v0

    return-object v0
.end method

.method public static zzl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzql;->zza()Lcom/google/android/libraries/places/internal/zzqn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzqn;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqn;->zzi()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzrc;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic zzo()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzqn;->zzd:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected zzc()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;
.end method

.method protected abstract zzh()Lcom/google/android/libraries/places/internal/zzqm;
.end method

.method protected zzj()Lcom/google/android/libraries/places/internal/zzrc;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrc;->zze()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzm()Ljava/lang/String;
.end method
