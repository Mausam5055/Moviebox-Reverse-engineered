.class public final Lkk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/constraintlayout/widget/Barrier;

.field public final f:Landroidx/constraintlayout/widget/Barrier;

.field public final g:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk/c;->a:Landroid/view/View;

    iput-object p2, p0, Lkk/c;->b:Landroidx/constraintlayout/widget/Guideline;

    iput-object p3, p0, Lkk/c;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p4, p0, Lkk/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p5, p0, Lkk/c;->e:Landroidx/constraintlayout/widget/Barrier;

    iput-object p6, p0, Lkk/c;->f:Landroidx/constraintlayout/widget/Barrier;

    iput-object p7, p0, Lkk/c;->g:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static a(Landroid/view/View;)Lkk/c;
    .locals 9

    sget v0, Lcom/transsion/commercialization/R$id;->bottomGuideline:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/Guideline;

    sget v0, Lcom/transsion/commercialization/R$id;->iv:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/commercialization/R$id;->ivClose:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/commercialization/R$id;->leftBarrier:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    sget v0, Lcom/transsion/commercialization/R$id;->rightBarrier:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    sget v0, Lcom/transsion/commercialization/R$id;->topGuideline:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    new-instance v0, Lkk/c;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lkk/c;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Guideline;)V

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

    iget-object v0, p0, Lkk/c;->a:Landroid/view/View;

    return-object v0
.end method
