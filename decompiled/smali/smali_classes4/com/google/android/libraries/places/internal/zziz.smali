.class final Lcom/google/android/libraries/places/internal/zziz;
.super Ljava/lang/Object;


# instance fields
.field private likelihood:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private place:Lcom/google/android/libraries/places/internal/zzja;
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
.method public final zza()Lcom/google/android/libraries/places/internal/zzja;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziz;->place:Lcom/google/android/libraries/places/internal/zzja;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziz;->likelihood:Ljava/lang/Double;

    return-object v0
.end method
