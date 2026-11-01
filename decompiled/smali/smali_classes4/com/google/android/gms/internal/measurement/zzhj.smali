.class public abstract Lcom/google/android/gms/internal/measurement/zzhj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzhu;

.field private static volatile zzc:Z

.field private static zzd:Lcom/google/android/gms/internal/measurement/zzhy;

.field private static final zze:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/measurement/zzhr;

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/Object;

.field private volatile zzi:I

.field private volatile zzj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzk:Z

.field private volatile zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhy;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzho;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzho;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>(Lcom/google/android/gms/internal/measurement/zzhx;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zzd:Lcom/google/android/gms/internal/measurement/zzhy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhr;",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzi:I

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass one of SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzh:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzk:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzl:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzht;)V
    .locals 0

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzhj;-><init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/google/android/gms/internal/measurement/zzhj;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzhq;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzhq;-><init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object p3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Double;Z)Lcom/google/android/gms/internal/measurement/zzhj;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzhp;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object p3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Long;Z)Lcom/google/android/gms/internal/measurement/zzhj;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzhn;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzhn;-><init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzhs;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method static synthetic zza(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhu;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zze:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzh:Lcom/google/common/base/f;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhc;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhc;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zze:Z

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzg:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhu;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzhm;-><init>()V

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzgu;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzgu;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzhm;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzgu;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzgu;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzhm;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static zzb(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    if-nez v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhj;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    if-nez v1, :cond_5

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhj;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Landroid/content/Context;

    move-result-object v2

    if-eq v2, p0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgu;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zza()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhc;->zza()V

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhl;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgv;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzgv;-><init>(Landroid/content/Context;Lcom/google/common/base/q;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzhj;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzhj;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_5
    return-void
.end method

.method public static zzc()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method static synthetic zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final zze()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzh:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzk:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zzd:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhj;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzi:I

    if-ge v1, v0, :cond_a

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzi:I

    if-ge v1, v0, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhj;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhu;->zzb()Lcom/google/common/base/q;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhh;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzg:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v4, v7}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Must call PhenotypeFlagInitializer.maybeInit() first"

    invoke-static {v4, v5}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zzf:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzb(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzb(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Lcom/google/android/gms/internal/measurement/zzhu;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zze()Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zze()Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_8
    :goto_3
    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzj:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzi:I

    :cond_9
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzj:Ljava/lang/Object;

    return-object v0
.end method

.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhj;->zzf:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
