.class public final Lcom/cloud/tmc/miniapp/databinding/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field public final OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0OO:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0Oo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0o0:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final OooO0oo:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/tmc/miniapp/widget/AddScreenView;Lcom/cloud/tmc/miniapp/widget/PageContainerView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/cloud/tmc/miniapp/widget/StatusLayout;Lcom/cloud/tmc/miniapp/widget/TabBarView;Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniapp/widget/AddScreenView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/miniapp/widget/PageContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/miniapp/widget/StatusLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/cloud/tmc/miniapp/widget/TabBarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0Oo:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    iput-object p10, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    iput-object p11, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    iput-object p12, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oo:Landroid/view/View;

    return-void
.end method

.method public static OooO00o(Landroid/view/LayoutInflater;)Lcom/cloud/tmc/miniapp/databinding/OooO00o;
    .locals 15
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->fragment_mini:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->addScreenView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    if-eqz v4, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->fl:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v5, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->fl_fullscreen:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->fl_loading_mask:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->iv_fullscreen_back:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->iv_loading:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->pb:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->sl_status:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    if-eqz v11, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tabBar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/cloud/tmc/miniapp/widget/TabBarView;

    if-eqz v12, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->titleBar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    if-eqz v13, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->view_mask:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/cloud/tmc/miniapp/databinding/OooO00o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/tmc/miniapp/widget/AddScreenView;Lcom/cloud/tmc/miniapp/widget/PageContainerView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/cloud/tmc/miniapp/widget/StatusLayout;Lcom/cloud/tmc/miniapp/widget/TabBarView;Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V

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


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
