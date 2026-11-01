.class public final Lpy/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lpy/z0;

.field public final c:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lpy/z0;Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/c0;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lpy/c0;->b:Lpy/z0;

    iput-object p3, p0, Lpy/c0;->c:Landroid/view/ViewStub;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/c0;
    .locals 3

    sget v0, Lcom/transsnet/downloader/R$id;->included_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lpy/z0;->a(Landroid/view/View;)Lpy/z0;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$id;->vs_allow_access:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    new-instance v1, Lpy/c0;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v0, v2}, Lpy/c0;-><init>(Landroid/widget/FrameLayout;Lpy/z0;Landroid/view/ViewStub;)V

    return-object v1

    :cond_0
    move v0, v1

    :cond_1
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
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lpy/c0;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/c0;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
