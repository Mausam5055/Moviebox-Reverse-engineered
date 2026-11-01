.class final Lcom/google/android/libraries/places/internal/zzavm;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzavl;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzavl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lcom/google/android/libraries/places/internal/zzavm;->zza:Lcom/google/android/libraries/places/internal/zzavl;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzavl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzavm;->zzb:Lcom/google/android/libraries/places/internal/zzavl;

    return-void
.end method

.method static zza()Lcom/google/android/libraries/places/internal/zzavl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzavm;->zza:Lcom/google/android/libraries/places/internal/zzavl;

    return-object v0
.end method

.method static zzb()Lcom/google/android/libraries/places/internal/zzavl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzavm;->zzb:Lcom/google/android/libraries/places/internal/zzavl;

    return-object v0
.end method
