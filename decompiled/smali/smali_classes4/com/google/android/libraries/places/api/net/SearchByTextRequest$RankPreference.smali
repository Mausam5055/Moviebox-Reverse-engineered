.class public final enum Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RankPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISTANCE:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum RELEVANCE:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    const-string v1, "DISTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->DISTANCE:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    new-instance v1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    const-string v3, "RELEVANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->RELEVANCE:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->zza:[Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->zza:[Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-object v0
.end method
