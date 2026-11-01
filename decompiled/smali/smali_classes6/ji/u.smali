.class public final Lji/u;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/Button;

.field public final c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field public final d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field public final e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji/u;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lji/u;->b:Landroid/widget/Button;

    iput-object p3, p0, Lji/u;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p4, p0, Lji/u;->d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p5, p0, Lji/u;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lji/u;
    .locals 8

    sget v0, Lcom/transsion/ad/R$id;->btnLoadNativeAd:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->nativeView1:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->nativeView2:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->nativeView3:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v7, :cond_0

    new-instance v0, Lji/u;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lji/u;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lji/u;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lji/u;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/u;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/u;
    .locals 2

    sget v0, Lcom/transsion/ad/R$layout;->activity_test_ad_native_ssp_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lji/u;->a(Landroid/view/View;)Lji/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lji/u;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lji/u;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
