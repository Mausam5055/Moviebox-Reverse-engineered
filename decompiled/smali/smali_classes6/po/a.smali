.class public final Lpo/a;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/ProgressBar;

.field public final f:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpo/a;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lpo/a;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lpo/a;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lpo/a;->d:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lpo/a;->e:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lpo/a;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpo/a;
    .locals 9

    sget v0, Lcom/transsion/player/view/R$id;->bvIV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/player/view/R$id;->bvProgress:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/player/view/R$id;->secProgress:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/player/view/R$id;->tipsLL:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    new-instance p0, Lpo/a;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lpo/a;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

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
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lpo/a;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpo/a;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
