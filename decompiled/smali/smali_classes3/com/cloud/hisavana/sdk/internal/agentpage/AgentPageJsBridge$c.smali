.class final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setUpX$cp(F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setUpY$cp(F)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setDownX$cp(F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setDownY$cp(F)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
