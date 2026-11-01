.class final Lcom/google/android/libraries/places/internal/zzbkl;
.super Lcom/google/android/libraries/places/internal/zzbam;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbam;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbal;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Resolution is pending"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
