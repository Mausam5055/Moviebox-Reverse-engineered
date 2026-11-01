.class public final Lcom/google/android/libraries/places/internal/zzpa;
.super Ljava/lang/Object;


# static fields
.field private static final zza:[[C


# instance fields
.field private final zzb:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpa;->zza:[[C

    return-void
.end method

.method private constructor <init>([[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzpa;->zzb:[[C

    return-void
.end method

.method public static zza(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzpa;
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpa;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/internal/zzpa;->zza:[[C

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[C

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzpa;-><init>([[C)V

    return-object v0
.end method


# virtual methods
.method final zzb()[[C
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzpa;->zzb:[[C

    return-object v0
.end method
