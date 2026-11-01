.class final Lcom/google/android/libraries/places/internal/zzavi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/zzavt<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/libraries/places/internal/zzavf;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/libraries/places/internal/zzaut;

.field private final zzn:Lcom/google/android/libraries/places/internal/zzawn;

.field private final zzo:Lcom/google/android/libraries/places/internal/zzatg;

.field private final zzp:Lcom/google/android/libraries/places/internal/zzavl;

.field private final zzq:Lcom/google/android/libraries/places/internal/zzava;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zza:[I

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawx;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/zzavf;IZ[IIILcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)V
    .locals 5

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zze:I

    move v3, p4

    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzf:I

    instance-of v3, v1, Lcom/google/android/libraries/places/internal/zzatu;

    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzi:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p5}, Lcom/google/android/libraries/places/internal/zzatg;->zzi(Lcom/google/android/libraries/places/internal/zzavf;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    move v3, p10

    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzp:Lcom/google/android/libraries/places/internal/zzavl;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzq:Lcom/google/android/libraries/places/internal/zzava;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzH(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzs()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzi:Z

    if-eqz p2, :cond_1

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzC(Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzD(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzE(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzF(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzH(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lcom/google/android/libraries/places/internal/zzask;->zzb:Lcom/google/android/libraries/places/internal/zzask;

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzask;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/libraries/places/internal/zzask;->zzb:Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzask;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zzh(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzL(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzatu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzN(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzasy;->zzG(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    return-void
.end method

.method static zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;
    .locals 33

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzavr;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavr;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/libraries/places/internal/zzavi;->zza:[I

    move v11, v3

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    :goto_a
    sget-object v9, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zze()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zza()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v21, 0x1

    aput v20, v17, v21

    move/from16 v21, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v5, v3, 0x800

    move/from16 v26, v2

    const/16 v2, 0x33

    if-lt v6, v2, :cond_23

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v30, 0xd

    move/from16 v32, v27

    move/from16 v27, v8

    move/from16 v8, v32

    :goto_10
    add-int/lit8 v31, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v2, :cond_1a

    and-int/lit16 v2, v8, 0x1fff

    shl-int v2, v2, v30

    or-int v27, v27, v2

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v31

    const v2, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v8, v30

    or-int v8, v27, v2

    move/from16 v2, v31

    goto :goto_11

    :cond_1b
    move/from16 v2, v27

    :goto_11
    move/from16 v27, v2

    add-int/lit8 v2, v6, -0x33

    move/from16 v30, v14

    const/16 v14, 0x9

    if-eq v2, v14, :cond_1c

    const/16 v14, 0x11

    if-ne v2, v14, :cond_1d

    :cond_1c
    const/4 v14, 0x1

    goto :goto_14

    :cond_1d
    const/16 v14, 0xc

    if-ne v2, v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

    move-result v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1f

    if-eqz v5, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v24

    :goto_13
    move/from16 v16, v2

    goto :goto_15

    :goto_14
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v14, v10, v16

    aput-object v14, v12, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v8, v8

    aget-object v2, v10, v8

    instance-of v14, v2, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_16
    move/from16 v31, v13

    goto :goto_17

    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v8

    goto :goto_16

    :goto_17
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v10, v8

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_22

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_22
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v10, v8

    :goto_18
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v0, v16

    move/from16 v25, v27

    move/from16 v16, v8

    const/4 v8, 0x0

    goto/16 :goto_24

    :cond_23
    move/from16 v31, v13

    move/from16 v30, v14

    add-int/lit8 v2, v16, 0x1

    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_24

    const/16 v14, 0x11

    if-ne v6, v14, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_2d

    const/16 v14, 0x31

    if-ne v6, v14, :cond_26

    add-int/lit8 v16, v16, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    const/16 v14, 0xc

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v14, 0x32

    if-ne v6, v14, :cond_28

    add-int/lit8 v14, v16, 0x2

    add-int/lit8 v28, v22, 0x1

    aput v20, v17, v22

    div-int/lit8 v22, v20, 0x3

    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    if-eqz v5, :cond_29

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v16, 0x3

    aget-object v14, v10, v14

    aput-object v14, v12, v22

    move/from16 v22, v28

    :cond_28
    :goto_19
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1f

    :cond_29
    move v2, v14

    move/from16 v22, v28

    const/4 v5, 0x0

    goto :goto_19

    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

    move-result v14

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_2c

    if-eqz v5, :cond_2b

    goto :goto_1b

    :cond_2b
    const/4 v5, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    div-int/lit8 v14, v20, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    :goto_1c
    move/from16 v2, v16

    goto :goto_1f

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v16, v16, 0x2

    :goto_1d
    div-int/lit8 v14, v20, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    goto :goto_1c

    :goto_1e
    div-int/lit8 v14, v20, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v14

    :goto_1f
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    and-int/lit16 v14, v3, 0x1000

    const v16, 0xfffff

    if-eqz v14, :cond_31

    const/16 v14, 0x11

    if-gt v6, v14, :cond_31

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v0, 0xd800

    if-lt v8, v0, :cond_2f

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_20
    add-int/lit8 v25, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v0, :cond_2e

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v8, v14

    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v25

    goto :goto_20

    :cond_2e
    shl-int v14, v14, v16

    or-int/2addr v8, v14

    goto :goto_21

    :cond_2f
    move/from16 v25, v14

    :goto_21
    add-int v14, v7, v7

    div-int/lit8 v16, v8, 0x20

    add-int v14, v14, v16

    aget-object v0, v10, v14

    move-object/from16 v29, v1

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_22

    :cond_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v10, v14

    :goto_22
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v8, v8, 0x20

    move/from16 v16, v0

    goto :goto_23

    :cond_31
    move-object/from16 v29, v1

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_23
    const/16 v0, 0x12

    if-lt v6, v0, :cond_32

    const/16 v0, 0x31

    if-gt v6, v0, :cond_32

    add-int/lit8 v0, v23, 0x1

    aput v13, v17, v23

    move/from16 v23, v0

    :cond_32
    move v0, v2

    move v2, v13

    :goto_24
    add-int/lit8 v1, v20, 0x1

    aput v4, v11, v20

    add-int/lit8 v4, v20, 0x2

    and-int/lit16 v13, v3, 0x200

    if-eqz v13, :cond_33

    const/high16 v13, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v13, 0x0

    :goto_25
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_34

    const/high16 v3, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v3, 0x0

    :goto_26
    if-eqz v5, :cond_35

    const/high16 v5, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v5, 0x0

    :goto_27
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v13

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v11, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v1, v8, 0x14

    or-int v1, v1, v16

    aput v1, v11, v4

    move/from16 v16, v0

    move/from16 v4, v25

    move/from16 v2, v26

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v14, v30

    move/from16 v13, v31

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v31, v13

    move/from16 v30, v14

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavi;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/libraries/places/internal/zzavr;->zza()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object v14

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v31

    move/from16 v13, v30

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/libraries/places/internal/zzavi;-><init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/zzavf;IZ[IIILcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/libraries/places/internal/zzawh;

    const/4 v0, 0x0

    throw v0
.end method

.method private static zzk(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzl(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzm(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzn(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzp(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzq(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzr(I)Lcom/google/android/libraries/places/internal/zzaty;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaty;

    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/libraries/places/internal/zzavt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavt;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget p4, p4, p2

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result p4

    const p5, 0xfffff

    and-int/2addr p4, p5

    int-to-long p4, p4

    invoke-static {p1, p4, p5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object p4

    if-nez p4, :cond_1

    :goto_0
    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzauz;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzauy;

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzu(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzv(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzy(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzz(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    move v1, v10

    move v12, v1

    move v13, v12

    move v0, v11

    :goto_0
    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v2, v2

    if-ge v12, v2, :cond_1c

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    add-int/lit8 v5, v12, 0x2

    aget v14, v4, v12

    aget v4, v4, v5

    and-int v5, v4, v11

    const/16 v15, 0x11

    if-gt v3, v15, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v11, :cond_0

    move v1, v10

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v8, v4

    move v15, v0

    move/from16 v16, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move v15, v0

    move/from16 v16, v1

    move v5, v10

    :goto_2
    and-int v0, v2, v11

    sget-object v1, Lcom/google/android/libraries/places/internal/zzatl;->zzJ:Lcom/google/android/libraries/places/internal/zzatl;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzatl;->zza()I

    move-result v1

    if-lt v3, v1, :cond_3

    sget-object v1, Lcom/google/android/libraries/places/internal/zzatl;->zzW:Lcom/google/android/libraries/places/internal/zzatl;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzatl;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    :goto_3
    add-int/2addr v13, v0

    goto/16 :goto_19

    :pswitch_1
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    goto :goto_3

    :pswitch_2
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto :goto_4

    :pswitch_3
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :pswitch_4
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_5
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto :goto_4

    :pswitch_6
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto :goto_4

    :pswitch_7
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzavv;->zzh(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_7

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_a
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_8
    add-int/2addr v0, v8

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_c
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_d
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_e
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_10
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_11
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauz;

    check-cast v1, Lcom/google/android/libraries/places/internal/zzauy;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzauz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v10

    goto :goto_a

    :cond_6
    move v3, v10

    move v4, v3

    :goto_9
    if-ge v3, v2, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-static {v14, v5, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_9

    :cond_7
    :goto_a
    add-int/2addr v13, v4

    goto/16 :goto_19

    :pswitch_14
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_b
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_c
    add-int/2addr v13, v1

    goto/16 :goto_19

    :pswitch_15
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    :pswitch_16
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    :pswitch_17
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    :pswitch_18
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    :pswitch_19
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    :pswitch_1a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1d
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_1f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_20
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_21
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    :pswitch_22
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_d
    move v0, v10

    goto/16 :goto_3

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzj(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_e
    mul-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_d

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzi(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    :pswitch_24
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zza(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    :pswitch_27
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzk(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    :pswitch_28
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v10

    goto/16 :goto_c

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v10

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/2addr v2, v8

    goto :goto_f

    :pswitch_29
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v10

    goto :goto_12

    :cond_e
    shl-int/lit8 v3, v14, 0x3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v10

    :goto_10
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v14, v5, Lcom/google/android/libraries/places/internal/zzaul;

    if-eqz v14, :cond_f

    check-cast v5, Lcom/google/android/libraries/places/internal/zzaul;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzaul;->zza()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v3, v14

    goto :goto_11

    :cond_f
    check-cast v5, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-static {v5, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzz(Lcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_11
    add-int/2addr v4, v8

    goto :goto_10

    :cond_10
    :goto_12
    add-int/2addr v13, v3

    goto/16 :goto_19

    :pswitch_2a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    :goto_13
    move v2, v10

    goto :goto_18

    :cond_11
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/libraries/places/internal/zzaun;

    if-eqz v3, :cond_13

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaun;

    move v3, v10

    :goto_14
    if-ge v3, v1, :cond_15

    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzaun;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_15

    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_15
    add-int/2addr v3, v8

    goto :goto_14

    :cond_13
    move v3, v10

    :goto_16
    if-ge v3, v1, :cond_15

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_17

    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_17
    add-int/2addr v3, v8

    goto :goto_16

    :cond_15
    :goto_18
    add-int/2addr v13, v2

    goto/16 :goto_19

    :pswitch_2b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v0, v1

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_d

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzf(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_2f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_d

    :cond_18
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzl(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_30
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_13

    :cond_19
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzg(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_18

    :pswitch_31
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v12

    move-wide v10, v3

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_38
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3a
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3b
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzavv;->zzh(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_7

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_40
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :cond_1b
    :goto_19
    add-int/lit8 v12, v12, 0x3

    move v0, v15

    move/from16 v1, v16

    const/4 v10, 0x0

    const v11, 0xfffff

    goto/16 :goto_0

    :cond_1c
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzawn;->zza(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v13, v0

    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_1a
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v1

    if-ge v10, v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1, v10}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    add-int/2addr v10, v8

    goto :goto_1a

    :cond_1d
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1b

    :cond_1e
    add-int v13, v13, v18

    :cond_1f
    return v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v2

    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzN(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaud;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzl(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzk(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaud;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzawg;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzatu;->zzaF(I)V

    iput v1, v0, Lcom/google/android/libraries/places/internal/zzart;->zza:I

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaD()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/libraries/places/internal/zzauz;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzauz;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zzb(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzm(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzf(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzy(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v1

    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzava;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zzc(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzz(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzz(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzm(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzp(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzo(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzr(Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzq(Lcom/google/android/libraries/places/internal/zzatg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzy(Ljava/lang/Object;)V

    iget-object v14, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    iget-object v5, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    const/16 v16, 0x0

    move-object/from16 v4, v16

    move-object v8, v4

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzc()I

    move-result v2

    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zze:I

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-lt v2, v1, :cond_2

    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzf:I

    if-gt v2, v1, :cond_2

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v9

    move v11, v3

    :goto_1
    if-gt v11, v1, :cond_2

    add-int v12, v1, v11

    ushr-int/2addr v12, v10

    mul-int/lit8 v13, v12, 0x3

    iget-object v9, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v9, v9, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v9, :cond_0

    move v9, v13

    goto :goto_3

    :cond_0
    if-ge v2, v9, :cond_1

    add-int/lit8 v1, v12, -0x1

    :goto_2
    const/4 v9, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v12, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v4

    move-object v12, v14

    move-object v11, v15

    goto/16 :goto_18

    :cond_2
    const/4 v9, -0x1

    :goto_3
    if-gez v9, :cond_b

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_4

    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    :goto_4
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    if-ge v0, v1, :cond_3

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v14

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move-object v12, v14

    move-object v11, v15

    goto/16 :goto_17

    :cond_4
    :try_start_1
    iget-boolean v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-nez v1, :cond_5

    move-object/from16 v11, v16

    goto :goto_5

    :cond_5
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-virtual {v5, v6, v1, v2}, Lcom/google/android/libraries/places/internal/zzatg;->zzd(Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzavf;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v11, v1

    :goto_5
    if-eqz v11, :cond_8

    if-nez v8, :cond_6

    :try_start_2
    invoke-virtual {v5, v15}, Lcom/google/android/libraries/places/internal/zzatg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_6
    move-object v1, v8

    :goto_6
    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object v13, v1

    move-object v3, v14

    move-object v14, v4

    move-object v2, v15

    move-object v15, v3

    :try_start_3
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/libraries/places/internal/zzatg;->zze(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzatk;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v1

    :cond_7
    move-object v15, v2

    move-object v14, v3

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v11, v2

    move-object v12, v3

    :goto_7
    move-object v13, v4

    goto/16 :goto_18

    :cond_8
    move-object v3, v14

    move-object v2, v15

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzq(Lcom/google/android/libraries/places/internal/zzavs;)Z

    if-nez v4, :cond_9

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v1

    :cond_9
    :try_start_4
    invoke-virtual {v3, v4, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_7

    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    :goto_8
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    if-ge v0, v1, :cond_a

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v2, p1

    move-object v12, v3

    move v3, v5

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v2, v11

    move-object v3, v12

    goto :goto_8

    :cond_a
    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_17

    :catchall_2
    move-exception v0

    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    move-object v12, v14

    move-object v11, v15

    goto :goto_7

    :cond_b
    move-object v12, v14

    move-object v11, v15

    :try_start_5
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v13

    const v14, 0xfffff

    packed-switch v13, :pswitch_data_0

    if-nez v4, :cond_c

    invoke-virtual {v12, v11}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v4, v1

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_9
    :try_start_7
    invoke-virtual {v12, v4, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    move-result v1
    :try_end_7
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v1, :cond_d

    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    :goto_a
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    if-ge v0, v1, :cond_17

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    move-object v15, v11

    move-object v14, v12

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    goto/16 :goto_19

    :catch_0
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    goto/16 :goto_15

    :pswitch_0
    :try_start_8
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzw(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v3

    invoke-interface {v0, v1, v3, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzt(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-direct {v7, v11, v2, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_c
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    goto/16 :goto_14

    :pswitch_1
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzn()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_2
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_3
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzm()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_4
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zze()I

    move-result v3

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-interface {v10, v3}, Lcom/google/android/libraries/places/internal/zzaty;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_d

    :cond_e
    invoke-static {v11, v2, v3, v4, v12}, Lcom/google/android/libraries/places/internal/zzavv;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_b

    :cond_f
    :goto_d
    and-int/2addr v1, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_6
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzj()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto :goto_c

    :pswitch_7
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_8
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzw(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v3

    invoke-interface {v0, v1, v3, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzu(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-direct {v7, v11, v2, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_9
    invoke-direct {v7, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_a
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_b
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_c
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzk()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_d
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_e
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzo()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_f
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzl()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_10
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzb()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_11
    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zza()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    int-to-long v13, v1

    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_c

    :pswitch_12
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    and-int/2addr v2, v14

    int-to-long v2, v2

    invoke-static {v11, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    move-object v10, v9

    check-cast v10, Lcom/google/android/libraries/places/internal/zzauz;

    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzauz;->zze()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauz;->zza()Lcom/google/android/libraries/places/internal/zzauz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzauz;->zzb()Lcom/google/android/libraries/places/internal/zzauz;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/google/android/libraries/places/internal/zzava;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v2, v3, v10}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v9, v10

    goto :goto_e

    :cond_10
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauz;->zza()Lcom/google/android/libraries/places/internal/zzauz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzauz;->zzb()Lcom/google/android/libraries/places/internal/zzauz;

    move-result-object v9

    invoke-static {v11, v2, v3, v9}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    :goto_e
    check-cast v9, Lcom/google/android/libraries/places/internal/zzauz;

    check-cast v1, Lcom/google/android/libraries/places/internal/zzauy;

    throw v16

    :pswitch_13
    and-int/2addr v1, v14

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    int-to-long v9, v1

    invoke-virtual {v3, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzC(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    goto/16 :goto_c

    :pswitch_14
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v9, v1

    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzJ(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_15
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v9, v1

    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzI(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_16
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v9, v1

    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzH(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_17
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v9, v1

    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzG(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_18
    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v13, v1

    invoke-virtual {v3, v11, v13, v14}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzavs;->zzy(Ljava/util/List;)V

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v9
    :try_end_8
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v1, p1

    move-object v13, v4

    move-object v4, v9

    move-object v15, v5

    move-object v5, v13

    move-object v10, v6

    move-object v6, v12

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavv;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/libraries/places/internal/zzaty;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    move-result-object v4

    :goto_f
    move-object v6, v10

    move-object v14, v12

    :goto_10
    move-object v5, v15

    :goto_11
    move-object v15, v11

    goto/16 :goto_0

    :catch_1
    move-object v4, v10

    goto/16 :goto_15

    :pswitch_19
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzL(Ljava/util/List;)V

    :goto_12
    move-object v4, v10

    goto/16 :goto_14

    :pswitch_1a
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzv(Ljava/util/List;)V

    goto :goto_12

    :pswitch_1b
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzz(Ljava/util/List;)V

    goto :goto_12

    :pswitch_1c
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzA(Ljava/util/List;)V

    goto :goto_12

    :pswitch_1d
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzD(Ljava/util/List;)V

    goto :goto_12

    :pswitch_1e
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzM(Ljava/util/List;)V

    goto :goto_12

    :pswitch_1f
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzE(Ljava/util/List;)V

    goto :goto_12

    :pswitch_20
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzB(Ljava/util/List;)V

    goto :goto_12

    :pswitch_21
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzx(Ljava/util/List;)V

    goto :goto_12

    :pswitch_22
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzJ(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_23
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzI(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_24
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzH(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_25
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzG(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_26
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v4, v1

    invoke-virtual {v3, v11, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzavs;->zzy(Ljava/util/List;)V

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavv;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/libraries/places/internal/zzaty;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_27
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzL(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_28
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v3, v1

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzw(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_29
    move-object v13, v4

    move-object v15, v5

    move-object v10, v6

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    and-int/2addr v1, v14

    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    int-to-long v4, v1

    invoke-virtual {v3, v11, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, v2, v10}, Lcom/google/android/libraries/places/internal/zzavs;->zzF(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    :try_end_9
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/16 :goto_12

    :pswitch_2a
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    :try_start_a
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzH(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/libraries/places/internal/zzasr;

    invoke-virtual {v2, v1, v10}, Lcom/google/android/libraries/places/internal/zzasr;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_14

    :cond_12
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/libraries/places/internal/zzasr;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzasr;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_14

    :pswitch_2b
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzv(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2c
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzz(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2d
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzA(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2e
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzD(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2f
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzM(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_30
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzE(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_31
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzB(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_32
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    and-int/2addr v1, v14

    int-to-long v5, v1

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzx(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_33
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzv(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzavs;->zzt(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-direct {v7, v11, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_34
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzn()J

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_35
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzi()I

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_36
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzm()J

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_37
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzh()I

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_38
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zze()I

    move-result v3

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-interface {v5, v3}, Lcom/google/android/libraries/places/internal/zzaty;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_13

    :cond_13
    invoke-static {v11, v2, v3, v13, v12}, Lcom/google/android/libraries/places/internal/zzavv;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v4

    move-object v14, v12

    move-object v5, v15

    move-object v4, v1

    goto/16 :goto_11

    :cond_14
    :goto_13
    and-int/2addr v1, v14

    int-to-long v1, v1

    invoke-static {v11, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_39
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzj()I

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_3a
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_3b
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzv(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzavs;->zzu(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-direct {v7, v11, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_3c
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    invoke-direct {v7, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_3d
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzN()Z

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzm(Ljava/lang/Object;JZ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_3e
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzf()I

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :pswitch_3f
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzk()J

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_14

    :pswitch_40
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzg()I

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_14

    :pswitch_41
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzo()J

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_14

    :pswitch_42
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzl()J

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_14

    :pswitch_43
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzb()F

    move-result v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzp(Ljava/lang/Object;JF)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    goto :goto_14

    :pswitch_44
    move-object v13, v4

    move-object v15, v5

    move-object v4, v6

    and-int/2addr v1, v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zza()D

    move-result-wide v2

    int-to-long v5, v1

    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzo(Ljava/lang/Object;JD)V

    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V
    :try_end_a
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_15
    :goto_14
    move-object v6, v4

    move-object v14, v12

    move-object v4, v13

    goto/16 :goto_10

    :catch_2
    :goto_15
    :try_start_b
    invoke-virtual {v12, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzq(Lcom/google/android/libraries/places/internal/zzavs;)Z

    if-nez v13, :cond_16

    invoke-virtual {v12, v11}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    :cond_16
    invoke-virtual {v12, v13, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-nez v1, :cond_15

    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    move-object v4, v13

    :goto_16
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    if-ge v0, v1, :cond_17

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_17
    :goto_17
    if-eqz v4, :cond_18

    invoke-virtual {v12, v11, v4}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void

    :catchall_6
    move-exception v0

    :goto_18
    move-object v4, v13

    :goto_19
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    move v8, v1

    :goto_1a
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    if-ge v8, v1, :cond_19

    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    aget v3, v1, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v12, v11, v4}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzatk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v11, v2, v10

    aget v12, v4, v11

    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauz;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauy;

    const/4 v0, 0x0

    throw v0

    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzh(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzj()Z

    move-result v0

    if-nez v0, :cond_c

    return v8

    :cond_c
    return v3
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzf()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    sget-object v13, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    const v14, 0xfffff

    move v0, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v3, v12

    if-ge v5, v3, :cond_c

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v15

    aget v10, v4, v5

    const/16 v9, 0x11

    if-gt v15, v9, :cond_3

    add-int/lit8 v9, v5, 0x2

    aget v4, v4, v9

    and-int v9, v4, v14

    if-eq v9, v0, :cond_2

    if-ne v9, v14, :cond_1

    move/from16 v20, v15

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move/from16 v20, v15

    int-to-long v14, v9

    invoke-virtual {v13, v7, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v9

    goto :goto_3

    :cond_2
    move/from16 v20, v15

    :goto_3
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    move v9, v0

    move-object v14, v1

    move v15, v2

    move/from16 v21, v4

    goto :goto_4

    :cond_3
    move/from16 v20, v15

    move v9, v0

    move-object v14, v1

    move v15, v2

    const/16 v21, 0x0

    :goto_4
    if-eqz v14, :cond_5

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v14}, Lcom/google/android/libraries/places/internal/zzatg;->zza(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v10, :cond_5

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v8, v14}, Lcom/google/android/libraries/places/internal/zzatg;->zzj(Lcom/google/android/libraries/places/internal/zzasy;Ljava/util/Map$Entry;)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    const v19, 0xfffff

    and-int v0, v3, v19

    int-to-long v3, v0

    packed-switch v20, :pswitch_data_0

    :cond_6
    :goto_5
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v18, 0x1

    :goto_7
    move v14, v5

    goto/16 :goto_f

    :pswitch_0
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto :goto_5

    :pswitch_1
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzD(IJ)V

    goto :goto_5

    :pswitch_2
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzB(II)V

    goto :goto_5

    :pswitch_3
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzz(IJ)V

    goto :goto_5

    :pswitch_4
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzx(II)V

    goto :goto_5

    :pswitch_5
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzi(II)V

    goto :goto_5

    :pswitch_6
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzI(II)V

    goto :goto_5

    :pswitch_7
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/android/libraries/places/internal/zzavi;->zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzb(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzk(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzm(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzr(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzK(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzt(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzl(Ljava/lang/Object;J)F

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzo(IF)V

    goto/16 :goto_5

    :pswitch_11
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzk(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzf(ID)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzauy;

    const/16 v17, 0x0

    throw v17

    :pswitch_13
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4, v2}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    const/4 v10, 0x1

    add-int/2addr v3, v10

    goto :goto_8

    :cond_8
    :goto_9
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    goto/16 :goto_6

    :pswitch_14
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzF(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_a
    move/from16 v18, v10

    :cond_9
    :goto_b
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    goto/16 :goto_7

    :pswitch_15
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzE(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_16
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzD(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_17
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzC(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_18
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzw(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_19
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzG(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_1a
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzu(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_1b
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzx(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1c
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzy(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1d
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzA(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1e
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzH(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1f
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzB(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_20
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzz(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_21
    const/4 v10, 0x1

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzv(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_22
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzF(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_c
    move/from16 v16, v2

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    goto/16 :goto_6

    :pswitch_23
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzE(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_24
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzD(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_25
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzC(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_26
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzw(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_27
    const/4 v2, 0x0

    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzG(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_28
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v8, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zze(ILjava/util/List;)V

    goto/16 :goto_9

    :pswitch_29
    const/16 v17, 0x0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4, v2}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_b

    :pswitch_2a
    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v8, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzH(ILjava/util/List;)V

    goto/16 :goto_b

    :pswitch_2b
    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzu(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_e
    move/from16 v16, v2

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    goto/16 :goto_7

    :pswitch_2c
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzx(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2d
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzy(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2e
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzA(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2f
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzH(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_30
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzB(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_31
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzz(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_32
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    aget v0, v0, v5

    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzv(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_e

    :pswitch_33
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v2

    move v2, v5

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-wide v11, v3

    move v3, v9

    move v4, v15

    move-object/from16 v23, v14

    move v14, v5

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_f

    :pswitch_34
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzD(IJ)V

    goto/16 :goto_f

    :pswitch_35
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzB(II)V

    goto/16 :goto_f

    :pswitch_36
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzz(IJ)V

    goto/16 :goto_f

    :pswitch_37
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzx(II)V

    goto/16 :goto_f

    :pswitch_38
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzi(II)V

    goto/16 :goto_f

    :pswitch_39
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzI(II)V

    goto/16 :goto_f

    :pswitch_3a
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    goto/16 :goto_f

    :pswitch_3b
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_f

    :pswitch_3c
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/android/libraries/places/internal/zzavi;->zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    goto/16 :goto_f

    :pswitch_3d
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzb(IZ)V

    goto/16 :goto_f

    :pswitch_3e
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzk(II)V

    goto/16 :goto_f

    :pswitch_3f
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzm(IJ)V

    goto/16 :goto_f

    :pswitch_40
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzr(II)V

    goto/16 :goto_f

    :pswitch_41
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzK(IJ)V

    goto/16 :goto_f

    :pswitch_42
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzt(IJ)V

    goto :goto_f

    :pswitch_43
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzo(IF)V

    goto :goto_f

    :pswitch_44
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzf(ID)V

    :cond_b
    :goto_f
    add-int/lit8 v5, v14, 0x3

    move v0, v9

    move v2, v15

    move/from16 v14, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v22

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_c
    move-object/from16 v20, v11

    const/16 v17, 0x0

    :goto_10
    if-eqz v1, :cond_e

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/libraries/places/internal/zzatg;->zzj(Lcom/google/android/libraries/places/internal/zzasy;Ljava/util/Map$Entry;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_10

    :cond_d
    move-object/from16 v1, v17

    goto :goto_10

    :cond_e
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/libraries/places/internal/zzawn;->zzs(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
