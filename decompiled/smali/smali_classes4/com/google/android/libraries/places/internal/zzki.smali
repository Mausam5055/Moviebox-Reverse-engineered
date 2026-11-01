.class public final Lcom/google/android/libraries/places/internal/zzki;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzki;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzoa;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzki;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzju;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zznz;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zznz;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, "X-Android-Package"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "X-Android-Cert"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zznz;->zzc()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    return-object v0
.end method
