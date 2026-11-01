.class Lcom/cloud/hisavana/sdk/u2$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/u2;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/u2;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2$g;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2$g;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

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
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$g;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/u2;->t(Lcom/cloud/hisavana/sdk/u2;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$g;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/u2;->x(Lcom/cloud/hisavana/sdk/u2;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$g;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/u2;->a(Lcom/cloud/hisavana/sdk/u2;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$g;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/u2;->o(Lcom/cloud/hisavana/sdk/u2;F)F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
