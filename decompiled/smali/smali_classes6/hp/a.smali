.class public final Lhp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final c:Landroid/widget/RelativeLayout;

.field public final d:Landroid/widget/ProgressBar;

.field public final e:Lcom/transsion/publish/view/clip/ClipView;

.field public final f:Lcom/transsion/publish/view/clip/ClipImageView;

.field public final g:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Lcom/transsion/publish/view/clip/ClipView;Lcom/transsion/publish/view/clip/ClipImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhp/a;->a:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lhp/a;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p3, p0, Lhp/a;->c:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lhp/a;->d:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lhp/a;->e:Lcom/transsion/publish/view/clip/ClipView;

    iput-object p6, p0, Lhp/a;->f:Lcom/transsion/publish/view/clip/ClipImageView;

    iput-object p7, p0, Lhp/a;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lhp/a;
    .locals 10

    sget v0, Lcom/transsion/publish/R$id;->btn_back:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/publish/R$id;->clTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/publish/R$id;->clip_loading:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/publish/R$id;->clipview:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsion/publish/view/clip/ClipView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/publish/R$id;->src_pic:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/publish/view/clip/ClipImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/publish/R$id;->tvDone:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    new-instance v0, Lhp/a;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lhp/a;-><init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Lcom/transsion/publish/view/clip/ClipView;Lcom/transsion/publish/view/clip/ClipImageView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lhp/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhp/a;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/a;
    .locals 2

    sget v0, Lcom/transsion/publish/R$layout;->activity_clip_image:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lhp/a;->a(Landroid/view/View;)Lhp/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lhp/a;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lhp/a;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
