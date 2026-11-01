.class public final Lms/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final b:Lcom/transsion/shorttv/base/widget/TnTextView;

.field public final c:Lcom/transsion/shorttv/base/widget/TnTextView;

.field public final d:Lcom/transsion/shorttv/base/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/base/widget/TnTextView;Lcom/transsion/shorttv/base/widget/TnTextView;Lcom/transsion/shorttv/base/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/g0;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p2, p0, Lms/g0;->b:Lcom/transsion/shorttv/base/widget/TnTextView;

    iput-object p3, p0, Lms/g0;->c:Lcom/transsion/shorttv/base/widget/TnTextView;

    iput-object p4, p0, Lms/g0;->d:Lcom/transsion/shorttv/base/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lms/g0;
    .locals 4

    sget v0, Lcom/transsion/shorttv/R$id;->iv_all:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v1, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->iv_hottest:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v2, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->iv_latest:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v3, :cond_0

    new-instance v0, Lms/g0;

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-direct {v0, p0, v1, v2, v3}, Lms/g0;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/base/widget/TnTextView;Lcom/transsion/shorttv/base/widget/TnTextView;Lcom/transsion/shorttv/base/widget/TnTextView;)V

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
.method public b()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    iget-object v0, p0, Lms/g0;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lms/g0;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    return-object v0
.end method
