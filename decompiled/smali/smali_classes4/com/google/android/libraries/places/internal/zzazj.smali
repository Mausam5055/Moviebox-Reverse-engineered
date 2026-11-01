.class public final Lcom/google/android/libraries/places/internal/zzazj;
.super Ljava/lang/Object;


# static fields
.field static final zza:Ljava/util/logging/Logger;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzazj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzazj;->zza:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzazj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzazj;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzazj;->zzb:Lcom/google/android/libraries/places/internal/zzazj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzazj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazh;->zza:Lcom/google/android/libraries/places/internal/zzazi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazi;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazj;->zzb:Lcom/google/android/libraries/places/internal/zzazj;

    :cond_0
    return-object v0
.end method

.method static zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzazj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazh;->zza:Lcom/google/android/libraries/places/internal/zzazi;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzazi;->zzb(Lcom/google/android/libraries/places/internal/zzazj;)Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazj;->zzb:Lcom/google/android/libraries/places/internal/zzazj;

    :cond_0
    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzazg;Ljava/util/concurrent/Executor;)V
    .locals 0

    const-string p1, "executor"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzazj;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzazj;)V
    .locals 1

    const-string v0, "toAttach"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzazh;->zza:Lcom/google/android/libraries/places/internal/zzazi;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzazi;->zzc(Lcom/google/android/libraries/places/internal/zzazj;Lcom/google/android/libraries/places/internal/zzazj;)V

    return-void
.end method
