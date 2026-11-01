.class public Lcom/google/android/libraries/places/internal/zzmh;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzmh;Lcom/google/android/libraries/places/internal/zzmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzmh;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmh;->zza:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmh;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zzb(C)Lcom/google/android/libraries/places/internal/zzmh;
    .locals 1

    new-instance p0, Lcom/google/android/libraries/places/internal/zzmh;

    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzmh;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmh;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmh;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzmh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzmh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzmh;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static final zzh(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmh;->zzh(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmh;->zza:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmh;->zzh(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzmh;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzme;

    invoke-direct {v0, p0, p0}, Lcom/google/android/libraries/places/internal/zzme;-><init>(Lcom/google/android/libraries/places/internal/zzmh;Lcom/google/android/libraries/places/internal/zzmh;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzmh;->zzg(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzmh;->zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
