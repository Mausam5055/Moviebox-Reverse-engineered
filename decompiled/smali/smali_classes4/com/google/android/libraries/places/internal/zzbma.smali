.class final Lcom/google/android/libraries/places/internal/zzbma;
.super Lcom/google/android/libraries/places/internal/zzbbr;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbao;


# static fields
.field static final zza:Ljava/util/logging/Logger;

.field static final zzb:Ljava/util/regex/Pattern;

.field static final zzc:Lcom/google/android/libraries/places/internal/zzbdo;

.field static final zzd:Lcom/google/android/libraries/places/internal/zzbdo;

.field static final zze:Lcom/google/android/libraries/places/internal/zzbdo;

.field private static final zzh:Lcom/google/android/libraries/places/internal/zzbmj;

.field private static final zzi:Lcom/google/android/libraries/places/internal/zzbam;

.field private static final zzj:Lcom/google/android/libraries/places/internal/zzayo;


# instance fields
.field private final zzA:J

.field private final zzB:Lcom/google/android/libraries/places/internal/zzbgh;

.field private final zzC:Lcom/google/android/libraries/places/internal/zzayk;

.field private final zzD:Ljava/util/List;

.field private zzE:Lcom/google/android/libraries/places/internal/zzbcv;

.field private zzF:Z

.field private zzG:Lcom/google/android/libraries/places/internal/zzblg;

.field private volatile zzH:Lcom/google/android/libraries/places/internal/zzbbk;

.field private zzI:Z

.field private final zzJ:Ljava/util/Set;

.field private zzK:Ljava/util/Collection;

.field private final zzL:Ljava/lang/Object;

.field private final zzM:Ljava/util/Set;

.field private final zzN:Lcom/google/android/libraries/places/internal/zzbhg;

.field private final zzO:Lcom/google/android/libraries/places/internal/zzblz;

.field private final zzP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzQ:Z

.field private volatile zzR:Z

.field private final zzS:Ljava/util/concurrent/CountDownLatch;

.field private final zzT:Lcom/google/android/libraries/places/internal/zzbff;

.field private final zzU:Lcom/google/android/libraries/places/internal/zzbfg;

.field private final zzV:Lcom/google/android/libraries/places/internal/zzbfi;

.field private final zzW:Lcom/google/android/libraries/places/internal/zzaym;

.field private final zzX:Lcom/google/android/libraries/places/internal/zzbah;

.field private final zzY:Lcom/google/android/libraries/places/internal/zzbls;

.field private zzZ:Lcom/google/android/libraries/places/internal/zzbmj;

.field private zzaa:Z

.field private final zzab:Z

.field private final zzac:Lcom/google/android/libraries/places/internal/zzbox;

.field private final zzad:J

.field private final zzae:J

.field private final zzaf:Z

.field private final zzag:Lcom/google/android/libraries/places/internal/zzazm;

.field private final zzah:Lcom/google/android/libraries/places/internal/zzbmk;

.field private final zzai:Lcom/google/android/libraries/places/internal/zzbkt;

.field private final zzaj:Lcom/google/android/libraries/places/internal/zzboe;

.field private zzak:I

.field private final zzal:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzam:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzan:Lcom/google/android/libraries/places/internal/zzbij;

.field final zzf:Lcom/google/android/libraries/places/internal/zzbdw;

.field final zzg:Lcom/google/android/libraries/places/internal/zzbji;

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbap;

.field private final zzl:Ljava/lang/String;

.field private final zzm:Lcom/google/android/libraries/places/internal/zzbdb;

.field private final zzn:Lcom/google/android/libraries/places/internal/zzbco;

.field private final zzo:Lcom/google/android/libraries/places/internal/zzbey;

.field private final zzp:Lcom/google/android/libraries/places/internal/zzbfw;

.field private final zzq:Lcom/google/android/libraries/places/internal/zzbfw;

.field private final zzr:Lcom/google/android/libraries/places/internal/zzbfw;

.field private final zzs:Lcom/google/android/libraries/places/internal/zzblu;

.field private final zzt:Ljava/util/concurrent/Executor;

.field private final zzu:Lcom/google/android/libraries/places/internal/zzbky;

.field private final zzv:Lcom/google/android/libraries/places/internal/zzbky;

.field private final zzw:Lcom/google/android/libraries/places/internal/zzbqt;

.field private final zzx:Lcom/google/android/libraries/places/internal/zzazq;

