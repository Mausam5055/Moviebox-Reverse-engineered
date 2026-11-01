.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;
.super Ljava/lang/Object;


# instance fields
.field public OooO00o:Landroid/graphics/PointF;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

.field public OooO0OO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method
