.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->startIndicator()V
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

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$startStableSpin(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    return-void
.end method
