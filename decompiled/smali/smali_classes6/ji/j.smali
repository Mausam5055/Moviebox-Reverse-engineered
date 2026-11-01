.class public final Lji/j;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/ScrollView;

.field public final b:Landroid/widget/Button;

.field public final c:Landroid/widget/Button;

.field public final d:Landroid/widget/Button;

.field public final e:Landroid/widget/Button;

.field public final f:Landroid/widget/Button;

.field public final g:Landroid/widget/Button;

.field public final h:Landroid/widget/Button;

.field public final i:Landroid/widget/Button;

.field public final j:Landroid/widget/Button;

.field public final k:Landroid/widget/Button;

.field public final l:Landroid/widget/Button;

.field public final m:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji/j;->a:Landroid/widget/ScrollView;

    iput-object p2, p0, Lji/j;->b:Landroid/widget/Button;

    iput-object p3, p0, Lji/j;->c:Landroid/widget/Button;

    iput-object p4, p0, Lji/j;->d:Landroid/widget/Button;

    iput-object p5, p0, Lji/j;->e:Landroid/widget/Button;

    iput-object p6, p0, Lji/j;->f:Landroid/widget/Button;

    iput-object p7, p0, Lji/j;->g:Landroid/widget/Button;

    iput-object p8, p0, Lji/j;->h:Landroid/widget/Button;

    iput-object p9, p0, Lji/j;->i:Landroid/widget/Button;

    iput-object p10, p0, Lji/j;->j:Landroid/widget/Button;

    iput-object p11, p0, Lji/j;->k:Landroid/widget/Button;

    iput-object p12, p0, Lji/j;->l:Landroid/widget/Button;

    iput-object p13, p0, Lji/j;->m:Landroid/widget/Button;

    return-void
.end method

.method public static a(Landroid/view/View;)Lji/j;
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/ad/R$id;->btnIconAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnIrregularAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadBannerAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadH5Ad:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadInterstitialAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadNativeAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadNativeAdMultipleFetch:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadNativeListAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadSSPNativeAdFetch:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadSplashAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnLoadVideoAd:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/ad/R$id;->btnViewMeasure:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    new-instance v1, Lji/j;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lji/j;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lji/j;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lji/j;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/j;
    .locals 2

    sget v0, Lcom/transsion/ad/R$layout;->activity_test_ad_a_example_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lji/j;->a(Landroid/view/View;)Lji/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lji/j;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lji/j;->b()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method
