.class public final Lfw/h1;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Lcom/tn/lib/widget/TnButton;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lcom/tn/lib/view/TitleLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/tn/lib/widget/TnButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/tn/lib/view/TitleLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/h1;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lfw/h1;->b:Lcom/tn/lib/widget/TnButton;

    iput-object p3, p0, Lfw/h1;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lfw/h1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lfw/h1;->e:Lcom/tn/lib/view/TitleLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/h1;
    .locals 8

    sget v0, Lcom/transsion/usercenter/R$id;->btn_login:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tn/lib/widget/TnButton;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->deviceInfoTv:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->rv:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tool_bar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tn/lib/view/TitleLayout;

    if-eqz v7, :cond_0

    new-instance v0, Lfw/h1;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lfw/h1;-><init>(Landroid/widget/LinearLayout;Lcom/tn/lib/widget/TnButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/tn/lib/view/TitleLayout;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/h1;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/h1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/h1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/h1;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->user_activity_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/h1;->a(Landroid/view/View;)Lfw/h1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lfw/h1;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/h1;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
