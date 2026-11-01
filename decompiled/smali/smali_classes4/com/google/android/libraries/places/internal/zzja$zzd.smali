.class Lcom/google/android/libraries/places/internal/zzja$zzd;
.super Ljava/lang/Object;


# instance fields
.field private periods:[Lcom/google/android/libraries/places/internal/zzja$zzd$zza;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private specialDays:[Lcom/google/android/libraries/places/internal/zzja$zzd$zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private weekdayText:[Ljava/lang/String;
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

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd;->periods:[Lcom/google/android/libraries/places/internal/zzja$zzd$zza;

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

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd;->specialDays:[Lcom/google/android/libraries/places/internal/zzja$zzd$zzb;

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

.method final zzc()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd;->weekdayText:[Ljava/lang/String;

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

.method final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd;->type:Ljava/lang/String;

    return-object v0
.end method
