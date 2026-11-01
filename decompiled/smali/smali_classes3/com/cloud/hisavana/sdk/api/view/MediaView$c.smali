.class Lcom/cloud/hisavana/sdk/api/view/MediaView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/api/view/MediaView;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/api/view/MediaView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->n(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->p(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->k(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
