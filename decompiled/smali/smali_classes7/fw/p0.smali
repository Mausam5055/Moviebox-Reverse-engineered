.class public final Lfw/p0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final c:Lcom/noober/background/view/BLTextView;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Lcom/tn/lib/widget/TnTextView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroidx/constraintlayout/widget/Group;

.field public final h:Landroid/view/View;

.field public final i:Lcom/google/android/material/tabs/TabLayout;

.field public final j:Lcom/tn/lib/view/TitleLayout;

.field public final k:Landroidx/fragment/app/FragmentContainerView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/baseui/widget/GradientBorderView;Lcom/noober/background/view/BLTextView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Lcom/tn/lib/view/TitleLayout;Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/p0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/p0;->b:Lcom/transsion/baseui/widget/GradientBorderView;

    iput-object p3, p0, Lfw/p0;->c:Lcom/noober/background/view/BLTextView;

    iput-object p4, p0, Lfw/p0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p5, p0, Lfw/p0;->e:Lcom/tn/lib/widget/TnTextView;

    iput-object p6, p0, Lfw/p0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p7, p0, Lfw/p0;->g:Landroidx/constraintlayout/widget/Group;

    iput-object p8, p0, Lfw/p0;->h:Landroid/view/View;

    iput-object p9, p0, Lfw/p0;->i:Lcom/google/android/material/tabs/TabLayout;

    iput-object p10, p0, Lfw/p0;->j:Lcom/tn/lib/view/TitleLayout;

    iput-object p11, p0, Lfw/p0;->k:Landroidx/fragment/app/FragmentContainerView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/p0;
    .locals 14

    sget v0, Lcom/transsion/usercenter/R$id;->scanButton:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/baseui/widget/GradientBorderView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanButtonBackground:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/noober/background/view/BLTextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanCard:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanDescription:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tn/lib/widget/TnTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanDeviceImage:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanModuleGroup:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/Group;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tabDivider:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tabLayout:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->titleLayout:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/tn/lib/view/TitleLayout;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->webFragmentContainer:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v13, :cond_0

    new-instance v0, Lfw/p0;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lfw/p0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/baseui/widget/GradientBorderView;Lcom/noober/background/view/BLTextView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Lcom/tn/lib/view/TitleLayout;Landroidx/fragment/app/FragmentContainerView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/p0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/p0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/p0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/p0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->fragment_tv_download_web_link:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/p0;->a(Landroid/view/View;)Lfw/p0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/p0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/p0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
