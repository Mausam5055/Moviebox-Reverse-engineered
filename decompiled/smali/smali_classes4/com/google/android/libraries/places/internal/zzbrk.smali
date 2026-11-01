.class final Lcom/google/android/libraries/places/internal/zzbrk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbts;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbrj;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbts;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrk;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbrj;Lcom/google/android/libraries/places/internal/zzbts;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsi;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbsi;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbrk;->zza:Ljava/util/logging/Logger;

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    :goto_1
    const-string v4, "close"

    const-string v5, "Failed closing connection"

    const-string v3, "io.grpc.okhttp.ExceptionHandlingFrameWriter"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzi(I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbts;->zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(ZII)V
    .locals 6

    int-to-long v0, p2

    int-to-long v2, p3

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zze(IJ)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzd(IJ)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzb(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzg(IILcom/google/android/libraries/places/internal/zzbtp;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbts;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zze()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x2

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbsi;->zza(IILcom/google/android/libraries/places/internal/zzbwb;IZ)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbts;->zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzg()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V
    .locals 3

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzb(IILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {p1, v2, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbts;->zzg()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzh(ILcom/google/android/libraries/places/internal/zzbue;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbts;->zzi(Lcom/google/android/libraries/places/internal/zzbue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj(ZZIILjava/util/List;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbts;->zzj(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzj(IIJ)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzk(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
