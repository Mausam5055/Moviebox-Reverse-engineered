.class public final Lcom/google/android/gms/internal/play_billing/zzcz;
.super Ljava/lang/Object;


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcz;->zza:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcz;->zza:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdd;
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
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzde;

    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>()V

    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
