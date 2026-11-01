.class public final synthetic Lcom/transsion/commercialization/task/wheel/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
