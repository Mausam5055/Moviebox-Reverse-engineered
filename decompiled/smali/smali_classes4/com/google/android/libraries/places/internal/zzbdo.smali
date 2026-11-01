.class public final Lcom/google/android/libraries/places/internal/zzbdo;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzg:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzh:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzi:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzj:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzk:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzl:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzm:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzn:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzo:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzp:Lcom/google/android/libraries/places/internal/zzbdo;

.field public static final zzq:Lcom/google/android/libraries/places/internal/zzbdo;

.field static final zzr:Lcom/google/android/libraries/places/internal/zzbca;

.field static final zzs:Lcom/google/android/libraries/places/internal/zzbca;

.field private static final zzt:Ljava/util/List;

.field private static final zzu:Lcom/google/android/libraries/places/internal/zzbce;


# instance fields
.field private final zzv:Lcom/google/android/libraries/places/internal/zzbdj;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbdj;->values()[Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbdj;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-direct {v8, v6, v5, v5}, Lcom/google/android/libraries/places/internal/zzbdo;-><init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbdo;

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v5, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code value duplication between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzt:Ljava/util/List;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzb:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzc:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzd:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zze:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzf:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzf:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzg:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzg:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzh:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzh:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzq:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzi:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzi:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzj:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzk:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzk:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzl:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzl:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzm:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzm:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzn:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzn:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzo:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zzp:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzq:Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdl;

    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/zzbdl;-><init>(Lcom/google/android/libraries/places/internal/zzbdk;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcd;

    const-string v2, "grpc-status"

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/libraries/places/internal/zzbcd;-><init>(Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzbce;Lcom/google/android/libraries/places/internal/zzbcc;)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzr:Lcom/google/android/libraries/places/internal/zzbca;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdn;

    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/zzbdn;-><init>(Lcom/google/android/libraries/places/internal/zzbdm;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzu:Lcom/google/android/libraries/places/internal/zzbce;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcd;

    const-string v2, "grpc-message"

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/libraries/places/internal/zzbcd;-><init>(Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzbce;Lcom/google/android/libraries/places/internal/zzbcc;)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzs:Lcom/google/android/libraries/places/internal/zzbca;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    return-void
.end method

.method static bridge synthetic zzb([B)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 6

    array-length v0, p0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    goto :goto_2

    :cond_0
    move v0, v3

    :cond_1
    const/16 v4, 0x39

    if-eq v0, v3, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    aget-byte v0, p0, v2

    if-lt v0, v1, :cond_4

    if-gt v0, v4, :cond_4

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v2, v0, 0xa

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    aget-byte v2, p0, v2

    if-lt v2, v1, :cond_4

    if-gt v2, v4, :cond_4

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzbdo;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "Unknown code "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static zzd(I)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    if-ltz p0, :cond_1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzbdp;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdp;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdp;->zza()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzbdq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdq;->zza()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0
.end method

.method static zzh(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzt:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    const-string v2, "code"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzbdj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;-><init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;-><init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbdo;-><init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;-><init>(Lcom/google/android/libraries/places/internal/zzbdj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzw:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzx:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final zzl()Z
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdo;->zzv:Lcom/google/android/libraries/places/internal/zzbdj;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
