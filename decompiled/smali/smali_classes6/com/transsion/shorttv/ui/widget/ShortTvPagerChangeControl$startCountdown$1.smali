.class public final Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $remaining:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->h(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release(Z)V

    :cond_3
    :goto_1
    return-void
.end method
