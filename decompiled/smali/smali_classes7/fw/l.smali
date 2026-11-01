.class public final Lfw/l;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

.field public final e:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

.field public final f:Lcom/tn/lib/view/TitleLayout;

.field public final g:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

.field public final h:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Lcom/tn/lib/view/TitleLayout;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/l;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lfw/l;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lfw/l;->d:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    iput-object p5, p0, Lfw/l;->e:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    iput-object p6, p0, Lfw/l;->f:Lcom/tn/lib/view/TitleLayout;

    iput-object p7, p0, Lfw/l;->g:Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    iput-object p8, p0, Lfw/l;->h:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/l;
    .locals 11

    sget v0, Lcom/transsion/usercenter/R$id;->ivAvatar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->ivRight:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->titleBirth:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->titleGender:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->titleLayout:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tn/lib/view/TitleLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->titleRegion:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/usercenter/ProfileSettingTitleLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->tvNickName:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    new-instance v0, Lfw/l;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lfw/l;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Lcom/tn/lib/view/TitleLayout;Lcom/transsion/usercenter/ProfileSettingTitleLayout;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/l;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/l;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/l;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->activity_profile_edit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/l;->a(Landroid/view/View;)Lfw/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/l;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
