.class public final enum Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/model/Place;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanPlaceAttributeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FALSE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum TRUE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->UNKNOWN:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    new-instance v1, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    const-string v3, "TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->TRUE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    new-instance v3, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    const-string v5, "FALSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->FALSE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->zza:[Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzcf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzcf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->zza:[Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
