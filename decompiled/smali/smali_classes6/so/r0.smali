.class public final Lso/r0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/noober/background/view/BLTextView;

.field public final c:Landroid/widget/Space;

.field public final d:Lcom/noober/background/view/BLTextView;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/noober/background/view/BLTextView;Landroid/widget/Space;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso/r0;->a:Landroid/view/View;

    iput-object p2, p0, Lso/r0;->b:Lcom/noober/background/view/BLTextView;

    iput-object p3, p0, Lso/r0;->c:Landroid/widget/Space;

    iput-object p4, p0, Lso/r0;->d:Lcom/noober/background/view/BLTextView;

    iput-object p5, p0, Lso/r0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lso/r0;
    .locals 8

    sget v0, Lcom/transsion/postdetail/R$id;->go_to_setting:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/noober/background/view/BLTextView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->guideline:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Space;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->retry:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/noober/background/view/BLTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tv_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    new-instance v0, Lso/r0;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lso/r0;-><init>(Landroid/view/View;Lcom/noober/background/view/BLTextView;Landroid/widget/Space;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lso/r0;
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/postdetail/R$layout;->view_imm_video_not_net:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lso/r0;->a(Landroid/view/View;)Lso/r0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lso/r0;->a:Landroid/view/View;

    return-object v0
.end method
