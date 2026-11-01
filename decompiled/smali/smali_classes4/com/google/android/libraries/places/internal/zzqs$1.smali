.class Lcom/google/android/libraries/places/internal/zzqs$1;
.super Lcom/google/android/libraries/places/internal/zzqm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzqm;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Class;I)Lcom/google/android/libraries/places/internal/zzpq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/google/android/libraries/places/internal/zzpq;"
        }
    .end annotation

    sget-object p1, Lcom/google/android/libraries/places/internal/zzpq;->zza:Lcom/google/android/libraries/places/internal/zzpq;

    return-object p1
.end method

.method public zzb(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqs;->zzs()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqs;->zzp()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzqs;->zzr()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrq;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
