.class public final Lcom/google/android/libraries/places/internal/zzhs;
.super Ljava/lang/Object;


# instance fields
.field private zza:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzhu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhs;->zza:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Photo must be set to non-null value."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzhs;->zza:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzhu;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/libraries/places/internal/zzht;)V

    return-object v0
.end method

.method public final zzb(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/zzhs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhs;->zza:Landroid/graphics/Bitmap;

    return-object p0
.end method
