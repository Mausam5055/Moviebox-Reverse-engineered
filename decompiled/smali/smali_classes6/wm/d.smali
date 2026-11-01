.class public final Lwm/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final b:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final c:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/transsion/baseui/widget/GradientBorderView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwm/d;->a:Lcom/transsion/baseui/widget/GradientBorderView;

    iput-object p2, p0, Lwm/d;->b:Lcom/transsion/baseui/widget/GradientBorderView;

    iput-object p3, p0, Lwm/d;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p4, p0, Lwm/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lwm/d;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lwm/d;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lwm/d;->g:Landroid/widget/ImageView;

    iput-object p8, p0, Lwm/d;->h:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lwm/d;
    .locals 9

    move-object v2, p0

    check-cast v2, Lcom/transsion/baseui/widget/GradientBorderView;

    sget v0, Lcom/transsion/member/R$id;->explore:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v3, :cond_0

    sget v0, Lcom/transsion/member/R$id;->explore_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_detail:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_premium_mask:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance p0, Lwm/d;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v8}, Lwm/d;-><init>(Lcom/transsion/baseui/widget/GradientBorderView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

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
.method public b()Lcom/transsion/baseui/widget/GradientBorderView;
    .locals 1

    iget-object v0, p0, Lwm/d;->a:Lcom/transsion/baseui/widget/GradientBorderView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lwm/d;->b()Lcom/transsion/baseui/widget/GradientBorderView;

    move-result-object v0

    return-object v0
.end method
