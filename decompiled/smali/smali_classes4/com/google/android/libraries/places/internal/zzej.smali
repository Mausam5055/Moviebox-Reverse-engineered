.class public final Lcom/google/android/libraries/places/internal/zzej;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzdv;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzej;


# instance fields
.field private final zzc:Lcom/google/android/libraries/places/internal/zzeh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzej;->zza:Lcom/google/android/libraries/places/internal/zzdv;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzej;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzej;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzej;->zzb:Lcom/google/android/libraries/places/internal/zzej;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzeh;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzej;->zza:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Lcom/google/android/libraries/places/internal/zzdv;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzej;->zzc:Lcom/google/android/libraries/places/internal/zzeh;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzej;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzej;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzej;-><init>()V

    return-object v0
.end method
