.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$d;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/widget/CheckedTextView;

.field private final d:Landroid/widget/CheckedTextView;

.field private final e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

.field private final f:Landroid/util/SparseArray;

.field private g:Z

.field private h:Z

.field private i:Lcom/google/android/exoplayer2/ui/o0;

.field private j:[[Landroid/widget/CheckedTextView;

.field private k:Lcom/google/android/exoplayer2/trackselection/i$a;

.field private l:I

.field private m:Lt9/x;

.field private n:Z

.field private o:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    new-instance v2, Lcom/google/android/exoplayer2/ui/g;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/g;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/o0;

    sget-object v2, Lt9/x;->d:Lt9/x;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lt9/x;

    const v2, 0x109000f

    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget v4, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {p1, v3, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e(Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f(Landroid/view/View;)V

    return-void
.end method

.method private static c([II)[I
    .locals 1

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method private static d([II)[I
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    if-eq v4, p1, :cond_0

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static synthetic e(Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;)I
    .locals 0

    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->c:Lcom/google/android/exoplayer2/o1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->c:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    iget v2, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:I

    iget v1, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/e$e;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$e;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/trackselection/e$e;-><init>(I[I)V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->c:I

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->b:[I

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v0, v6

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-ne v4, v6, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_4
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/e$e;

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/e$e;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_7

    if-eqz v5, :cond_6

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/e$e;

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/e$e;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$e;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/trackselection/e$e;-><init>(I[I)V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private j(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lt9/x;

    invoke-virtual {v0, p1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    invoke-virtual {v0, v3, p1, v1}, Lcom/google/android/exoplayer2/trackselection/i$a;->a(IIZ)I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private k()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lt9/x;

    iget v0, v0, Lt9/x;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/e$e;

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v0

    array-length v5, v4

    if-ge v3, v5, :cond_2

    if-eqz v1, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget v4, v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/e$e;->b(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    :cond_1
    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private m()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lt9/x;

    iget v0, v0, Lt9/x;->a:I

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k()Z

    move-result v0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lt9/x;

    iget v5, v4, Lt9/x;->a:I

    if-ge v3, v5, :cond_9

    invoke-virtual {v4, v3}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j(I)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v8, v7, [Landroid/widget/CheckedTextView;

    aput-object v8, v6, v3

    new-array v6, v7, [Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    move v8, v2

    :goto_2
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v8, v9, :cond_2

    new-instance v9, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v10

    invoke-direct {v9, v3, v8, v10}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;-><init>(IILcom/google/android/exoplayer2/o1;)V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Ljava/util/Comparator;

    if-eqz v4, :cond_3

    invoke-static {v6, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    move v4, v2

    :goto_3
    if-ge v4, v7, :cond_8

    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    sget v9, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v8, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const v8, 0x109000f

    goto :goto_5

    :cond_6
    :goto_4
    const v8, 0x1090010

    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v9, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckedTextView;

    iget v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/o0;

    aget-object v10, v6, v4

    iget-object v10, v10, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->c:Lcom/google/android/exoplayer2/o1;

    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/ui/o0;->a(Lcom/google/android/exoplayer2/o1;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    iget v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    invoke-virtual {v9, v10, v3, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->g(III)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    invoke-virtual {v8, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_6
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v9, v9, v3

    aput-object v8, v9, v4

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l()V

    return-void
.end method


# virtual methods
.method public getIsDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    return v0
.end method

.method public getOverrides()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/e$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/e$e;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/trackselection/i$a;IZLjava/util/List;Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$d;)V
    .locals 0
    .param p5    # Ljava/util/Comparator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/TrackSelectionView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/i$a;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/e$e;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/o1;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionView$d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/i$a;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ui/p0;

    invoke-direct {p1, p5}, Lcom/google/android/exoplayer2/ui/p0;-><init>(Ljava/util/Comparator;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Ljava/util/Comparator;

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz p1, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_2

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/trackselection/e$e;

    iget-object p5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    iget p6, p3, Lcom/google/android/exoplayer2/trackselection/e$e;->a:I

    invoke-virtual {p5, p6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m()V

    return-void
.end method

.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m()V

    :cond_1
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/o0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/o0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/o0;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m()V

    return-void
.end method
