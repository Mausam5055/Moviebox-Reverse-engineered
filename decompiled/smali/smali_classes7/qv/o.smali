.class public final Lqv/o;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Group;

.field public final c:Landroidx/constraintlayout/widget/Group;

.field public final d:Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

.field public final e:Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Lcom/noober/background/view/BLView;

.field public final j:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv/o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lqv/o;->b:Landroidx/constraintlayout/widget/Group;

    iput-object p3, p0, Lqv/o;->c:Landroidx/constraintlayout/widget/Group;

    iput-object p4, p0, Lqv/o;->d:Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

    iput-object p5, p0, Lqv/o;->e:Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

    iput-object p6, p0, Lqv/o;->f:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Lqv/o;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lqv/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p9, p0, Lqv/o;->i:Lcom/noober/background/view/BLView;

    iput-object p10, p0, Lqv/o;->j:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lqv/o;
    .locals 13

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->groupPreview:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->groupPreviewCollection:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivPreviewImage:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivPreviewImageCollection:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvClickText:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvClickTextCollection:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vGradientOverlay:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/noober/background/view/BLView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vGradientOverlayCollection:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/noober/background/view/BLView;

    if-eqz v12, :cond_0

    new-instance v0, Lqv/o;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lqv/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLView;)V

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
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lqv/o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lqv/o;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
