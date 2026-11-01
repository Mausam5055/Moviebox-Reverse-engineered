.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o000oOoO"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Runnable;

.field public final OooO0O0:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO00o:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO0O0:J

    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO00o:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO0O0:J

    invoke-static {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
