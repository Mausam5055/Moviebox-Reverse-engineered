.class public Lcom/google/android/gms/internal/measurement/zzhg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static volatile zza:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzhh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzhh;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_4

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgs;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/work/impl/g1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object p0

    :goto_1
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    move-object v0, p0

    :cond_3
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-object v0
.end method
