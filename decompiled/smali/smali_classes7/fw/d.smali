.class public final Lfw/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Lcom/transsion/baseui/widget/EditTextWithClear;

.field public final c:Lcom/transsion/baseui/widget/EditTextWithClear;

.field public final d:Lcom/transsion/baseui/widget/EditTextWithClear;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/transsion/baseui/widget/EditTextWithClear;Lcom/transsion/baseui/widget/EditTextWithClear;Lcom/transsion/baseui/widget/EditTextWithClear;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/d;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lfw/d;->b:Lcom/transsion/baseui/widget/EditTextWithClear;

    iput-object p3, p0, Lfw/d;->c:Lcom/transsion/baseui/widget/EditTextWithClear;

    iput-object p4, p0, Lfw/d;->d:Lcom/transsion/baseui/widget/EditTextWithClear;

    iput-object p5, p0, Lfw/d;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lfw/d;->f:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/d;
    .locals 9

    sget v0, Lcom/transsion/usercenter/R$id;->edDeeplink:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->etAppId:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->etSceneId:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tvApiOpen:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tvDpOpen:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance v0, Lfw/d;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lfw/d;-><init>(Landroid/widget/LinearLayout;Lcom/transsion/baseui/widget/EditTextWithClear;Lcom/transsion/baseui/widget/EditTextWithClear;Lcom/transsion/baseui/widget/EditTextWithClear;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/d;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/d;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/d;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->activity_lab_miniapp_sdk:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/d;->a(Landroid/view/View;)Lfw/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lfw/d;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/d;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
