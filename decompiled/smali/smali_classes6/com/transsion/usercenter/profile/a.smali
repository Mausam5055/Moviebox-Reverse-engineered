.class public final synthetic Lcom/transsion/usercenter/profile/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/a;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/a;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
