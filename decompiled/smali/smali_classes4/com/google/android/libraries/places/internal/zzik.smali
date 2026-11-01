.class abstract Lcom/google/android/libraries/places/internal/zzik;
.super Lcom/google/android/libraries/places/internal/zzfi;


# instance fields
.field private final zza:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzki;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzjt;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V
    .locals 0
    .param p2    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzfi;-><init>(Lcom/google/android/libraries/places/internal/zzjt;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzik;->zza:Ljava/util/Locale;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzik;->zzc:Lcom/google/android/libraries/places/internal/zzki;

    return-void
.end method

.method protected static zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method protected final zzc()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zziw;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzik;->zze()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zziw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzik;->zza:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zziw;->zza(Ljava/util/Locale;)Lcom/google/android/libraries/places/internal/zziw;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzik;->zzf()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zziw;->zzb(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zziw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zziw;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzik;->zzc:Lcom/google/android/libraries/places/internal/zzki;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzki;->zza()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "X-Places-Android-Sdk"

    const-string v2, "3.5.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract zze()Ljava/lang/String;
.end method

.method protected abstract zzf()Ljava/util/Map;
.end method
