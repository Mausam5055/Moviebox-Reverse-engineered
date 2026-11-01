.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->endIndicator(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

.field final synthetic b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setIndicatorState$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setCurrentAngularSpeed$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$getStateListener$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)Lcom/transsion/commercialization/task/wheel/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    invoke-interface {p1, v0}, Lcom/transsion/commercialization/task/wheel/e;->c(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    :cond_0
    return-void
.end method
