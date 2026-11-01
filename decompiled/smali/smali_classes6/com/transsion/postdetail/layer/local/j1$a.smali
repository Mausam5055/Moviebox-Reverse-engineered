.class public final Lcom/transsion/postdetail/layer/local/j1$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/j1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/layer/local/j1;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/j1;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1$a;->a:Lcom/transsion/postdetail/layer/local/j1;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/j1$a;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/postdetail/layer/local/j1$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/j1$a;->a:Lcom/transsion/postdetail/layer/local/j1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/layer/local/j1;->c(Lcom/transsion/postdetail/layer/local/j1;J)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/j1$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/j1$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
