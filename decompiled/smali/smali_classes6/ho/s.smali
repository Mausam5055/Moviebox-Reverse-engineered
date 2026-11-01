.class public final Lho/s;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field public final i:Lcom/transsion/ad/view/GradientTextView;

.field public final j:Lcom/transsion/ad/view/GradientTextView;

.field public final k:Lcom/transsion/ad/view/GradientTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/GradientTextView;Lcom/transsion/ad/view/GradientTextView;Lcom/transsion/ad/view/GradientTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lho/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lho/s;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lho/s;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lho/s;->d:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lho/s;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lho/s;->f:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lho/s;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lho/s;->h:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p9, p0, Lho/s;->i:Lcom/transsion/ad/view/GradientTextView;

    iput-object p10, p0, Lho/s;->j:Lcom/transsion/ad/view/GradientTextView;

    iput-object p11, p0, Lho/s;->k:Lcom/transsion/ad/view/GradientTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lho/s;
    .locals 14

    sget v0, Lcom/transsion/player/longvideo/R$id;->ivRefresh:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->ivRefreshV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->llBtnH:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->llBtnV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->llChange:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->llChangeV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->nativeWrapperAdView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->tvInstall:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/transsion/ad/view/GradientTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->tvInstallV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/transsion/ad/view/GradientTextView;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/player/longvideo/R$id;->tvTryMore:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/transsion/ad/view/GradientTextView;

    if-eqz v13, :cond_0

    new-instance v0, Lho/s;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lho/s;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/GradientTextView;Lcom/transsion/ad/view/GradientTextView;Lcom/transsion/ad/view/GradientTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lho/s;
    .locals 2

    sget v0, Lcom/transsion/player/longvideo/R$layout;->view_resolution_ad_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lho/s;->a(Landroid/view/View;)Lho/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lho/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lho/s;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
