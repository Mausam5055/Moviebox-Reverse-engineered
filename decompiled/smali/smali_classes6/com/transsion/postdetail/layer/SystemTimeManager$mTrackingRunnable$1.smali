.class public final Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/SystemTimeManager;-><init>(Lcom/transsion/postdetail/layer/SystemTimeManager$a;)V
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
        "com/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "PostDetail_psRelease"
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
.field final synthetic this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/SystemTimeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/SystemTimeManager;->a(Lcom/transsion/postdetail/layer/SystemTimeManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    :cond_3
    :goto_1
    return-void
.end method
