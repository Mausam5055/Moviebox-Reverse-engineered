.class public final Lcom/google/android/libraries/places/internal/zzbqn;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbql;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqn;->zza:Lcom/google/android/libraries/places/internal/zzbql;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbqn;-><init>(Lcom/google/android/libraries/places/internal/zzbql;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqn;->zza:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqm;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqn;->zza:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqm;->zzc(Lcom/google/android/libraries/places/internal/zzbql;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
