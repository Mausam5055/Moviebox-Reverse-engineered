.class final Lcom/google/android/libraries/places/internal/zzbtk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final zza:Ljava/util/List;

.field private zzb:Z

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzb:Z

    return p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_0

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbto;->zza:[Ljava/lang/String;

    :cond_0
    const-string v1, "supports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    :goto_0
    const-string v1, "unsupported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzb:Z

    return-object v2

    :cond_4
    :goto_1
    const-string v1, "protocols"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v1, p3

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    return-object p1

    :cond_6
    :goto_2
    const-string v1, "selectProtocol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_7

    const-string v1, "select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_a

    array-length v0, p3

    if-ne v0, v3, :cond_a

    aget-object v0, p3, v4

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move p2, v4

    :goto_3
    if-ge p2, p1, :cond_9

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    return-object p1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    return-object p1

    :cond_a
    const-string v0, "protocolSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    array-length p1, p3

    if-ne p1, v3, :cond_c

    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    return-object v2

    :cond_c
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
