.class public final Lcom/google/android/libraries/places/internal/zzbvo;
.super Lcom/google/android/libraries/places/internal/zzbbo;


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvn;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbvn;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 0

    const-string p1, "no service config"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
