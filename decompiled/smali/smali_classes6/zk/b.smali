.class public final Lzk/b;
.super Landroid/app/Dialog;


# instance fields
.field private a:Lyk/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lzk/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lzk/b;->b(Lzk/b;Landroid/view/View;)V

    return-void
.end method

.method private static final b(Lzk/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lyk/b;->c(Landroid/view/LayoutInflater;)Lyk/b;

    move-result-object p1

    iput-object p1, p0, Lzk/b;->a:Lyk/b;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lyk/b;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lzk/b;->a:Lyk/b;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Lyk/b;->b()Landroid/widget/LinearLayout;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lal/a;->a(Landroid/view/View;F)V

    iget-object v2, p0, Lzk/b;->a:Lyk/b;

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    iget-object v2, v2, Lyk/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "btnOk"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lal/a;->a(Landroid/view/View;F)V

    iget-object p1, p0, Lzk/b;->a:Lyk/b;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lyk/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lzk/a;

    invoke-direct {v0, p0}, Lzk/a;-><init>(Lzk/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
