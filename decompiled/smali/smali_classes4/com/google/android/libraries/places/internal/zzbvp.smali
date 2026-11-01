.class public final Lcom/google/android/libraries/places/internal/zzbvp;
.super Ljava/lang/Object;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzbvs;

.field static final zzb:Lcom/google/android/libraries/places/internal/zzbvq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvs;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbvs;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvq;

    invoke-direct {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbvq;-><init>(J)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zzb:Lcom/google/android/libraries/places/internal/zzbvq;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
