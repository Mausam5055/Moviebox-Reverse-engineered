.class final Lcom/google/android/libraries/places/internal/zzahd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzaty;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzaty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzahd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzahd;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzahd;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