.field private final zzy:Lcom/google/android/libraries/places/internal/zzazd;

.field private final zzz:Lcom/google/android/libraries/places/internal/zznc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/libraries/places/internal/zzbma;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zza:Ljava/util/logging/Logger;

    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzb:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbma;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbma;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbmj;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzbmj;-><init>(Lcom/google/android/libraries/places/internal/zzbmg;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/libraries/places/internal/zzbpn;Ljava/lang/Object;Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzh:Lcom/google/android/libraries/places/internal/zzbmj;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbkl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbkl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzi:Lcom/google/android/libraries/places/internal/zzbam;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbkp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbkp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzj:Lcom/google/android/libraries/places/internal/zzayo;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbmd;Lcom/google/android/libraries/places/internal/zzbfw;Lcom/google/android/libraries/places/internal/zzbij;Lcom/google/android/libraries/places/internal/zzbqn;Lcom/google/android/libraries/places/internal/zznc;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzbqt;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbbr;-><init>()V

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbdw;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbko;

    invoke-direct {v7, v0}, Lcom/google/android/libraries/places/internal/zzbko;-><init>(Lcom/google/android/libraries/places/internal/zzbma;)V

    invoke-direct {v6, v7}, Lcom/google/android/libraries/places/internal/zzbdw;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v6, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbgh;

    invoke-direct {v7}, Lcom/google/android/libraries/places/internal/zzbgh;-><init>()V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzB:Lcom/google/android/libraries/places/internal/zzbgh;

    new-instance v7, Ljava/util/HashSet;

    const/16 v8, 0x10

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {v7, v8, v9}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzJ:Ljava/util/Set;

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzL:Ljava/lang/Object;

    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v9}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzM:Ljava/util/Set;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzblz;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9}, Lcom/google/android/libraries/places/internal/zzblz;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbly;)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzO:Lcom/google/android/libraries/places/internal/zzblz;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzS:Ljava/util/concurrent/CountDownLatch;

    iput v8, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzak:I

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbma;->zzh:Lcom/google/android/libraries/places/internal/zzbmj;

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzZ:Lcom/google/android/libraries/places/internal/zzbmj;

    iput-boolean v10, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzaa:Z

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbox;

    invoke-direct {v7}, Lcom/google/android/libraries/places/internal/zzbox;-><init>()V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzac:Lcom/google/android/libraries/places/internal/zzbox;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazn;->zzc()Lcom/google/android/libraries/places/internal/zzazm;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzag:Lcom/google/android/libraries/places/internal/zzazm;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbkx;

    invoke-direct {v7, v0, v9}, Lcom/google/android/libraries/places/internal/zzbkx;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbkw;)V

    iput-object v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzah:Lcom/google/android/libraries/places/internal/zzbmk;

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbla;

    invoke-direct {v11, v0, v9}, Lcom/google/android/libraries/places/internal/zzbla;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbkz;)V

    iput-object v11, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzg:Lcom/google/android/libraries/places/internal/zzbji;

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbkt;

    invoke-direct {v11, v0, v9}, Lcom/google/android/libraries/places/internal/zzbkt;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbks;)V

    iput-object v11, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzai:Lcom/google/android/libraries/places/internal/zzbkt;

    iget-object v11, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zze:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzl:Ljava/lang/String;

    const-string v12, "Channel"

    invoke-static {v12, v11}, Lcom/google/android/libraries/places/internal/zzbap;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzk:Lcom/google/android/libraries/places/internal/zzbap;

    iput-object v5, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzw:Lcom/google/android/libraries/places/internal/zzbqt;

    iget-object v12, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzk:Lcom/google/android/libraries/places/internal/zzbqn;

    const-string v13, "executorPool"

    invoke-static {v12, v13}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v12, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzal:Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-virtual {v12}, Lcom/google/android/libraries/places/internal/zzbqn;->zzb()Ljava/lang/Object;

    move-result-object v12

    const-string v13, "executor"

    invoke-static {v12, v13}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v12, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzt:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzp:Lcom/google/android/libraries/places/internal/zzbfw;

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbky;

    iget-object v13, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    const-string v10, "offloadExecutorPool"

    invoke-static {v13, v10}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v15, v13}, Lcom/google/android/libraries/places/internal/zzbky;-><init>(Lcom/google/android/libraries/places/internal/zzbqn;)V

    iput-object v15, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzv:Lcom/google/android/libraries/places/internal/zzbky;

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbfd;

    invoke-direct {v10, v2, v9, v15}, Lcom/google/android/libraries/places/internal/zzbfd;-><init>(Lcom/google/android/libraries/places/internal/zzbfw;Lcom/google/android/libraries/places/internal/zzayf;Ljava/util/concurrent/Executor;)V

    iput-object v10, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzq:Lcom/google/android/libraries/places/internal/zzbfw;

    new-instance v13, Lcom/google/android/libraries/places/internal/zzbfd;

    invoke-direct {v13, v2, v9, v15}, Lcom/google/android/libraries/places/internal/zzbfd;-><init>(Lcom/google/android/libraries/places/internal/zzbfw;Lcom/google/android/libraries/places/internal/zzayf;Ljava/util/concurrent/Executor;)V

    iput-object v13, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzr:Lcom/google/android/libraries/places/internal/zzbfw;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzblu;

    invoke-interface {v10}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v13

    invoke-direct {v2, v13, v9}, Lcom/google/android/libraries/places/internal/zzblu;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzblt;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzs:Lcom/google/android/libraries/places/internal/zzblu;

    new-instance v13, Lcom/google/android/libraries/places/internal/zzbfi;

    invoke-interface/range {p7 .. p7}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    move-result-wide v16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Channel for \'"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v8, 0x0

    move-object v9, v13

    move-object/from16 v19, v10

    move-object v10, v15

    move v15, v8

    invoke-direct/range {v13 .. v18}, Lcom/google/android/libraries/places/internal/zzbfi;-><init>(Lcom/google/android/libraries/places/internal/zzbap;IJLjava/lang/String;)V

    iput-object v9, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzV:Lcom/google/android/libraries/places/internal/zzbfi;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbfh;

    invoke-direct {v8, v9, v5}, Lcom/google/android/libraries/places/internal/zzbfh;-><init>(Lcom/google/android/libraries/places/internal/zzbfi;Lcom/google/android/libraries/places/internal/zzbqt;)V

    iput-object v8, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    sget-object v9, Lcom/google/android/libraries/places/internal/zzbjd;->zzm:Lcom/google/android/libraries/places/internal/zzbde;

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzaf:Z

    new-instance v14, Lcom/google/android/libraries/places/internal/zzbey;

    iget-object v15, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzf:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbq;->zzb()Lcom/google/android/libraries/places/internal/zzbbq;

    move-result-object v13

    invoke-direct {v14, v13, v15}, Lcom/google/android/libraries/places/internal/zzbey;-><init>(Lcom/google/android/libraries/places/internal/zzbbq;Ljava/lang/String;)V

    iput-object v14, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzo:Lcom/google/android/libraries/places/internal/zzbey;

    iget-object v13, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzc:Lcom/google/android/libraries/places/internal/zzbdb;

    iput-object v13, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzm:Lcom/google/android/libraries/places/internal/zzbdb;

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbpw;

    const/4 v5, 0x5

    const/4 v4, 0x1

    invoke-direct {v15, v4, v5, v5, v14}, Lcom/google/android/libraries/places/internal/zzbpw;-><init>(ZIILcom/google/android/libraries/places/internal/zzbey;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbco;->zzb()Lcom/google/android/libraries/places/internal/zzbcm;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzbmd;->zzb()I

    const/16 v5, 0x1bb

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbcm;->zzb(I)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v9}, Lcom/google/android/libraries/places/internal/zzbcm;->zzd(Lcom/google/android/libraries/places/internal/zzbde;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbcm;->zzg(Lcom/google/android/libraries/places/internal/zzbdw;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/places/internal/zzbcm;->zze(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v15}, Lcom/google/android/libraries/places/internal/zzbcm;->zzf(Lcom/google/android/libraries/places/internal/zzbcu;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v8}, Lcom/google/android/libraries/places/internal/zzbcm;->zza(Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4, v10}, Lcom/google/android/libraries/places/internal/zzbcm;->zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/places/internal/zzbcm;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcm;->zzh()Lcom/google/android/libraries/places/internal/zzbco;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzn:Lcom/google/android/libraries/places/internal/zzbco;

    const-class v4, Ljava/net/InetSocketAddress;

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v11, v5, v13, v2, v4}, Lcom/google/android/libraries/places/internal/zzbma;->zzo(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbco;Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbcv;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzam:Lcom/google/android/libraries/places/internal/zzbqn;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbky;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/places/internal/zzbky;-><init>(Lcom/google/android/libraries/places/internal/zzbqn;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzu:Lcom/google/android/libraries/places/internal/zzbky;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-direct {v2, v12, v6}, Lcom/google/android/libraries/places/internal/zzbhg;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzbdw;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzN:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-virtual {v2, v7}, Lcom/google/android/libraries/places/internal/zzbhg;->zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzan:Lcom/google/android/libraries/places/internal/zzbij;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzab:Z

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcv;->zza()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/libraries/places/internal/zzbls;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzblr;)V

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzY:Lcom/google/android/libraries/places/internal/zzbls;

    move-object/from16 v4, p6

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzayt;->zza(Lcom/google/android/libraries/places/internal/zzayk;Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzC:Lcom/google/android/libraries/places/internal/zzayk;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzd:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzD:Ljava/util/List;

    const-string v3, "stopwatchSupplier"

    move-object/from16 v4, p5

    invoke-static {v4, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzz:Lcom/google/android/libraries/places/internal/zznc;

    iget-wide v3, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzi:J

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    iput-wide v7, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzA:J

    goto :goto_1

    :cond_0
    sget-wide v7, Lcom/google/android/libraries/places/internal/zzbmd;->zzb:J

    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const-string v2, "invalid idleTimeoutMillis %s"

    invoke-static {v8, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    iget-wide v2, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzi:J

    iput-wide v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzA:J

    :goto_1
    new-instance v2, Lcom/google/android/libraries/places/internal/zzboe;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzblc;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/libraries/places/internal/zzblc;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblb;)V

    invoke-interface/range {v19 .. v19}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzna;->zzb()Lcom/google/android/libraries/places/internal/zzna;

    move-result-object v5

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/google/android/libraries/places/internal/zzboe;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzna;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzaj:Lcom/google/android/libraries/places/internal/zzboe;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzg:Lcom/google/android/libraries/places/internal/zzazq;

    const-string v3, "decompressorRegistry"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzx:Lcom/google/android/libraries/places/internal/zzazq;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzh:Lcom/google/android/libraries/places/internal/zzazd;

    const-string v3, "compressorRegistry"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzy:Lcom/google/android/libraries/places/internal/zzazd;

    const-wide/32 v2, 0x1000000

    iput-wide v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzae:J

    const-wide/32 v2, 0x100000

    iput-wide v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzad:J

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbkm;

    move-object/from16 v3, p7

    invoke-direct {v2, v0, v3}, Lcom/google/android/libraries/places/internal/zzbkm;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbqt;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzT:Lcom/google/android/libraries/places/internal/zzbff;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbff;->zza()Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzU:Lcom/google/android/libraries/places/internal/zzbfg;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbmd;->zzj:Lcom/google/android/libraries/places/internal/zzbah;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzX:Lcom/google/android/libraries/places/internal/zzbah;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbah;->zzd(Lcom/google/android/libraries/places/internal/zzbao;)V

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbmj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzZ:Lcom/google/android/libraries/places/internal/zzbmj;

    return-object p0
.end method

.method static bridge synthetic zzB()Lcom/google/android/libraries/places/internal/zzbmj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzh:Lcom/google/android/libraries/places/internal/zzbmj;

    return-object v0
.end method

.method static bridge synthetic zzC(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbox;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzac:Lcom/google/android/libraries/places/internal/zzbox;

    return-object p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbqt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzw:Lcom/google/android/libraries/places/internal/zzbqt;

    return-object p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzL:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzK:Ljava/util/Collection;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzD:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzH(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzJ:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic zzI(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzt:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzayj;->zzn()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzt:Ljava/util/concurrent/Executor;

    return-object p0

    :cond_0
    return-object p1
.end method

.method static bridge synthetic zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic zzL(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbmj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzZ:Lcom/google/android/libraries/places/internal/zzbmj;

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/libraries/places/internal/zzbma;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzK:Ljava/util/Collection;

    return-void
.end method

.method static bridge synthetic zzN(Lcom/google/android/libraries/places/internal/zzbma;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaa:Z

    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/libraries/places/internal/zzbma;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzQ:Z

    return-void
.end method

.method static bridge synthetic zzP(Lcom/google/android/libraries/places/internal/zzbma;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzah(Z)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzN:Lcom/google/android/libraries/places/internal/zzbhg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbhg;->zzm(Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    const/4 v2, 0x2

    const-string v3, "Entering IDLE state"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzB:Lcom/google/android/libraries/places/internal/zzbgh;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzbgh;->zza(Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzL:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzN:Lcom/google/android/libraries/places/internal/zzbhg;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzg:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbji;->zzd([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbma;->zzV()V

    :cond_0
    return-void
.end method

.method static bridge synthetic zzQ(Lcom/google/android/libraries/places/internal/zzbma;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzR:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    const/4 v1, 0x2

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzX:Lcom/google/android/libraries/places/internal/zzbah;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbah;->zzg(Lcom/google/android/libraries/places/internal/zzbao;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzal:Lcom/google/android/libraries/places/internal/zzbqn;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzt:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzu:Lcom/google/android/libraries/places/internal/zzbky;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbky;->zzb()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzv:Lcom/google/android/libraries/places/internal/zzbky;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbky;->zzb()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzq:Lcom/google/android/libraries/places/internal/zzbfw;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfw;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzR:Z

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic zzR(Lcom/google/android/libraries/places/internal/zzbma;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzF:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbcv;->zzb()V

    :cond_0
    return-void
.end method

.method static bridge synthetic zzS(Lcom/google/android/libraries/places/internal/zzbma;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbma;->zzag()V

    return-void
.end method

.method static bridge synthetic zzT(Lcom/google/android/libraries/places/internal/zzbma;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzah(Z)V

    return-void
.end method

.method static bridge synthetic zzU(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzai(Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method static bridge synthetic zzX(Lcom/google/android/libraries/places/internal/zzbma;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzab:Z

    return p0
.end method

.method static bridge synthetic zzY(Lcom/google/android/libraries/places/internal/zzbma;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaf:Z

    return p0
.end method

.method static bridge synthetic zzZ(Lcom/google/android/libraries/places/internal/zzbma;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaa:Z

    return p0
.end method

.method static bridge synthetic zzaa(Lcom/google/android/libraries/places/internal/zzbma;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzR:Z

    return p0
.end method

.method static bridge synthetic zzab(Lcom/google/android/libraries/places/internal/zzbma;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzQ:Z

    return p0
.end method

.method static bridge synthetic zzac(Lcom/google/android/libraries/places/internal/zzbma;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzak:I

    return p0
.end method

.method static bridge synthetic zzad(Lcom/google/android/libraries/places/internal/zzbma;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzak:I

    return-void
.end method

.method static bridge synthetic zzae(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbij;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzan:Lcom/google/android/libraries/places/internal/zzbij;

    return-object p0
.end method

.method private static zzaf(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbco;Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbcv;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/libraries/places/internal/zzbdb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcw;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v4

    :goto_1
    const-string v7, ""

    if-nez v6, :cond_1

    sget-object v8, Lcom/google/android/libraries/places/internal/zzbma;->zzb:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdb;->zzc()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/internal/zzbdb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcw;

    move-result-object v6

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    const-string p1, ")"

    const-string v4, " ("

    if-nez v6, :cond_3

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    aput-object v7, p1, v0

    const-string p0, "Could not find a NameResolverProvider for %s%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbcw;->zzd()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    aput-object p0, p3, v0

    const-string p0, "Address types of NameResolver \'%s\' for \'%s\' not supported by transport"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {v6, v5, p2}, Lcom/google/android/libraries/places/internal/zzbcq;->zza(Ljava/net/URI;Lcom/google/android/libraries/places/internal/zzbco;)Lcom/google/android/libraries/places/internal/zzbcv;

    move-result-object p2

    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    aput-object v7, p1, v0

    const-string p0, "cannot create a NameResolver for %s%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final zzag()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzA:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaj:Lcom/google/android/libraries/places/internal/zzboe;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzboe;->zzi(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private final zzah(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzF:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbcv;->zzc()V

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzF:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzm:Lcom/google/android/libraries/places/internal/zzbdb;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzn:Lcom/google/android/libraries/places/internal/zzbco;

    const-class v3, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {p1, v2, v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbma;->zzo(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbco;Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbcv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzblg;->zza:Lcom/google/android/libraries/places/internal/zzbeq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbeq;->zzc()V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    :cond_4
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzH:Lcom/google/android/libraries/places/internal/zzbbk;

    return-void
.end method

.method private final zzai(Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzH:Lcom/google/android/libraries/places/internal/zzbbk;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzN:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbhg;->zzm(Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbma;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzae:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbma;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzad:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zznc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzz:Lcom/google/android/libraries/places/internal/zznc;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    return-object p0
.end method

.method static bridge synthetic zzh()Lcom/google/android/libraries/places/internal/zzayo;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzj:Lcom/google/android/libraries/places/internal/zzayo;

    return-object v0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzy:Lcom/google/android/libraries/places/internal/zzazd;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzx:Lcom/google/android/libraries/places/internal/zzazq;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbah;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzX:Lcom/google/android/libraries/places/internal/zzbah;

    return-object p0
.end method

.method static bridge synthetic zzl()Lcom/google/android/libraries/places/internal/zzbam;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zzi:Lcom/google/android/libraries/places/internal/zzbam;

    return-object v0
.end method

.method static bridge synthetic zzm(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbbk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzH:Lcom/google/android/libraries/places/internal/zzbbk;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbcv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    return-object p0
.end method

.method static zzo(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbco;Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbcv;
    .locals 2

    invoke-static {p0, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbma;->zzaf(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbco;Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbcv;

    move-result-object p0

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbpv;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbfa;

    new-instance p4, Lcom/google/android/libraries/places/internal/zzbij;

    invoke-direct {p4}, Lcom/google/android/libraries/places/internal/zzbij;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzg()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbco;->zze()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    invoke-direct {p2, p4, v0, v1}, Lcom/google/android/libraries/places/internal/zzbfa;-><init>(Lcom/google/android/libraries/places/internal/zzbij;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbdw;)V

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbco;->zze()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzbpv;-><init>(Lcom/google/android/libraries/places/internal/zzbcv;Lcom/google/android/libraries/places/internal/zzbpq;Lcom/google/android/libraries/places/internal/zzbdw;)V

    return-object p1
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbff;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzT:Lcom/google/android/libraries/places/internal/zzbff;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzU:Lcom/google/android/libraries/places/internal/zzbfg;

    return-object p0
.end method

.method static bridge synthetic zzr(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzV:Lcom/google/android/libraries/places/internal/zzbfi;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzq:Lcom/google/android/libraries/places/internal/zzbfw;

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbgh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzB:Lcom/google/android/libraries/places/internal/zzbgh;

    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbhg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzN:Lcom/google/android/libraries/places/internal/zzbhg;

    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbkt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzai:Lcom/google/android/libraries/places/internal/zzbkt;

    return-object p0
.end method

.method static bridge synthetic zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    return-object p0
.end method

.method static bridge synthetic zzx(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbls;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzY:Lcom/google/android/libraries/places/internal/zzbls;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzs:Lcom/google/android/libraries/places/internal/zzblu;

    return-object p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzO:Lcom/google/android/libraries/places/internal/zzblz;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzk:Lcom/google/android/libraries/places/internal/zzbap;

    const-string v2, "logId"

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbap;->zza()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "target"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzV()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzI:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzg:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbji;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaj:Lcom/google/android/libraries/places/internal/zzboe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzboe;->zzh(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbma;->zzag()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    const/4 v1, 0x2

    const-string v2, "Exiting idle mode"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzblg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzblg;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblf;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzo:Lcom/google/android/libraries/places/internal/zzbey;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbeq;

    invoke-direct {v2, v1, v0}, Lcom/google/android/libraries/places/internal/zzbeq;-><init>(Lcom/google/android/libraries/places/internal/zzbey;Lcom/google/android/libraries/places/internal/zzbbd;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzblg;->zza:Lcom/google/android/libraries/places/internal/zzbeq;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzG:Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzB:Lcom/google/android/libraries/places/internal/zzbgh;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbgh;->zza(Lcom/google/android/libraries/places/internal/zzaze;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzblj;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/libraries/places/internal/zzblj;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblg;Lcom/google/android/libraries/places/internal/zzbcv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzE:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbcv;->zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzF:Z

    :cond_2
    :goto_1
    return-void
.end method

.method final zzW(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzI:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzI:Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzaj:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzh(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzah(Z)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbkn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbkn;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzai(Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzY:Lcom/google/android/libraries/places/internal/zzbls;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbls;->zzg(Lcom/google/android/libraries/places/internal/zzbam;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzW:Lcom/google/android/libraries/places/internal/zzaym;

    const/4 v0, 0x4

    const-string v1, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzB:Lcom/google/android/libraries/places/internal/zzbgh;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbgh;->zza(Lcom/google/android/libraries/places/internal/zzaze;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzC:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzC:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayk;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbma;->zzk:Lcom/google/android/libraries/places/internal/zzbap;

    return-object v0
.end method
