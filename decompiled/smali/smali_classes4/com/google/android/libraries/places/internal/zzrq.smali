.class public final Lcom/google/android/libraries/places/internal/zzrq;
.super Ljava/lang/Object;


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzru;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzrq;->zza:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzrq;->zza:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/google/android/libraries/places/internal/zzru;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzru;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    :catchall_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/libraries/places/internal/zzrv;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzrv;-><init>()V

    :goto_1
    sput-object v2, Lcom/google/android/libraries/places/internal/zzrq;->zzb:Lcom/google/android/libraries/places/internal/zzru;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1

    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/libraries/places/internal/zzrq;->zzb:Lcom/google/android/libraries/places/internal/zzru;

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzru;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
