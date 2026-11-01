.class public final Lzy/j;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final d:Landroidx/appcompat/widget/AppCompatButton;

.field public final e:Landroidx/appcompat/widget/AppCompatButton;

.field public final f:Landroidx/appcompat/widget/AppCompatEditText;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy/j;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lzy/j;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lzy/j;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p4, p0, Lzy/j;->d:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p5, p0, Lzy/j;->e:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p6, p0, Lzy/j;->f:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p7, p0, Lzy/j;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lzy/j;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p9, p0, Lzy/j;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p10, p0, Lzy/j;->j:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lzy/j;
    .locals 13

    sget v0, Lcom/transsnet/login/R$id;->btn_back:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->btn_clear:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->btn_email:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->btn_login:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->et_phone:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->ll_input:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->tv_phone_country_code:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->tv_privacy:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->tv_tips:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    new-instance v0, Lzy/j;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lzy/j;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lzy/j;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lzy/j;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lzy/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lzy/j;
    .locals 2

    sget v0, Lcom/transsnet/login/R$layout;->login_fragment_phone:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lzy/j;->a(Landroid/view/View;)Lzy/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lzy/j;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lzy/j;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
