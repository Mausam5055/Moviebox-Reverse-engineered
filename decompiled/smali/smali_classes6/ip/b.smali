.class public final Lip/b;
.super Landroidx/appcompat/app/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lip/b$a;,
        Lip/b$b;
    }
.end annotation


# instance fields
.field private a:Lnp/j;

.field private b:Lip/b$b;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lip/b$b;Landroid/view/View;)V
    .locals 8

    sget v0, Lcom/transsion/publish/R$style;->CommentEditInputDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lip/b;->b:Lip/b$b;

    iput-object p3, p0, Lip/b;->c:Landroid/view/View;

    sget p1, Lcom/transsion/publish/R$layout;->dialog_link_input_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p3, 0x50

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_1
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    :goto_0
    iget-object v4, p0, Lip/b;->c:Landroid/view/View;

    new-instance p1, Lnp/j;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lnp/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lip/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lip/b;->a:Lnp/j;

    new-instance p1, Lnp/b;

    invoke-direct {p1}, Lnp/b;-><init>()V

    iget-object p2, p0, Lip/b;->a:Lnp/j;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lnp/j;->k(Lnp/b;)V

    :cond_4
    new-instance p1, Lip/a;

    invoke-direct {p1, p0}, Lip/a;-><init>(Lip/b;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lip/b$b;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lip/b;-><init>(Landroid/content/Context;Lip/b$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lip/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lip/b;->g(Lip/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static final g(Lip/b;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lip/b;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final h()V
    .locals 0

    return-void
.end method

.method private final i()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/w;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lip/b;->c:Landroid/view/View;

    iget-object v0, p0, Lip/b;->a:Lnp/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnp/j;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/q;->onStart()V

    invoke-direct {p0}, Lip/b;->h()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/w;->onStop()V

    invoke-direct {p0}, Lip/b;->i()V

    return-void
.end method
