.class public final Lms/u;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final d:Lcom/transsion/shorttv/base/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/base/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/u;->a:Landroid/view/View;

    iput-object p2, p0, Lms/u;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lms/u;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p4, p0, Lms/u;->d:Lcom/transsion/shorttv/base/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lms/u;
    .locals 4

    sget v0, Lcom/transsion/shorttv/R$id;->iv_icon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->ll_download_inner:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v2, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->short_tv_tips:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v3, :cond_0

    new-instance v0, Lms/u;

    invoke-direct {v0, p0, v1, v2, v3}, Lms/u;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/base/widget/TnTextView;)V

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

    iget-object v0, p0, Lms/u;->a:Landroid/view/View;

    return-object v0
.end method
