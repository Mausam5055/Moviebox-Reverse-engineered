.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOOO"
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:F

.field public OooO0OO:J

.field public OooO0Oo:J

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;F)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_7

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    float-to-double v4, v4

    const v6, 0x3f7ae148    # 0.98f

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    const/16 v9, 0xa

    int-to-float v10, v9

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v10, v11, v10

    div-float/2addr v8, v10

    float-to-double v12, v8

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-float v4, v6

    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v11

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    const/4 v4, 0x0

    if-lez v3, :cond_6

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0Oo:J

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO00o:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v3, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    mul-int/2addr v3, v0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v1, v9

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iput-object v4, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    neg-float v3, v3

    float-to-int v3, v3

    sget v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0O0:F

    instance-of v4, v0, Landroid/widget/ScrollView;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    :cond_1
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->fling(I)V

    goto :goto_0

    :cond_2
    instance-of v4, v0, Landroid/webkit/WebView;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0

    :cond_3
    instance-of v4, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_4

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_0

    :cond_4
    instance-of v4, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_5

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    :cond_7
    :goto_1
    return-void
.end method
