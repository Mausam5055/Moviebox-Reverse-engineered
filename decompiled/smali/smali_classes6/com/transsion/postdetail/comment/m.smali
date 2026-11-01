.class public final Lcom/transsion/postdetail/comment/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Lcom/transsion/postdetail/comment/SocialStatus;

.field private final b:Z

.field private c:Landroidx/appcompat/widget/AppCompatEditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private j:Landroidx/appcompat/widget/AppCompatTextView;

.field private k:Landroidx/appcompat/widget/AppCompatTextView;

.field private l:Landroidx/appcompat/widget/AppCompatTextView;

.field private m:Landroidx/appcompat/widget/AppCompatImageView;

.field private n:Lcom/google/android/material/imageview/ShapeableImageView;

.field private o:Lcom/google/android/material/imageview/ShapeableImageView;

.field private p:Landroidx/appcompat/widget/AppCompatImageView;

.field private q:Lro/a;

.field private r:Ljava/util/List;

.field private final s:Landroid/text/InputFilter$LengthFilter;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;Z)V
    .locals 1

    const-string v0, "socialStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    iput-boolean p4, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    if-eqz p1, :cond_0

    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_limit:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_post:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_disable_click:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->g:Landroid/view/View;

    sget p3, Lcom/transsion/postdetail/R$id;->tv_hint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    sget p3, Lcom/transsion/postdetail/R$id;->progress_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    sget p3, Lcom/transsion/postdetail/R$id;->ll_tint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget p3, Lcom/transsion/postdetail/R$id;->tv_like:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    sget p3, Lcom/transsion/postdetail/R$id;->tv_comment:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->k:Landroidx/appcompat/widget/AppCompatTextView;

    sget p3, Lcom/transsion/postdetail/R$id;->tv_share:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    sget p3, Lcom/transsion/postdetail/R$id;->iv_download:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    sget p3, Lcom/transsion/postdetail/R$id;->iv_choose_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p3, Lcom/transsion/postdetail/R$id;->iv_selected_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p3, Lcom/transsion/postdetail/R$id;->icon_delete_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    :cond_0
    if-eqz p2, :cond_1

    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_limit:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_post:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    sget p1, Lcom/transsion/postdetail/R$id;->tv_hint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    sget p1, Lcom/transsion/postdetail/R$id;->progress_bar:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    sget p1, Lcom/transsion/postdetail/R$id;->ll_tint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget p1, Lcom/transsion/postdetail/R$id;->tv_like:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    sget p1, Lcom/transsion/postdetail/R$id;->tv_comment:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->k:Landroidx/appcompat/widget/AppCompatTextView;

    sget p1, Lcom/transsion/postdetail/R$id;->tv_share:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    sget p1, Lcom/transsion/postdetail/R$id;->iv_download:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    sget p1, Lcom/transsion/postdetail/R$id;->iv_choose_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p1, Lcom/transsion/postdetail/R$id;->iv_selected_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p1, Lcom/transsion/postdetail/R$id;->icon_delete_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    new-instance p1, Lcom/transsion/postdetail/comment/m$a;

    invoke-direct {p1}, Lcom/transsion/postdetail/comment/m$a;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->s:Landroid/text/InputFilter$LengthFilter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    new-instance p3, Lcom/transsion/postdetail/comment/SocialStatus;

    const/4 p6, 0x1

    invoke-direct {p3, p6, p6, p6, p6}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZ)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;Z)V

    return-void
.end method

.method private final A(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->D(I)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->C(I)V

    return-void
.end method

.method private final C(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    move-result v0

    if-le p1, v0, :cond_2

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/postdetail/R$string;->comment_max_tips:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :cond_2
    return-void
.end method

.method private final D(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-gt v1, p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    move-result v2

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->o(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->n(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->l(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->m(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    return-void
.end method

.method private final e()Lcom/transsion/postdetail/comment/i0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lro/a;->a()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/comment/m;->D(I)V

    return-void
.end method

.method private static final l(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->r(Landroid/text/Editable;)V

    return-void
.end method

.method private static final m(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->s()V

    return-void
.end method

.method private static final n(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->f()V

    return-void
.end method

.method private static final o(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 7

    sget-object p1, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    invoke-virtual {p1}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/publish/n;->f(Ljava/util/List;)V

    sget-object v1, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string p1, "getApp(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/publish/ui/GalleryActivity$a;->a(Landroid/content/Context;Ljava/util/List;III)V

    return-void
.end method

.method private final p(Z)V
    .locals 1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowTint()Z

    move-result v0

    invoke-static {p1, v0}, Ljg/c;->j(Landroid/view/View;Z)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowLike()Z

    move-result v0

    invoke-static {p1, v0}, Ljg/c;->j(Landroid/view/View;Z)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowShare()Z

    move-result v0

    invoke-static {p1, v0}, Ljg/c;->j(Landroid/view/View;Z)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowDownload()Z

    move-result v0

    invoke-static {p1, v0}, Ljg/c;->j(Landroid/view/View;Z)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private final q()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lro/a;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private final r(Landroid/text/Editable;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lro/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/transsion/postdetail/comment/i0;->S(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    :cond_1
    return-void
.end method

.method private final s()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/postdetail/comment/i0;->E()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/postdetail/comment/i0;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_4
    const/16 p1, 0x127

    if-lt v1, p1, :cond_5

    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    sget v0, Lcom/tn/lib/widget/R$color;->error_50:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    sget v0, Lcom/tn/lib/widget/R$color;->text_02:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/i0;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final h()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final i()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lro/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    return-object v0
.end method

.method public final k(Lro/a;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lro/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/postdetail/R$string;->comment_hint_add:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lro/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    iget-object v3, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/postdetail/R$string;->comment_reply_to:I

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lro/a;->b()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/postdetail/comment/m;->A(I)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-boolean v2, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/postdetail/R$drawable;->comment_edit_cursor:I

    invoke-static {v0, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/comment/h;->a(Landroidx/appcompat/widget/AppCompatEditText;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const-string v2, "getFilters(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->O0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->s:Landroid/text/InputFilter$LengthFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/transsion/postdetail/comment/i;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/i;-><init>(Lcom/transsion/postdetail/comment/m;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/transsion/postdetail/comment/j;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/j;-><init>(Lcom/transsion/postdetail/comment/m;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/transsion/postdetail/comment/k;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/k;-><init>(Lcom/transsion/postdetail/comment/m;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz p1, :cond_9

    new-instance v0, Lcom/transsion/postdetail/comment/l;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/l;-><init>(Lcom/transsion/postdetail/comment/m;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    :cond_5
    return-void
.end method

.method public final t()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/comment/m;->x(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lro/a;->e()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final v(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    :cond_0
    return-void
.end method

.method public final w(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 3

    const-string v0, "photoEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->D(I)V

    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
