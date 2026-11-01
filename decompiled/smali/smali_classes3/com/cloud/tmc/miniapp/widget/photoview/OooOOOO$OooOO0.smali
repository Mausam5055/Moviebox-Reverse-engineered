.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Landroid/widget/OverScroller;

.field public OooO0O0:I

.field public OooO0OO:I

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
