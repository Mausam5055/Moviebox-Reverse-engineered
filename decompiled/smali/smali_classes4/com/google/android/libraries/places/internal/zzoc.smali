.class final Lcom/google/android/libraries/places/internal/zzoc;
.super Lcom/google/android/libraries/places/internal/zzox;


# instance fields
.field private zza:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzox;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzoc;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoc;->zza:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoc;->zza:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/android/libraries/places/internal/zzoc;->zza:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
