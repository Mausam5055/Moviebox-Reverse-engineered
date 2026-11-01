.class public final Ley/b;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field public final c:Lcom/transsion/ad/view/AdTagView;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field public final f:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;Lcom/transsion/ad/view/AdTagView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ley/b;->b:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    iput-object p3, p0, Ley/b;->c:Lcom/transsion/ad/view/AdTagView;

    iput-object p4, p0, Ley/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Ley/b;->e:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p6, p0, Ley/b;->f:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Ley/b;
    .locals 9

    sget v0, Lcom/transsion/wrapperad/R$id;->adChoicesView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->adTag:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/ad/view/AdTagView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_media:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_media_container:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    new-instance v0, Ley/b;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ley/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;Lcom/transsion/ad/view/AdTagView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/FrameLayout;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ley/b;
    .locals 2

    sget v0, Lcom/transsion/wrapperad/R$layout;->media_content_ssp_native_ad_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ley/b;->a(Landroid/view/View;)Ley/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Ley/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ley/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
