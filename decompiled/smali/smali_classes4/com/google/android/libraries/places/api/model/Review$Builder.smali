.class public abstract Lcom/google/android/libraries/places/api/model/Review$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/model/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/model/Review;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Review$Builder;->zzd()Lcom/google/android/libraries/places/api/model/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Review;->getRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v1, "Rating must between 1.0 and 5.0 (inclusive), but was: %s."

    invoke-static {v2, v1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Review$Builder;->zzd()Lcom/google/android/libraries/places/api/model/Review;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOriginalText()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getOriginalTextLanguageCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPublishTime()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getRelativePublishTimeDescription()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getTextLanguageCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract setOriginalText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setOriginalTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setPublishTime(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setRelativePublishTimeDescription(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method abstract zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
.end method

.method abstract zzb(Lcom/google/android/libraries/places/api/model/AuthorAttribution;)Lcom/google/android/libraries/places/api/model/Review$Builder;
.end method

.method abstract zzd()Lcom/google/android/libraries/places/api/model/Review;
.end method
