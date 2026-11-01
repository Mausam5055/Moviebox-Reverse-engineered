.class public final Lgl/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLConstraintLayout;

.field public final b:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/noober/background/view/BLTextView;

.field public final e:Lcom/tn/lib/widget/TnTextView;

.field public final f:Lcom/noober/background/view/BLLinearLayout;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLTextView;Lcom/tn/lib/widget/TnTextView;Lcom/noober/background/view/BLLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/k0;->a:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p2, p0, Lgl/k0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lgl/k0;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lgl/k0;->d:Lcom/noober/background/view/BLTextView;

    iput-object p5, p0, Lgl/k0;->e:Lcom/tn/lib/widget/TnTextView;

    iput-object p6, p0, Lgl/k0;->f:Lcom/noober/background/view/BLLinearLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/k0;
    .locals 9

    sget v0, Lcom/transsion/home/R$id;->ivCover:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivTypeIcon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/home/R$id;->tvDuration:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/noober/background/view/BLTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/home/R$id;->tvTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tn/lib/widget/TnTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$id;->vDurationBg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLLinearLayout;

    if-eqz v8, :cond_0

    new-instance v0, Lgl/k0;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lgl/k0;-><init>(Lcom/noober/background/view/BLConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLTextView;Lcom/tn/lib/widget/TnTextView;Lcom/noober/background/view/BLLinearLayout;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/k0;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->item_ugc_vertical_content:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/k0;->a(Landroid/view/View;)Lgl/k0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/k0;->a:Lcom/noober/background/view/BLConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/k0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object v0

    return-object v0
.end method
