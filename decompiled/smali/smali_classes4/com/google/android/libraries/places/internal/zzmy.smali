.class public final Lcom/google/android/libraries/places/internal/zzmy;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzma;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzmv;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzmy;->zza:Lcom/google/android/libraries/places/internal/zzma;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzmy;)Lcom/google/android/libraries/places/internal/zzma;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzmy;->zza:Lcom/google/android/libraries/places/internal/zzma;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmy;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzmv;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzmv;-><init>(Lcom/google/android/libraries/places/internal/zzma;)V

    sget-object p0, Lcom/google/android/libraries/places/internal/zzly;->zza:Lcom/google/android/libraries/places/internal/zzma;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/android/libraries/places/internal/zzmy;-><init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V

    return-object v0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmy;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private final zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzmu;-><init>(Lcom/google/android/libraries/places/internal/zzmv;Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmy;->zzb:Lcom/google/android/libraries/places/internal/zzmv;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzmy;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/google/android/libraries/places/internal/zzmy;-><init>(Lcom/google/android/libraries/places/internal/zzmv;ZLcom/google/android/libraries/places/internal/zzma;I)V

    return-object v1
.end method

.method public final zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzmw;-><init>(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    const-string p1, "3.5.0"

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmy;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
