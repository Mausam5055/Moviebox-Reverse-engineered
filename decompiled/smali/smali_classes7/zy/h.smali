.class public final Lzy/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatButton;

.field public final d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

.field public final e:Lzy/l;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatButton;Lcom/transsnet/login/phone/widget/LoginPwdEditText;Lzy/l;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy/h;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lzy/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lzy/h;->c:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p4, p0, Lzy/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    iput-object p5, p0, Lzy/h;->e:Lzy/l;

    iput-object p6, p0, Lzy/h;->f:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Lzy/h;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lzy/h;->h:Landroid/view/ViewStub;

    return-void
.end method

.method public static a(Landroid/view/View;)Lzy/h;
    .locals 11

    sget v0, Lcom/transsnet/login/R$id;->btn_eye:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->btn_login:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->et_pwd:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lzy/l;->a(Landroid/view/View;)Lzy/l;

    move-result-object v7

    sget v0, Lcom/transsnet/login/R$id;->tv_tips:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->tv_welcome:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsnet/login/R$id;->vs_invitation_code:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewStub;

    if-eqz v10, :cond_0

    new-instance v0, Lzy/h;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lzy/h;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatButton;Lcom/transsnet/login/phone/widget/LoginPwdEditText;Lzy/l;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/ViewStub;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lzy/h;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lzy/h;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lzy/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lzy/h;
    .locals 2

    sget v0, Lcom/transsnet/login/R$layout;->login_activity_phone_set_pwd:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lzy/h;->a(Landroid/view/View;)Lzy/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lzy/h;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lzy/h;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
