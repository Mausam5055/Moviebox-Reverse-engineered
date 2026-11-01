.class public Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field private final zza:Landroidx/lifecycle/b0;

.field private final zzb:Landroidx/lifecycle/b0;

.field private zzc:Lcom/google/android/libraries/places/internal/zzks;

.field private zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_fragment:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    sget-object v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzkr;->zza:Lcom/google/android/libraries/places/internal/zzkr;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzkt;->zzo(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    return-void
.end method

.method public static newInstance()Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;-><init>()V

    return-object v0
.end method

.method static synthetic zzd(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private final zze()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzks;->zzn()Lcom/google/android/libraries/places/internal/zzkt;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/internal/zzkt;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const/16 v1, 0x76d5

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private final zzf(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x76d5

    if-ne p1, v0, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Places"

    if-nez p1, :cond_0

    const/4 p1, 0x5

    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "No PlaceSelectionListener is set. No result will be delivered."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x6

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Intent data was null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    return-void

    :cond_2
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzkt;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzg()Lcom/google/android/libraries/places/internal/zzks;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzks;->zzn()Lcom/google/android/libraries/places/internal/zzkt;

    move-result-object v0

    const-string v1, "options"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/places/R$string;->places_autocomplete_search_hint:I

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzkw;->zzc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/libraries/places/widget/zze;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zze;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/libraries/places/widget/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzf;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/libraries/places/widget/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzg;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzf(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/widget/zzh;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/widget/zzh;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;Landroid/widget/EditText;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/widget/zzi;

    invoke-direct {v1, p1, p2}, Lcom/google/android/libraries/places/widget/zzi;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public setActivityMode(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setCountries(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public varargs setCountries([Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    sget p1, Lcom/google/android/libraries/places/R$string;->places_autocomplete_search_hint:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzks;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    return-object p0
.end method

.method public setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzk(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzks;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzl(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setTypesFilter(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzm(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method final synthetic zza(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zze()V

    return-void
.end method

.method final synthetic zzb(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zze()V

    return-void
.end method

.method final synthetic zzc(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzf(Landroid/view/View;)V
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
