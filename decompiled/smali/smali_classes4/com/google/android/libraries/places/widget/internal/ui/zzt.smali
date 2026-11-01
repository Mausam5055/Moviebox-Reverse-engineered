.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzt;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private final zza:Landroid/widget/TextView;

.field private final zzb:Landroid/widget/TextView;

.field private zzc:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/zzd;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_prediction_primary_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zza:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_prediction_secondary_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzb:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/libraries/places/widget/internal/ui/zzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/widget/internal/ui/zzs;-><init>(Lcom/google/android/libraries/places/widget/internal/ui/zzt;Lcom/google/android/libraries/places/widget/internal/ui/zzd;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzc:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iput-boolean p2, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzd:Z

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/places/R$color;->places_autocomplete_prediction_primary_text_highlight:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zza:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzb:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getSecondaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzb:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zza:Landroid/widget/TextView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzb:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zza:Landroid/widget/TextView;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzd:Z

    return v0
.end method

.method final synthetic zzc(Lcom/google/android/libraries/places/widget/internal/ui/zzd;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzt;->zzc:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/libraries/places/widget/internal/ui/zzd;->zza:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;->zze(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;I)V
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
