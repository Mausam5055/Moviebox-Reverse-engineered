.class public abstract Lcom/google/android/libraries/places/api/model/AddressComponents;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponents;
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
            "Lcom/google/android/libraries/places/api/model/AddressComponent;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AddressComponents;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/api/model/zzam;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract asList()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AddressComponent;",
            ">;"
        }
    .end annotation
.end method
