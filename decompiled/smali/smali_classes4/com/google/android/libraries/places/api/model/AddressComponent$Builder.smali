.class public abstract Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/model/AddressComponent;
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
.method public build()Lcom/google/android/libraries/places/api/model/AddressComponent;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->zzc()Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/AddressComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Name must not be empty."

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/AddressComponent;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Types must not contain null or empty values."

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->zzc()Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object v0

    return-object v0
.end method

.method public abstract getShortName()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method abstract zzb(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
.end method

.method abstract zzc()Lcom/google/android/libraries/places/api/model/AddressComponent;
.end method
