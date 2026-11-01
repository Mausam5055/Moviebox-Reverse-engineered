.class public Lcom/bytedance/sdk/openadsdk/core/Dq/zR;
.super Landroid/view/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/sP/vS;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sP:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->HiB:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->vS:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->aa:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    const-string p3, "vessel"

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/content/Context;)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->uA(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Dq(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object p1

    return-object p1
.end method

.method Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;->Sj()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->sP:Lcom/bytedance/sdk/openadsdk/core/sP/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public sP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/zR;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/zR$Sj;->sP()Z

    move-result v0

    return v0
.end method
