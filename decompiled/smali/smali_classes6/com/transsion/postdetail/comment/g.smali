.class public final Lcom/transsion/postdetail/comment/g;
.super Landroidx/appcompat/app/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/comment/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/postdetail/comment/m;

.field private b:Lro/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget v0, Lcom/transsion/postdetail/R$style;->CommentEditInputDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/transsion/postdetail/R$layout;->dialog_comment_input_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    :goto_0
    new-instance p1, Lcom/transsion/postdetail/comment/m;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/comment/g;->b:Lro/a;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/m;->k(Lro/a;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->B()V

    :cond_1
    return-void
.end method

.method private final m()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->z()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->g()V

    :cond_0
    return-void
.end method

.method public final g()Lro/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->b:Lro/a;

    return-object v0
.end method

.method public final h()Lcom/transsion/postdetail/comment/m;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    return-object v0
.end method

.method public final j(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->b:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->g(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public final k(Lro/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/comment/g;->b:Lro/a;

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g;->a:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->y()V

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

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/g;->i()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/w;->onStop()V

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/g;->m()V

    return-void
.end method
