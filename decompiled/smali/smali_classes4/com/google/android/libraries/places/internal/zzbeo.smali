.class public final Lcom/google/android/libraries/places/internal/zzbeo;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbeo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbeo;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeo;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p2, "keepalive time nanos"

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbeo;->zzb:Ljava/lang/String;

    const-wide p2, 0x7fffffffffffffffL

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbeo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbeo;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbeo;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbeo;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic zzd()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbeo;->zza:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzben;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeo;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzben;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/libraries/places/internal/zzben;-><init>(Lcom/google/android/libraries/places/internal/zzbeo;JLcom/google/android/libraries/places/internal/zzbem;)V

    return-object v1
.end method
