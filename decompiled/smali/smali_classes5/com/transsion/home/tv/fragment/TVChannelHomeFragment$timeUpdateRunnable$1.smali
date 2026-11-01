.class public final Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;-><init>()V
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
        "com/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "Home_psRelease"
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
.field final synthetic this$0:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1;->this$0:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1;->this$0:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->D0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1;->this$0:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {v2}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->B0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0xea60

    int-to-long v3, v3

    div-long v5, v0, v3

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    mul-long/2addr v5, v3

    sub-long/2addr v5, v0

    invoke-virtual {v2, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
