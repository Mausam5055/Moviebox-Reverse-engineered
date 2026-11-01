.class public final Lfw/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatTextView;

.field public final c:Landroidx/appcompat/widget/AppCompatEditText;

.field public final d:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

.field public final e:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatEditText;

.field public final g:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatEditText;Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatEditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/g0;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lfw/g0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lfw/g0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p4, p0, Lfw/g0;->d:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    iput-object p5, p0, Lfw/g0;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p6, p0, Lfw/g0;->f:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p7, p0, Lfw/g0;->g:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/g0;
    .locals 10

    sget v0, Lcom/transsion/usercenter/R$id;->countTextView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->countryEditText:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->editText:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->imageView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->phoneEditText:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->view6:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lfw/g0;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lfw/g0;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatEditText;Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatEditText;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/g0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->feedback_option_list_footer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/g0;->a(Landroid/view/View;)Lfw/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lfw/g0;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/g0;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
