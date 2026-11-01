.class public abstract Lcom/google/android/libraries/places/internal/zzka;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zzb(I)Lcom/google/android/libraries/places/internal/zzka;
.end method

.method abstract zzc()Lcom/google/android/libraries/places/internal/zzkb;
.end method

.method public abstract zzd(I)Lcom/google/android/libraries/places/internal/zzka;
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzkb;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzka;->zzc()Lcom/google/android/libraries/places/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzkb;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Package name must not be empty."

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    return-object v0
.end method
