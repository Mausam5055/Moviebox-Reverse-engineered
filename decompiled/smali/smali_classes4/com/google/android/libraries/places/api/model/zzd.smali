.class final Lcom/google/android/libraries/places/api/model/zzd;
.super Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPhotoUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final setPhotoUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final setUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzb()Lcom/google/android/libraries/places/api/model/AuthorAttribution;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/libraries/places/api/model/zzao;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/libraries/places/api/model/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
