.class public final Lfw/m1;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/tn/lib/widget/TnTextView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroidx/constraintlayout/widget/Group;

.field public final e:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final h:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/tn/lib/widget/TnTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/m1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/m1;->b:Lcom/tn/lib/widget/TnTextView;

    iput-object p3, p0, Lfw/m1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lfw/m1;->d:Landroidx/constraintlayout/widget/Group;

    iput-object p5, p0, Lfw/m1;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p6, p0, Lfw/m1;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p7, p0, Lfw/m1;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p8, p0, Lfw/m1;->h:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p9, p0, Lfw/m1;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p10, p0, Lfw/m1;->j:Lcom/tn/lib/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/m1;
    .locals 13

    sget v0, Lcom/transsion/usercenter/R$id;->btnFind:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tn/lib/widget/TnTextView;

    if-eqz v4, :cond_0

    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/usercenter/R$id;->groupPlaceholder:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivPlaceholder1:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivPlaceholder2:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivPlaceholder3:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivPlaceholder4:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tvNumber:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tvTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/tn/lib/widget/TnTextView;

    if-eqz v12, :cond_0

    new-instance p0, Lfw/m1;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v12}, Lfw/m1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/tn/lib/widget/TnTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/widget/TnTextView;)V

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


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/m1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/m1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
