.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzr;
.super Landroidx/recyclerview/widget/i;


# instance fields
.field private zza:I

.field private zzb:Z

.field private final zzc:Lcom/google/android/libraries/places/widget/internal/ui/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/zzd;)V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/widget/internal/ui/zzq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/widget/internal/ui/zzq;-><init>(Lcom/google/android/libraries/places/widget/internal/ui/zzp;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/DiffUtil$e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzb:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzc:Lcom/google/android/libraries/places/widget/internal/ui/zzd;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/widget/internal/ui/zzt;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzb(Lcom/google/android/libraries/places/widget/internal/ui/zzt;I)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zza(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/places/widget/internal/ui/zzt;

    move-result-object p1

    return-object p1
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zza:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzb:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zza:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/i;->submitList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zza(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/places/widget/internal/ui/zzt;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;

    iget-object v1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzc:Lcom/google/android/libraries/places/widget/internal/ui/zzd;

    sget v2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_prediction:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/widget/internal/ui/zzt;-><init>(Lcom/google/android/libraries/places/widget/internal/ui/zzd;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/widget/internal/ui/zzt;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/i;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iget-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzr;->zzb:Z

    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Z)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method
