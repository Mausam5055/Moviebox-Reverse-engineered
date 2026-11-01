.class final Lcom/google/android/libraries/places/internal/zzbox;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbox;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method final zza(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbox;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method
