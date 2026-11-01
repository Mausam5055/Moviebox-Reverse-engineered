.class public final Lcom/google/android/libraries/places/internal/zzayt;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzayo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzayq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzayq;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzayt;->zza:Lcom/google/android/libraries/places/internal/zzayo;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzayk;Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzayk;
    .locals 3

    const-string v0, "channel"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzayp;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzays;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/libraries/places/internal/zzays;-><init>(Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayp;Lcom/google/android/libraries/places/internal/zzayr;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
