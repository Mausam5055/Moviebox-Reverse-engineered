.class public final Lso/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/noober/background/view/BLImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Lcom/noober/background/view/BLTextView;

.field public final e:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/noober/background/view/BLImageView;Landroid/widget/ProgressBar;Lcom/noober/background/view/BLTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso/t0;->a:Landroid/view/View;

    iput-object p2, p0, Lso/t0;->b:Lcom/noober/background/view/BLImageView;

    iput-object p3, p0, Lso/t0;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lso/t0;->d:Lcom/noober/background/view/BLTextView;

    iput-object p5, p0, Lso/t0;->e:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lso/t0;
    .locals 8

    sget v0, Lcom/transsion/postdetail/R$id;->ivMute:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/noober/background/view/BLImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->playerProgress:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->tvVideoDuration:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/noober/background/view/BLTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/postdetail/R$id;->vMuteHotZone:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lso/t0;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lso/t0;-><init>(Landroid/view/View;Lcom/noober/background/view/BLImageView;Landroid/widget/ProgressBar;Lcom/noober/background/view/BLTextView;Landroid/view/View;)V

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

    iget-object v0, p0, Lso/t0;->a:Landroid/view/View;

    return-object v0
.end method
