.class final Lcom/google/android/libraries/places/internal/zzbrx;
.super Lcom/google/android/libraries/places/internal/zzbjg;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbsp;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbry;

.field private final zzb:I

.field private final zzc:Ljava/lang/Object;

.field private zzd:Ljava/util/List;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbwb;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbrk;

.field private final zzl:Lcom/google/android/libraries/places/internal/zzbsu;

.field private final zzm:Lcom/google/android/libraries/places/internal/zzbsf;

.field private zzn:Z

.field private final zzo:Lcom/google/android/libraries/places/internal/zzbvs;

.field private zzp:Lcom/google/android/libraries/places/internal/zzbsq;

.field private zzq:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbry;ILcom/google/android/libraries/places/internal/zzbqo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbrk;Lcom/google/android/libraries/places/internal/zzbsu;Lcom/google/android/libraries/places/internal/zzbsf;ILjava/lang/String;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzB(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbqz;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1, p10}, Lcom/google/android/libraries/places/internal/zzbjg;-><init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzayj;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zze:Lcom/google/android/libraries/places/internal/zzbwb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzf:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzh:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzk:Lcom/google/android/libraries/places/internal/zzbrk;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzl:Lcom/google/android/libraries/places/internal/zzbsu;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iput p8, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzi:I

    iput p8, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    iput p8, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzb:I

    invoke-static {p9}, Lcom/google/android/libraries/places/internal/zzbvr;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbvs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzo:Lcom/google/android/libraries/places/internal/zzbvs;

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/libraries/places/internal/zzbrx;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzc:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzK(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzQ(Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbwb;ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzl:Lcom/google/android/libraries/places/internal/zzbsu;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzp:Lcom/google/android/libraries/places/internal/zzbsq;

    invoke-virtual {v0, p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzbsu;->zze(ZLcom/google/android/libraries/places/internal/zzbsq;Lcom/google/android/libraries/places/internal/zzbwb;Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zze:Lcom/google/android/libraries/places/internal/zzbwb;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzf:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzf:Z

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzg:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzg:Z

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbcf;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzE(Lcom/google/android/libraries/places/internal/zzbry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzF(Lcom/google/android/libraries/places/internal/zzbry;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzT()Z

    move-result v2

    const-string v3, "headers"

    invoke-static {p1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "authority"

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzh:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzi:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzj:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbar;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbrm;->zzb:Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbrm;->zza:Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbrm;->zzc:Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbtt;->zze:Lcom/google/android/libraries/places/internal/zzbwf;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v1

    invoke-direct {v2, v5, v1}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtt;->zzc:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbca;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbrm;->zze:Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbrm;->zzf:Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbqu;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)[[B

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    move-result-object v2

    aget-byte v2, v2, p2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-direct {v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzd:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzR(Lcom/google/android/libraries/places/internal/zzbry;)V

    return-void
.end method

.method private final zzQ(Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzh:Z

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-virtual {p2, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzQ(Lcom/google/android/libraries/places/internal/zzbry;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzd:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zze:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    if-nez p3, :cond_1

    new-instance p3, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {p3}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    :cond_1
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method


# virtual methods
.method protected final zzA(Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzQ(Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method public final zzE(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzb:I

    int-to-float v1, p1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzi:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzi:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzk:Lcom/google/android/libraries/places/internal/zzbrk;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzk(IJ)V

    :cond_0
    return-void
.end method

.method public final zzF(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zze(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzQ(Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method final zzG()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    return v0
.end method

.method final zzH()Lcom/google/android/libraries/places/internal/zzbsq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzp:Lcom/google/android/libraries/places/internal/zzbsq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzI()Lcom/google/android/libraries/places/internal/zzbvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzo:Lcom/google/android/libraries/places/internal/zzbvs;

    return-object v0
.end method

.method public final zzN(I)V
    .locals 9

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "the stream has been started with id %s"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzq(ZLjava/lang/String;I)V

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzl:Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbsu;->zzc(Lcom/google/android/libraries/places/internal/zzbsp;I)Lcom/google/android/libraries/places/internal/zzbsq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzp:Lcom/google/android/libraries/places/internal/zzbsq;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p1

    invoke-super {p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzt()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzm()Lcom/google/android/libraries/places/internal/zzbqz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbqz;->zzb()V

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzk:Lcom/google/android/libraries/places/internal/zzbrk;

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzd:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/libraries/places/internal/zzbrk;->zzj(ZZIILjava/util/List;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzz(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbqo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzd()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzd:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zze:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzl:Lcom/google/android/libraries/places/internal/zzbsu;

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzf:Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzp:Lcom/google/android/libraries/places/internal/zzbsq;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zze:Lcom/google/android/libraries/places/internal/zzbwb;

    iget-boolean v4, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzg:Z

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbsu;->zze(ZLcom/google/android/libraries/places/internal/zzbsq;Lcom/google/android/libraries/places/internal/zzbwb;Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzn:Z

    :cond_2
    return-void
.end method

.method public final zzO(Lcom/google/android/libraries/places/internal/zzbwb;ZI)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzi:I

    add-int/2addr v0, p3

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzi:I

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzj:I

    if-gez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzk:Lcom/google/android/libraries/places/internal/zzbrk;

    iget p2, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbtp;->zzh:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string p2, "Received data size exceeded our receiving window size"

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_0
    new-instance p3, Lcom/google/android/libraries/places/internal/zzbsl;

    invoke-direct {p3, p1}, Lcom/google/android/libraries/places/internal/zzbsl;-><init>(Lcom/google/android/libraries/places/internal/zzbwb;)V

    invoke-super {p0, p3, p2}, Lcom/google/android/libraries/places/internal/zzbjg;->zzB(Lcom/google/android/libraries/places/internal/zzbnv;Z)V

    return-void
.end method

.method public final zzP(Ljava/util/List;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsv;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbjg;->zzD(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsv;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbjg;->zzC(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method public final zze(Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbee;->zzk()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzbrx;->zzm:Lcom/google/android/libraries/places/internal/zzbsf;

    iget v10, v0, Lcom/google/android/libraries/places/internal/zzbrx;->zzq:I

    sget-object v12, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/google/android/libraries/places/internal/zzbee;->zze(Z)V

    return-void
.end method

.method public final zzz(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrx;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
