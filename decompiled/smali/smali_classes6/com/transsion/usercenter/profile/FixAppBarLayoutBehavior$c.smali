.class Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->P0(Lcom/google/android/material/appbar/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
