.class public final Lcom/google/android/libraries/places/internal/zzqk;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzqg;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzqf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqi;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqk;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqj;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqk;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/libraries/places/internal/zzqc;
    .locals 3

    sget-object v0, Lcom/google/android/libraries/places/internal/zzqk;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzqc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzqc;-><init>(Lcom/google/android/libraries/places/internal/zzqg;Lcom/google/android/libraries/places/internal/zzqb;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzqk;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzqc;->zza(Lcom/google/android/libraries/places/internal/zzqf;)Lcom/google/android/libraries/places/internal/zzqc;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzpr;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzqc;->zzg(Lcom/google/android/libraries/places/internal/zzpr;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
