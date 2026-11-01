.class public final Lfw/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Lcom/noober/background/view/BLConstraintLayout;

.field public final f:Lcom/noober/background/view/BLConstraintLayout;

.field public final g:Lcom/noober/background/view/BLConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/l0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/l0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lfw/l0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lfw/l0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p5, p0, Lfw/l0;->e:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p6, p0, Lfw/l0;->f:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p7, p0, Lfw/l0;->g:Lcom/noober/background/view/BLConstraintLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/l0;
    .locals 10

    sget v0, Lcom/transsion/usercenter/R$id;->ivChangePinArrow:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivDeletePinArrow:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivTrumpet:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->layoutChangePin:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->layoutDeletePin:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->layoutLockStatus:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v9, :cond_0

    new-instance v0, Lfw/l0;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lfw/l0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLConstraintLayout;Lcom/noober/background/view/BLConstraintLayout;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/l0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/l0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/l0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/l0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->fragment_pin_management:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/l0;->a(Landroid/view/View;)Lfw/l0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/l0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/l0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
