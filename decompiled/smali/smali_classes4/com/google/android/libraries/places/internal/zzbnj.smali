.class final Lcom/google/android/libraries/places/internal/zzbnj;
.super Lcom/google/android/libraries/places/internal/zzbbm;


# static fields
.field private static final zzf:Ljava/util/logging/Logger;


# instance fields
.field private final zzg:Lcom/google/android/libraries/places/internal/zzbbd;

.field private final zzh:Ljava/util/Map;

.field private zzi:Lcom/google/android/libraries/places/internal/zzbnd;

.field private zzj:I

.field private zzk:Z

.field private zzl:Lcom/google/android/libraries/places/internal/zzbdv;

.field private zzm:Lcom/google/android/libraries/places/internal/zzaze;

.field private zzn:Lcom/google/android/libraries/places/internal/zzaze;

.field private final zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnj;->zzf:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzj:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzk:Z

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    const-string v1, "GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzj(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzo:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbnd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbnj;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzj()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnj;->zzf:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbdv;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzl:Lcom/google/android/libraries/places/internal/zzbdv;

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbni;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzq(Lcom/google/android/libraries/places/internal/zzbni;)V

    return-void
.end method

.method private final zzn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzl:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzl:Lcom/google/android/libraries/places/internal/zzbdv;

    :cond_0
    return-void
.end method

.method private final zzo()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzl:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zzb()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zzb()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbna;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbna;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    const-wide/16 v3, 0xfa

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzl:Lcom/google/android/libraries/places/internal/zzbdv;

    :catch_0
    :cond_1
    return-void
.end method

.method private final zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method private final zzq(Lcom/google/android/libraries/places/internal/zzbni;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zza(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzb(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbbc;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzb(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzf(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbnc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnc;->zzb(Lcom/google/android/libraries/places/internal/zzbnc;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zzd()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_3

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzb(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final zzr(Lcom/google/android/libraries/places/internal/zzbbj;)Ljava/net/SocketAddress;
    .locals 3

    check-cast p0, Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zze:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v1, "%s does not have exactly one group"

    invoke-static {v2, v1, p0}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/SocketAddress;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzk:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v0, "Already shut down"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ", attrs="

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzazs;

    if-nez v3, :cond_2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameResolver returned address list with null endpoint. addrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object p1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzk:Z

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/libraries/places/internal/zzbne;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbne;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbne;->zza:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    move-object v0, p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zznu;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zznu;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zznu;->zzf(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zznu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zznu;->zzg()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnd;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zze(Lcom/google/android/libraries/places/internal/zznx;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzh(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzb()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzd(Ljava/util/List;)V

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzd()V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zze(Lcom/google/android/libraries/places/internal/zznx;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    goto :goto_2

    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq p1, v0, :cond_d

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_b

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_c

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbnh;

    invoke-direct {p1, p0, p0}, Lcom/google/android/libraries/places/internal/zzbnh;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnj;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzn()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    goto :goto_4

    :cond_d
    :goto_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzn()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_e
    :goto_4
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method public final zzd()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbnd;->zzb()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbnc;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/libraries/places/internal/zzbnc;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnb;)V

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbba;->zzb()Lcom/google/android/libraries/places/internal/zzbax;

    move-result-object v5

    new-instance v6, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    new-array v2, v0, [Lcom/google/android/libraries/places/internal/zzazs;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzbax;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbax;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbbm;->zzb:Lcom/google/android/libraries/places/internal/zzbay;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/libraries/places/internal/zzbax;->zza(Lcom/google/android/libraries/places/internal/zzbay;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbax;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbax;->zzc()Lcom/google/android/libraries/places/internal/zzbba;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbni;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/libraries/places/internal/zzbni;-><init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbnc;)V

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzbnc;->zzd(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzbni;)V

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzblx;->zza:Lcom/google/android/libraries/places/internal/zzbba;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbba;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbbm;->zzc:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzaye;->zzc(Lcom/google/android/libraries/places/internal/zzayc;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzazf;->zzb(Lcom/google/android/libraries/places/internal/zzaze;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzbnc;->zzc(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzazf;)V

    :cond_2
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbmz;

    invoke-direct {v3, p0, v2}, Lcom/google/android/libraries/places/internal/zzbmz;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbbj;)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbbj;->zzc(Lcom/google/android/libraries/places/internal/zzbbl;)V

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbni;->zzc()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbni;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbni;->zzg(Lcom/google/android/libraries/places/internal/zzbni;Lcom/google/android/libraries/places/internal/zzaze;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzo()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzf()Z

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnj;->zzf:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "requestConnection"

    const-string v3, "Requesting a connection even though we have a READY subchannel"

    const-string v4, "io.grpc.internal.PickFirstLeafLoadBalancer"

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzo:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzo()V

    return-void

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final zze()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbnj;->zzf:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v4, "shutdown"

    const-string v5, "Shutting down, currently have {} subchannels created"

    const-string v3, "io.grpc.internal.PickFirstLeafLoadBalancer"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzn()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzr(Lcom/google/android/libraries/places/internal/zzbbj;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbni;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v2, :cond_f

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbbd;->zzd()V

    :cond_1
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbni;->zzg(Lcom/google/android/libraries/places/internal/zzbni;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzn:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v3, :cond_f

    if-eq v0, v2, :cond_e

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    const/4 v1, 0x2

    if-eq v3, v1, :cond_5

    const/4 p1, 0x3

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzd()V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbnh;

    invoke-direct {p1, p0, p0}, Lcom/google/android/libraries/places/internal/zzbnh;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnj;)V

    invoke-direct {p0, v2, p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unsupported state:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v0

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzf()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzn()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbnd;->zza()I

    move-result v0

    if-lt p1, v0, :cond_f

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbni;->zzh()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_8
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zzd()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzj:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzj:I

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbnd;->zza()I

    move-result p2

    if-ge p1, p2, :cond_9

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzk:Z

    if-eqz p1, :cond_f

    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzk:Z

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzj:I

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzg:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbd;->zzd()V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzn()V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbni;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbni;->zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbni;->zze()Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    goto :goto_0

    :cond_c
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v1, p2}, Lcom/google/android/libraries/places/internal/zzbni;->zzg(Lcom/google/android/libraries/places/internal/zzbni;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzh:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbni;->zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbnj;->zzr(Lcom/google/android/libraries/places/internal/zzbbj;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzi:Lcom/google/android/libraries/places/internal/zzbnd;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzr(Lcom/google/android/libraries/places/internal/zzbbj;)Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzh(Ljava/net/SocketAddress;)Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzq(Lcom/google/android/libraries/places/internal/zzbni;)V

    return-void

    :cond_d
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnj;->zzm:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/libraries/places/internal/zzbnf;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbnj;->zzp(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_f
    :goto_1
    return-void
.end method
