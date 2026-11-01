.class Lcom/google/android/material/timepicker/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$f;
.implements Lcom/google/android/material/timepicker/i;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Lcom/google/android/material/timepicker/TimeModel;

.field private final c:Landroid/text/TextWatcher;

.field private final d:Landroid/text/TextWatcher;

.field private final e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final g:Lcom/google/android/material/timepicker/j;

.field private final h:Landroid/widget/EditText;

.field private final i:Landroid/widget/EditText;

.field private j:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/timepicker/l$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/l$a;-><init>(Lcom/google/android/material/timepicker/l;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->c:Landroid/text/TextWatcher;

    new-instance v0, Lcom/google/android/material/timepicker/l$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/l$b;-><init>(Lcom/google/android/material/timepicker/l;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->d:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$id;->material_minute_text_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/l;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    sget v2, Lcom/google/android/material/R$id;->material_hour_text_input:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v2, p0, Lcom/google/android/material/timepicker/l;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    sget v3, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    iget v0, p2, Lcom/google/android/material/timepicker/TimeModel;->a:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->k()V

    :cond_0
    new-instance v0, Lcom/google/android/material/timepicker/l$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/l$c;-><init>(Lcom/google/android/material/timepicker/l;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->e()Lcom/google/android/material/timepicker/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c(Landroid/text/InputFilter;)V

    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->f()Lcom/google/android/material/timepicker/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c(Landroid/text/InputFilter;)V

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->i:Landroid/widget/EditText;

    new-instance v0, Lcom/google/android/material/timepicker/j;

    invoke-direct {v0, v2, v1, p2}, Lcom/google/android/material/timepicker/j;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->g:Lcom/google/android/material/timepicker/j;

    new-instance v0, Lcom/google/android/material/timepicker/l$d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v0, p0, v3, v4, p2}, Lcom/google/android/material/timepicker/l$d;-><init>(Lcom/google/android/material/timepicker/l;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f(Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance v0, Lcom/google/android/material/timepicker/l$e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/google/android/material/timepicker/l$e;-><init>(Lcom/google/android/material/timepicker/l;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f(Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/timepicker/l;Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/timepicker/l;->g(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/timepicker/l;)Lcom/google/android/material/timepicker/TimeModel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private synthetic g(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimeModel;->j(I)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private j(Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->h()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget v1, p1, Lcom/google/android/material/timepicker/TimeModel;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%02d"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->d()V

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/l;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v1, Lcom/google/android/material/timepicker/k;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/k;-><init>(Lcom/google/android/material/timepicker/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->e:I

    if-nez v1, :cond_1

    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->d:I

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->l()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/timepicker/l;->d()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/l;->j(Lcom/google/android/material/timepicker/TimeModel;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->g:Lcom/google/android/material/timepicker/j;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/j;->a()V

    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/internal/f0;->o(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->d:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->d:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/l;->j(Lcom/google/android/material/timepicker/TimeModel;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/l;->c(I)V

    return-void
.end method
