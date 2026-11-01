.class public final Lcom/transsion/subroom/activity/SecondFloorHelper$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SecondFloorHelper;->c0(FZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/SecondFloorHelper;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    iput-boolean p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->b:Z

    iput-boolean p3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->c:Z

    iput-boolean p4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->d:Z

    iput-boolean p5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->e:Z

    iput-boolean p6, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->f:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->u(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    iget-boolean v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->b:Z

    iget-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->c:Z

    iget-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->d:Z

    iget-boolean v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->e:Z

    iget-boolean v6, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/transsion/subroom/activity/SecondFloorHelper;->r(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->u(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    iget-boolean v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->b:Z

    iget-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->c:Z

    iget-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->d:Z

    iget-boolean v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->e:Z

    iget-boolean v6, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$a;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/transsion/subroom/activity/SecondFloorHelper;->r(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V

    return-void
.end method
