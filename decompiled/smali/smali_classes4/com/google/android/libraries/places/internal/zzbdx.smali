.class final Lcom/google/android/libraries/places/internal/zzbdx;
.super Lcom/google/android/libraries/places/internal/zzazi;


# static fields
.field static final zza:Ljava/lang/ThreadLocal;

.field private static final zzb:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbdx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdx;->zzb:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdx;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzazi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzazj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdx;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzazj;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazj;->zzb:Lcom/google/android/libraries/places/internal/zzazj;

    :cond_0
    return-object v0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzazj;)Lcom/google/android/libraries/places/internal/zzazj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdx;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdx;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzazj;Lcom/google/android/libraries/places/internal/zzazj;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdx;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    if-eq v0, p1, :cond_0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdx;->zzb:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    const-string v4, "detach"

    const-string v5, "Context was not attached when detaching"

    const-string v3, "io.grpc.ThreadLocalContextStorage"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzazj;->zzb:Lcom/google/android/libraries/places/internal/zzazj;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdx;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdx;->zza:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
