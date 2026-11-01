.class public final synthetic Lcom/transsion/room/helper/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/animation/ObjectAnimator;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ObjectAnimator;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/helper/m;->a:Landroid/animation/ObjectAnimator;

    iput-object p2, p0, Lcom/transsion/room/helper/m;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/transsion/room/helper/m;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/helper/m;->a:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/room/helper/m;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/room/helper/m;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/transsion/room/helper/n;->a(Landroid/animation/ObjectAnimator;Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method
