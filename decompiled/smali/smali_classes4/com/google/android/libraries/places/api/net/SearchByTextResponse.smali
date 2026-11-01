.class public abstract Lcom/google/android/libraries/places/api/net/SearchByTextResponse;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextResponse;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextResponse;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/net/zzab;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/api/net/zzab;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPlaces()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place;",
            ">;"
        }
    .end annotation
.end method
