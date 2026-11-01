.class public final Lpy/g1;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/transsion/baseui/widget/GradientTextView;

.field public final c:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/transsion/baseui/widget/GradientTextView;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/g1;->a:Landroid/view/View;

    iput-object p2, p0, Lpy/g1;->b:Lcom/transsion/baseui/widget/GradientTextView;

    iput-object p3, p0, Lpy/g1;->c:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/g1;
    .locals 3

    sget v0, Lcom/transsnet/downloader/R$id;->tv_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v1, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_dot:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/noober/background/view/BLView;

    if-eqz v2, :cond_0

    new-instance v0, Lpy/g1;

    invoke-direct {v0, p0, v1, v2}, Lpy/g1;-><init>(Landroid/view/View;Lcom/transsion/baseui/widget/GradientTextView;Lcom/noober/background/view/BLView;)V

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

    iget-object v0, p0, Lpy/g1;->a:Landroid/view/View;

    return-object v0
.end method
