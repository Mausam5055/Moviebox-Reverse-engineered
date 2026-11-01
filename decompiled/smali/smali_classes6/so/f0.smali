.class public final Lso/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Lcom/noober/background/view/BLTextView;

.field public final e:Lcom/noober/background/view/BLView;

.field public final f:Lcom/noober/background/view/BLImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso/f0;->a:Landroid/view/View;

    iput-object p2, p0, Lso/f0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lso/f0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lso/f0;->d:Lcom/noober/background/view/BLTextView;

    iput-object p5, p0, Lso/f0;->e:Lcom/noober/background/view/BLView;

    iput-object p6, p0, Lso/f0;->f:Lcom/noober/background/view/BLImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lso/f0;
    .locals 9

    sget v0, Lcom/transsion/postdetail/R$id;->iv_short_tv_guide_arrow_1:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->iv_short_tv_guide_arrow_2:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tv_short_tv_guide_ep:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/noober/background/view/BLTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tv_short_tv_guide_ep_bg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/noober/background/view/BLView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tv_short_tv_guide_list:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLImageView;

    if-eqz v8, :cond_0

    new-instance v0, Lso/f0;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lso/f0;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLImageView;)V

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

    iget-object v0, p0, Lso/f0;->a:Landroid/view/View;

    return-object v0
.end method
