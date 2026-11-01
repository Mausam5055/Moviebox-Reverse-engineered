.class public final Lnp/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Z

.field private b:Lcom/transsion/publish/view/LinkEditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lnp/b;

.field private j:Landroid/app/Dialog;

.field private k:Lcom/tencent/mmkv/MMKV;

.field private l:Z

.field private m:Lip/b$b;

.field private n:Landroid/view/View;

.field private final o:Landroid/text/InputFilter$LengthFilter;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnp/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lip/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lip/b$b;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lnp/j;->a:Z

    iput-object p3, p0, Lnp/j;->m:Lip/b$b;

    iput-object p4, p0, Lnp/j;->n:Landroid/view/View;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lnp/j;->l:Z

    if-eqz p1, :cond_0

    sget p3, Lcom/transsion/publish/R$id;->comment_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/transsion/publish/view/LinkEditText;

    iput-object p3, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    sget p3, Lcom/transsion/publish/R$id;->tv_add:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lnp/j;->e:Landroid/view/View;

    sget p3, Lcom/transsion/publish/R$id;->tv_cancel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lnp/j;->d:Landroid/widget/TextView;

    sget p3, Lcom/transsion/publish/R$id;->comment_input_disable_click:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lnp/j;->g:Landroid/view/View;

    sget p3, Lcom/transsion/publish/R$id;->tv_hint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lnp/j;->c:Landroid/widget/TextView;

    sget p3, Lcom/transsion/publish/R$id;->rl_clear:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lnp/j;->f:Landroid/widget/RelativeLayout;

    :cond_0
    iput-object p2, p0, Lnp/j;->j:Landroid/app/Dialog;

    if-eqz p2, :cond_1

    sget p1, Lcom/transsion/publish/R$id;->comment_input_edit_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/view/LinkEditText;

    iput-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    sget p1, Lcom/transsion/publish/R$id;->tv_add:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnp/j;->e:Landroid/view/View;

    sget p1, Lcom/transsion/publish/R$id;->tv_hint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnp/j;->c:Landroid/widget/TextView;

    sget p1, Lcom/transsion/publish/R$id;->tv_cancel:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnp/j;->d:Landroid/widget/TextView;

    sget p1, Lcom/transsion/publish/R$id;->rl_clear:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lnp/j;->f:Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/publish/R$id;->comment_input_layout:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnp/j;->h:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p5}, Landroid/view/View;->setEnabled(Z)V

    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    if-eqz p5, :cond_3

    iget-object p1, p0, Lnp/j;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    :cond_4
    :try_start_0
    const-string p1, "kv_link_record"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lnp/j;->k:Lcom/tencent/mmkv/MMKV;

    if-eqz p1, :cond_5

    const-string p2, "link"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    new-instance p1, Lnp/j$b;

    invoke-direct {p1}, Lnp/j$b;-><init>()V

    iput-object p1, p0, Lnp/j;->o:Landroid/text/InputFilter$LengthFilter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lip/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move p6, p5

    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v0

    invoke-direct/range {p1 .. p6}, Lnp/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lip/b$b;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lnp/j;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnp/j;->l(Lnp/j;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(Lnp/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lnp/j;->o(Lnp/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lnp/j;)V
    .locals 0

    invoke-static {p0}, Lnp/j;->n(Lnp/j;)V

    return-void
.end method

.method public static synthetic d(Lnp/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lnp/j;->q(Lnp/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lnp/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lnp/j;->p(Lnp/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lnp/j;)V
    .locals 0

    invoke-static {p0}, Lnp/j;->m(Lnp/j;)V

    return-void
.end method

.method public static final synthetic g(Lnp/j;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lnp/j;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private final h()Lnp/a;
    .locals 1

    iget-object v0, p0, Lnp/j;->i:Lnp/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnp/b;->a()Lnp/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final l(Lnp/j;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_1

    new-instance p2, Lnp/i;

    invoke-direct {p2, p0}, Lnp/i;-><init>(Lnp/j;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final m(Lnp/j;)V
    .locals 2

    iget-object v0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object p0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private static final n(Lnp/j;)V
    .locals 0

    iget-object p0, p0, Lnp/j;->m:Lip/b$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lip/b$b;->completeLoad()V

    :cond_0
    return-void
.end method

.method private static final o(Lnp/j;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnp/j;->s(Ljava/lang/String;)V

    return-void
.end method

.method private static final p(Lnp/j;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnp/j;->k:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_1

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-virtual {p0}, Lnp/j;->i()V

    return-void
.end method

.method private static final q(Lnp/j;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object p0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private final r()I
    .locals 1

    iget-object v0, p0, Lnp/j;->i:Lnp/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnp/b;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private final s(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "www."

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/publish/R$string;->post_link_hint:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void

    :cond_2
    :goto_0
    const-string v1, "http:"

    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https:"

    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lnp/j;->k:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_4

    const-string v1, "link"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    sget-object v0, Lcom/transsion/publish/c;->a:Lcom/transsion/publish/c$a;

    invoke-virtual {v0}, Lcom/transsion/publish/c$a;->a()Lcom/transsion/publish/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/publish/c;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnp/j;->i()V

    return-void

    :cond_5
    :goto_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/publish/R$string;->post_link_hint:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void
.end method

.method private final t(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnp/j;->v(I)V

    invoke-direct {p0, p1}, Lnp/j;->u(I)V

    return-void
.end method

.method private final u(I)V
    .locals 1

    invoke-direct {p0}, Lnp/j;->r()I

    move-result v0

    if-le p1, v0, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/publish/R$string;->comment_max_tips:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :cond_0
    return-void
.end method

.method private final v(I)V
    .locals 4

    iget-object v0, p0, Lnp/j;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, p1, :cond_0

    invoke-direct {p0}, Lnp/j;->r()I

    move-result v3

    if-gt p1, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-direct {p0}, Lnp/j;->h()Lnp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnp/a;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-direct {p0}, Lnp/j;->h()Lnp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lnp/a;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnp/j;->n:Landroid/view/View;

    iget-object v0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lnp/j;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    return-object v0
.end method

.method public final k(Lnp/b;)V
    .locals 3

    iput-object p1, p0, Lnp/j;->i:Lnp/b;

    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lnp/j;->i:Lnp/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnp/b;->d()Lcom/transsion/publish/api/LinkEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0, v0}, Lnp/j;->t(I)V

    :cond_0
    iget-object v1, p0, Lnp/j;->i:Lnp/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnp/b;->b()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lnp/j;->t(I)V

    :cond_1
    invoke-direct {p0}, Lnp/j;->r()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-boolean v1, p0, Lnp/j;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->comment_edit_cursor:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lnp/c;->a(Lcom/transsion/publish/view/LinkEditText;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    const-string v2, "getFilters(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->O0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnp/j;->o:Landroid/text/InputFilter$LengthFilter;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    new-array v2, v0, [Landroid/text/InputFilter;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_3
    iget-object p1, p0, Lnp/j;->e:Landroid/view/View;

    if-eqz p1, :cond_4

    new-instance v1, Lnp/d;

    invoke-direct {v1, p0}, Lnp/d;-><init>(Lnp/j;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lnp/j;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance v1, Lnp/e;

    invoke-direct {v1, p0}, Lnp/e;-><init>(Lnp/j;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lnp/j;->f:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    new-instance v1, Lnp/f;

    invoke-direct {v1, p0}, Lnp/f;-><init>(Lnp/j;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v1, :cond_9

    new-instance v2, Lnp/j$a;

    invoke-direct {v2, p0}, Lnp/j$a;-><init>(Lnp/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_9
    iget-object v1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v1, :cond_a

    new-instance v2, Lnp/g;

    invoke-direct {v2, p0}, Lnp/g;-><init>(Lnp/j;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_a
    iget-object v1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_b
    iget-object v1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_c
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_d
    iget-object p1, p0, Lnp/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_e

    new-instance v0, Lnp/h;

    invoke-direct {v0, p0}, Lnp/h;-><init>(Lnp/j;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
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
    invoke-direct {p0, v1}, Lnp/j;->t(I)V

    iget-boolean v1, p0, Lnp/j;->a:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnp/j;->h()Lnp/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lnp/j;->e:Landroid/view/View;

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
    return-void
.end method
