.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OooO00o:F

.field public final OooO0O0:F

.field public final OooO0OO:J

.field public final OooO0Oo:F

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

.field public final OooO0o0:F


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO00o:F

    iput p5, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0O0:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0OO:J

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0Oo:F

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0OO:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0Oo:F

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o0:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v2

    div-float v5, v3, v2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO00o:F

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0O0:F

    move-object v4, v2

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o(FFFFF)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
