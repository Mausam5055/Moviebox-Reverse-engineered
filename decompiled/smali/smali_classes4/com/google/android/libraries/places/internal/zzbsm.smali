.class final Lcom/google/android/libraries/places/internal/zzbsm;
.super Ljava/lang/Object;


# static fields
.field static final zza:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/libraries/places/internal/zzbtm;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zzd:Lcom/google/android/libraries/places/internal/zzbtm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    return-void
.end method
