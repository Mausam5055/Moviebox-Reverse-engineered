.class public abstract Lcom/google/android/libraries/places/internal/zzatu;
.super Lcom/google/android/libraries/places/internal/zzart;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzatu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzato<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/zzart<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;

.field public static final synthetic zzd:I


# instance fields
.field protected zzc:Lcom/google/android/libraries/places/internal/zzawo;

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzatu;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzart;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawo;->zzc()Lcom/google/android/libraries/places/internal/zzawo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zzc:Lcom/google/android/libraries/places/internal/zzawo;

    return-void
.end method

.method static varargs zzaA(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavr;-><init>(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaD()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzatu;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zzaG(Lcom/google/android/libraries/places/internal/zzatu;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zzh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method

.method static zzas(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzatu;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzatu;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzatu;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzatu;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzawx;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzatu;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzatu;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static zzau()Lcom/google/android/libraries/places/internal/zzatz;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatv;->zzf()Lcom/google/android/libraries/places/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method protected static zzav(Lcom/google/android/libraries/places/internal/zzatz;)Lcom/google/android/libraries/places/internal/zzatz;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzatz;->zzg(I)Lcom/google/android/libraries/places/internal/zzatz;

    move-result-object p0

    return-object p0
.end method

.method protected static zzaw()Lcom/google/android/libraries/places/internal/zzaub;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauu;->zzf()Lcom/google/android/libraries/places/internal/zzauu;

    move-result-object v0

    return-object v0
.end method

.method protected static zzax()Lcom/google/android/libraries/places/internal/zzauc;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavq;->zze()Lcom/google/android/libraries/places/internal/zzavq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzd(I)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/libraries/places/internal/zzavt;)I
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzatu;

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzart;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzap()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzart;->zza:I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzap()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzavh;->zza(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaC()V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaD()V

    return-void
.end method

.method final zzaD()V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    return-void
.end method

.method final zzaF(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    return-void
.end method

.method final zzaH()Z
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic zzaI()Lcom/google/android/libraries/places/internal/zzave;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzato;

    return-object v0
.end method

.method public final synthetic zzaJ()Lcom/google/android/libraries/places/internal/zzave;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzato;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzato;->zzq(Lcom/google/android/libraries/places/internal/zzatu;)Lcom/google/android/libraries/places/internal/zzato;

    return-object v0
.end method

.method public final zzaK(Lcom/google/android/libraries/places/internal/zzasx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasy;->zza(Lcom/google/android/libraries/places/internal/zzasx;)Lcom/google/android/libraries/places/internal/zzasy;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zzj(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    return-void
.end method

.method public final synthetic zzaL()Lcom/google/android/libraries/places/internal/zzavf;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    return-object v0
.end method

.method public final zzaM()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaG(Lcom/google/android/libraries/places/internal/zzatu;Z)Z

    move-result v0

    return v0
.end method

.method final zzak(Lcom/google/android/libraries/places/internal/zzavt;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v0
.end method

.method final zzap()I
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzaq()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/zzatu;->zzc(Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/zzatu;->zzc(Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzatu;->zze:I

    :goto_0
    return v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final zzar()Lcom/google/android/libraries/places/internal/zzato;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzato;

    return-object v0
.end method

.method final zzat()Lcom/google/android/libraries/places/internal/zzatu;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    return-object v0
.end method

.method public final zzaz()Lcom/google/android/libraries/places/internal/zzavn;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavn;

    return-object v0
.end method

.method protected abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
