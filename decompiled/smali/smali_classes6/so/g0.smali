.class public final Lso/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/cardview/widget/CardView;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/cardview/widget/CardView;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso/g0;->a:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lso/g0;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lso/g0;->c:Landroidx/cardview/widget/CardView;

    iput-object p4, p0, Lso/g0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p5, p0, Lso/g0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lso/g0;->f:Lcom/noober/background/view/BLTextView;

    iput-object p7, p0, Lso/g0;->g:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lso/g0;
    .locals 10

    sget v0, Lcom/transsion/postdetail/R$id;->flPlayer:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    move-object v5, p0

    check-cast v5, Landroidx/cardview/widget/CardView;

    sget v0, Lcom/transsion/postdetail/R$id;->iv_cover:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->iv_video_play:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tv_video_duration:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->v_cover_stroke:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/noober/background/view/BLView;

    new-instance p0, Lso/g0;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lso/g0;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLView;)V

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
.method public b()Landroidx/cardview/widget/CardView;
    .locals 1

    iget-object v0, p0, Lso/g0;->a:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lso/g0;->b()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method
