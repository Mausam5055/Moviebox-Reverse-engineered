.class final Lcom/google/android/libraries/places/internal/zzasr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavs;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzasq;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzasq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    iput-object p0, p1, Lcom/google/android/libraries/places/internal/zzasq;->zzd:Lcom/google/android/libraries/places/internal/zzasr;

    return-void
.end method

.method private final zzP(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    iget p2, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zzg()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    throw p1
.end method

.method private final zzQ(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    iget v2, v0, Lcom/google/android/libraries/places/internal/zzasq;->zza:I

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzasq;->zzb:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzasq;->zze(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    iget v2, v1, Lcom/google/android/libraries/places/internal/zzasq;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/libraries/places/internal/zzasq;->zza:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzasq;->zzz(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    iget p2, p1, Lcom/google/android/libraries/places/internal/zzasq;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/libraries/places/internal/zzasq;->zza:I

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzA(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/libraries/places/internal/zzauf;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzauf;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzR(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zzj()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p1

    throw p1
.end method

.method private final zzS(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1
.end method

.method private static final zzT(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zzg()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p0

    throw p0
.end method

.method private static final zzU(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zzg()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p0

    throw p0
.end method

.method public static zzq(Lcom/google/android/libraries/places/internal/zzasq;)Lcom/google/android/libraries/places/internal/zzasr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasq;->zzd:Lcom/google/android/libraries/places/internal/zzasr;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzasr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzasr;-><init>(Lcom/google/android/libraries/places/internal/zzasq;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauu;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzB(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatm;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatm;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatm;->zze(F)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatm;->zze(F)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final zzC(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/libraries/places/internal/zzasr;->zzP(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-interface {p2, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1
.end method

.method public final zzD(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzE(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzF(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/libraries/places/internal/zzasr;->zzQ(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-interface {p2, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1
.end method

.method public final zzG(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final zzH(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauu;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzI(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzl()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzJ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzu()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzK(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzaun;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaun;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzasr;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/zzaun;->zzi(Lcom/google/android/libraries/places/internal/zzask;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzasr;->zzs()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzasr;->zzr()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_2

    move p2, v0

    :goto_2
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1
.end method

.method public final zzL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzM(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzauu;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzv()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzv()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzN()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzD()Z

    move-result v0

    return v0
.end method

.method public final zzO()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzE(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzc()F

    move-result v0

    return v0
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    return v0
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzk()I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzl()I

    move-result v0

    return v0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    return v0
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()Lcom/google/android/libraries/places/internal/zzask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzw()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzt(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzasr;->zzP(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    return-void
.end method

.method public final zzu(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzS(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzasr;->zzQ(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    return-void
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzary;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzary;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzD()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzary;->zze(Z)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzD()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzary;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzw(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzasr;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1
.end method

.method public final zzx(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzasz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzasz;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzb()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzasz;->zze(D)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzb()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzasz;->zze(D)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzf()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzR(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatv;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatv;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzC()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzb:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zzd:I

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zza()Lcom/google/android/libraries/places/internal/zzaue;

    move-result-object p1

    throw p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasr;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzasr;->zza:Lcom/google/android/libraries/places/internal/zzasq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_9

    :cond_a
    :goto_1
    return-void
.end method
