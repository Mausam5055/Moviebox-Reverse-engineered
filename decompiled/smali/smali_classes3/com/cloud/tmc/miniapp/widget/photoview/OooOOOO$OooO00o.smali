.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(FFFFF)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v2, v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;->OooO00o(FFF)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    :cond_2
    return-void
.end method
