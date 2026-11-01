.class final Lcom/google/android/libraries/places/internal/zzatk;
.super Ljava/lang/Object;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzatk;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzawg;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzatk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzatk;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzatk;->zzb:Lcom/google/android/libraries/places/internal/zzatk;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavw;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzavw;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzavw;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/zzavw;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatk;->zzg()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatk;->zzg()V

    return-void
.end method

.method static zza(Lcom/google/android/libraries/places/internal/zzaxd;ILjava/lang/Object;)I
    .locals 0

    shl-int/lit8 p0, p1, 0x3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    sget-object p0, Lcom/google/android/libraries/places/internal/zzaxd;->zzj:Lcom/google/android/libraries/places/internal/zzaxd;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    check-cast p2, Lcom/google/android/libraries/places/internal/zzavf;

    sget-object p0, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    instance-of p0, p2, Lcom/google/android/libraries/places/internal/zzaru;

    if-eqz p0, :cond_0

    throw p1

    :cond_0
    sget-object p0, Lcom/google/android/libraries/places/internal/zzaxe;->zza:Lcom/google/android/libraries/places/internal/zzaxe;

    throw p1
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I
    .locals 3

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zzd()Lcom/google/android/libraries/places/internal/zzaxd;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zzf()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    shl-int/lit8 p0, v1, 0x3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object p0, Lcom/google/android/libraries/places/internal/zzaxd;->zza:Lcom/google/android/libraries/places/internal/zzaxd;

    sget-object p0, Lcom/google/android/libraries/places/internal/zzaxe;->zza:Lcom/google/android/libraries/places/internal/zzaxe;

    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzatk;->zza(Lcom/google/android/libraries/places/internal/zzaxd;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzatk;->zza(Lcom/google/android/libraries/places/internal/zzaxd;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzatk;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzatk;->zzb:Lcom/google/android/libraries/places/internal/zzatk;

    return-object v0
.end method

.method private static zzk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzavk;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzavk;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzavk;->zzc()Lcom/google/android/libraries/places/internal/zzavk;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private final zzl(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzauk;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzatk;->zze(Lcom/google/android/libraries/places/internal/zzatj;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawg;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields can not be repeated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zze()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzaxe;->zzi:Lcom/google/android/libraries/places/internal/zzaxe;

    if-ne v2, v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzatk;->zze(Lcom/google/android/libraries/places/internal/zzatj;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzatk;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/libraries/places/internal/zzawg;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzd:Z

    :cond_4
    return-void

    :cond_5
    if-nez v1, :cond_7

    instance-of v1, v2, Lcom/google/android/libraries/places/internal/zzavk;

    if-eqz v1, :cond_6

    check-cast v2, Lcom/google/android/libraries/places/internal/zzavk;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzavk;

    invoke-interface {v0, v2, p1}, Lcom/google/android/libraries/places/internal/zzatj;->zzc(Lcom/google/android/libraries/places/internal/zzavk;Lcom/google/android/libraries/places/internal/zzavk;)Lcom/google/android/libraries/places/internal/zzavk;

    move-result-object p1

    goto :goto_1

    :cond_6
    check-cast v2, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzavf;->zzaJ()Lcom/google/android/libraries/places/internal/zzave;

    move-result-object v1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzatj;->zzb(Lcom/google/android/libraries/places/internal/zzave;Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzave;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzave;->zzt()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzawg;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    const/4 p1, 0x0

    throw p1

    :cond_8
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzatk;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzawg;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields must be message-valued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzm(Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zze()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaxe;->zzi:Lcom/google/android/libraries/places/internal/zzaxe;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzatk;->zzn(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static zzn(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzavg;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzavg;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzavg;->zzaM()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/android/libraries/places/internal/zzauk;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzo(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zze()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzaxe;->zzi:Lcom/google/android/libraries/places/internal/zzaxe;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzatj;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/libraries/places/internal/zzauk;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/libraries/places/internal/zzauk;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzaul;->zza()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result p0

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzavf;->zzaq()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final zzp(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zzd()Lcom/google/android/libraries/places/internal/zzaxd;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaxd;->zza:Lcom/google/android/libraries/places/internal/zzaxd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaxe;->zza:Lcom/google/android/libraries/places/internal/zzaxe;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzaxd;->zza()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzavf;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauk;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatw;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzask;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzatj;->zzd()Lcom/google/android/libraries/places/internal/zzaxd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxd;->zza()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzatk;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzatk;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzi(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzi(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatk;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzatk;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzc()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzatj;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzauk;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzauj;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/libraries/places/internal/zzatu;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaC()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzc:Z

    :cond_2
    return-void
.end method

.method public final zzh(Lcom/google/android/libraries/places/internal/zzatk;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzl(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzl(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzp(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzatk;->zzp(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/zzauk;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zzd:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawg;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzj()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzm(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzatk;->zzm(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
