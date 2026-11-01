.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$d;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Set;

.field private e:Lcom/google/android/material/timepicker/TimePickerView;

.field private f:Landroid/view/ViewStub;

.field private g:Lcom/google/android/material/timepicker/h;

.field private h:Lcom/google/android/material/timepicker/l;

.field private i:Lcom/google/android/material/timepicker/i;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:Ljava/lang/CharSequence;

.field private p:I

.field private q:Ljava/lang/CharSequence;

.field private r:Lcom/google/android/material/button/MaterialButton;

.field private s:Landroid/widget/Button;

.field private t:I

.field private u:Lcom/google/android/material/timepicker/TimeModel;

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->d:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->l:I

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->n:I

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->p:I

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v:I

    return-void
.end method

.method public static synthetic X(Lcom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->h0()V

    return-void
.end method

.method static synthetic Y(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->b:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic Z(Lcom/google/android/material/timepicker/MaterialTimePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    return p0
.end method

.method static synthetic a0(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    return p1
.end method

.method static synthetic b0(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic c0(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->k0(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method static synthetic d0(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->a:Ljava/util/Set;

    return-object p0
.end method

.method private e0(I)Landroid/util/Pair;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no icon for mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private f0()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    invoke-static {v0, v1}, Lxa/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_0
    return v0
.end method

.method private g0(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/i;
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->g:Lcom/google/android/material/timepicker/h;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/timepicker/h;

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p1, p2, p3}, Lcom/google/android/material/timepicker/h;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->g:Lcom/google/android/material/timepicker/h;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lcom/google/android/material/timepicker/l;

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p2, p1, p3}, Lcom/google/android/material/timepicker/l;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/l;->e()V

    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    return-object p1
.end method

.method private synthetic h0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    instance-of v1, v0, Lcom/google/android/material/timepicker/l;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/timepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/l;->i()V

    :cond_0
    return-void
.end method

.method private i0(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const-string v0, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    const-string v0, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->l:I

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->m:Ljava/lang/CharSequence;

    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->n:I

    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->o:Ljava/lang/CharSequence;

    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->p:I

    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->q:Ljava/lang/CharSequence;

    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v:I

    return-void
.end method

.method private j0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private k0(Lcom/google/android/material/button/MaterialButton;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->e:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->f:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->hide()V

    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->e:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->f:Landroid/view/ViewStub;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->g0(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->show()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->invalidate()V

    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->e0(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->k0(Lcom/google/android/material/button/MaterialButton;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/l;->i()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->f0()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lab/i;

    sget v2, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lab/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialTimePicker:[I

    sget v3, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v5, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->k:I

    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->j:I

    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_backgroundTint:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v0}, Lab/i;->S(Landroid/content/Context;)V

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v1, v0}, Lab/i;->c0(F)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p3, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Lcom/google/android/material/R$id;->material_timepicker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->e:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView;->u(Lcom/google/android/material/timepicker/TimePickerView$d;)V

    sget p2, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->f:Landroid/view/ViewStub;

    sget p2, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r:Lcom/google/android/material/button/MaterialButton;

    sget p2, Lcom/google/android/material/R$id;->header_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->l:I

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->m:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->k0(Lcom/google/android/material/button/MaterialButton;)V

    sget p2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$a;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->n:I

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->o:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s:Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$b;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->p:I

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->q:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s:Landroid/widget/Button;

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->j0()V

    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$c;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$c;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->g:Lcom/google/android/material/timepicker/h;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->h:Lcom/google/android/material/timepicker/l;

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->e:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->u(Lcom/google/android/material/timepicker/TimePickerView$d;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->e:Lcom/google/android/material/timepicker/TimePickerView;

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TIME_PICKER_TIME_MODEL"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TIME_PICKER_INPUT_MODE"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_TITLE_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->q:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->i:Lcom/google/android/material/timepicker/i;

    instance-of p2, p2, Lcom/google/android/material/timepicker/l;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/material/timepicker/d;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/d;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->j0()V

    return-void
.end method
