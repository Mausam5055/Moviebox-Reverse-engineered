.class Lcom/google/android/libraries/places/internal/zzhq$zza;
.super Ljava/lang/Object;


# instance fields
.field private mainText:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mainTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzhq$zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private secondaryText:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private secondaryTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzhq$zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhq$zza;->mainTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzhq$zzb;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final zzb()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhq$zza;->secondaryTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzhq$zzb;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhq$zza;->mainText:Ljava/lang/String;

    return-object v0
.end method

.method final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhq$zza;->secondaryText:Ljava/lang/String;

    return-object v0
.end method
