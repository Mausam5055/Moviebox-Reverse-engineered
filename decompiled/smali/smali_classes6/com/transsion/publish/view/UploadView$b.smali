.class public final Lcom/transsion/publish/view/UploadView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/UploadView;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/UploadView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/UploadView$b;->a:Lcom/transsion/publish/view/UploadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/publish/view/UploadView$b;->a:Lcom/transsion/publish/view/UploadView;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/view/UploadView;->access$setLastSucceedTime$p(Lcom/transsion/publish/view/UploadView;J)V

    iget-object p1, p0, Lcom/transsion/publish/view/UploadView$b;->a:Lcom/transsion/publish/view/UploadView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/publish/view/UploadView$b;->a:Lcom/transsion/publish/view/UploadView;

    invoke-virtual {p1}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
