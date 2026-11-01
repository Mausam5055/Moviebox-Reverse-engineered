.class public final Lcom/transsion/baseui/music/MusicFloatView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/music/MusicFloatView;->y(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/transsion/baseui/music/MusicFloatView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/transsion/baseui/music/MusicFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$b;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/baseui/music/MusicFloatView$b;->b:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$b;->b:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-static {p1}, Lcom/transsion/baseui/music/MusicFloatView;->access$getBinding$p(Lcom/transsion/baseui/music/MusicFloatView;)Lbk/f;

    move-result-object p1

    iget-object p1, p1, Lbk/f;->h:Lcom/transsion/baseui/music/RoundedCornerLayout;

    const-string v0, "roundFold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
