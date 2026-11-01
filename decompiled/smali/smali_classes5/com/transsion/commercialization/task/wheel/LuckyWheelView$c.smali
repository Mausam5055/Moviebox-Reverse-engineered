.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setIndicatorWorldAngle$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setCurrentAngularSpeed$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setIndicatorState$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
