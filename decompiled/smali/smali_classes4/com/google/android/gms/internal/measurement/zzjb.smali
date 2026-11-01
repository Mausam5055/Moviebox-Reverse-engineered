.class final Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zziw;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zziw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zziw;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzc:Lcom/google/android/gms/internal/measurement/zzjb;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zziw;)Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:Lcom/google/android/gms/internal/measurement/zzjb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjb;-><init>(Lcom/google/android/gms/internal/measurement/zziw;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzms;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzms;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zza:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzo()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlq;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzi()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkj;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(Lcom/google/android/gms/internal/measurement/zzik;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzq()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1
.end method

.method private static zzc(I)V
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzg()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlr;Lcom/google/android/gms/internal/measurement/zzjg;)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzg()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    throw p1
.end method

.method private static zzd(I)V
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzg()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zziw;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zziw;->zzb:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzb(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zziw;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/measurement/zziw;->zza:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlr;Lcom/google/android/gms/internal/measurement/zzjg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zziw;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zziw;->zza:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzd(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzh()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzii;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzii;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzkt;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzb(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzkt;->zzb:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzkt;->zzd:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzt()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzkb;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzkt;->zzc:Lcom/google/android/gms/internal/measurement/zzms;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzkt;->zzd:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzms;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:Lcom/google/android/gms/internal/measurement/zzms;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzms;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzke; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzt()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzkb;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzd(I)V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzd(I)V

    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzb()F

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V

    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(Lcom/google/android/gms/internal/measurement/zzlu;Lcom/google/android/gms/internal/measurement/zzjg;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

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

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzje;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzje;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zza()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzje;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zza()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzje;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zza()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjs;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjs;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/measurement/zzik;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzq()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Lcom/google/android/gms/internal/measurement/zzke;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:I

    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzu()Z

    move-result v0

    return v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zze(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
