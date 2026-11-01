.class final Lcom/google/android/libraries/places/internal/zzbfh;
.super Lcom/google/android/libraries/places/internal/zzaym;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbfi;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbqt;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfi;Lcom/google/android/libraries/places/internal/zzbqt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzaym;-><init>()V

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfh;->zza:Lcom/google/android/libraries/places/internal/zzbfi;

    const-string p1, "time"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfh;->zzb:Lcom/google/android/libraries/places/internal/zzbqt;

    return-void
.end method

.method private static zzc(I)Ljava/util/logging/Level;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method

.method private final zzd(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfh;->zza:Lcom/google/android/libraries/places/internal/zzbfi;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfi;->zzd()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfh;->zza:Lcom/google/android/libraries/places/internal/zzbfi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbfi;->zza()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbfh;->zzc(I)Ljava/util/logging/Level;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbfi;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzbfi;->zzb(Lcom/google/android/libraries/places/internal/zzbap;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfh;->zzd(I)Z

    return-void
.end method

.method public final varargs zzb(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbfh;->zzc(I)Ljava/util/logging/Level;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfh;->zzd(I)Z

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfi;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbfh;->zza(ILjava/lang/String;)V

    return-void
.end method
