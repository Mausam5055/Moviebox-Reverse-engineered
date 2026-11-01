.class public final Lfw/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLConstraintLayout;

.field public final b:Lcom/noober/background/view/BLView;

.field public final c:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Lcom/tn/lib/widget/TnTextView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Lcom/tn/lib/widget/TnTextView;

.field public final h:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/w0;->a:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p2, p0, Lfw/w0;->b:Lcom/noober/background/view/BLView;

    iput-object p3, p0, Lfw/w0;->c:Lcom/transsion/baseui/widget/GradientBorderView;

    iput-object p4, p0, Lfw/w0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p5, p0, Lfw/w0;->e:Lcom/tn/lib/widget/TnTextView;

    iput-object p6, p0, Lfw/w0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p7, p0, Lfw/w0;->g:Lcom/tn/lib/widget/TnTextView;

    iput-object p8, p0, Lfw/w0;->h:Lcom/tn/lib/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/w0;
    .locals 11

    sget v0, Lcom/transsion/usercenter/R$id;->scanButtonBackground:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/noober/background/view/BLView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanButtonBorder:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/baseui/widget/GradientBorderView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanButtonIcon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanButtonText:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tn/lib/widget/TnTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanIllustration:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanSubtitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/tn/lib/widget/TnTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->scanTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/tn/lib/widget/TnTextView;

    if-eqz v10, :cond_0

    new-instance v0, Lfw/w0;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lfw/w0;-><init>(Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/w0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->item_device_management_pro_scan:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/w0;->a(Landroid/view/View;)Lfw/w0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/w0;->a:Lcom/noober/background/view/BLConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/w0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object v0

    return-object v0
.end method
