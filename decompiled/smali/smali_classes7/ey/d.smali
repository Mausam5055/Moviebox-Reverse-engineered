.class public final Ley/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/cardview/widget/CardView;

.field public final b:Landroidx/cardview/widget/CardView;

.field public final c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final d:Landroidx/cardview/widget/CardView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley/d;->a:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Ley/d;->b:Landroidx/cardview/widget/CardView;

    iput-object p3, p0, Ley/d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Ley/d;->d:Landroidx/cardview/widget/CardView;

    iput-object p5, p0, Ley/d;->e:Landroid/widget/TextView;

    iput-object p6, p0, Ley/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p7, p0, Ley/d;->g:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p8, p0, Ley/d;->h:Landroid/widget/FrameLayout;

    iput-object p9, p0, Ley/d;->i:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Ley/d;
    .locals 12

    sget v0, Lcom/transsion/wrapperad/R$id;->icon_cardview:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    move-object v6, p0

    check-cast v6, Landroidx/cardview/widget/CardView;

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_des:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_icon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_media:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_media_container:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    new-instance p0, Ley/d;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v11}, Ley/d;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object p0

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ley/d;
    .locals 2

    sget v0, Lcom/transsion/wrapperad/R$layout;->search_hot_hi_native_ad_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ley/d;->a(Landroid/view/View;)Ley/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/cardview/widget/CardView;
    .locals 1

    iget-object v0, p0, Ley/d;->a:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ley/d;->b()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method
