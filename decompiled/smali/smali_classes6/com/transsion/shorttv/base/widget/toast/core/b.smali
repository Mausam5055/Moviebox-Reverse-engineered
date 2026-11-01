.class public final Lcom/transsion/shorttv/base/widget/toast/core/b;
.super Ljava/lang/Object;

# interfaces
.implements Lgs/a;


# instance fields
.field private a:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-direct {v0, p1, p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;-><init>(Landroid/app/Activity;Lgs/a;)V

    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->a:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    invoke-static {p0, p1}, Lgs/a$a;->a(Lgs/a;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->a:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->e()V

    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->e:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->d:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->h:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->i:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->f:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->g:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->e:I

    return-void
.end method

.method public setGravity(III)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->d:I

    iput p2, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->f:I

    iput p3, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->g:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->h:F

    iput p2, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->i:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->b:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->c:Landroid/widget/TextView;

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/widget/toast/core/b;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->c:Landroid/widget/TextView;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/b;->a:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->h()V

    :cond_0
    return-void
.end method
