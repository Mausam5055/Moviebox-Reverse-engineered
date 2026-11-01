.class public Lbe/c$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/c;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbe/c;


# direct methods
.method public constructor <init>(Lbe/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbe/c$b;->a:Lbe/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const-string v2, "CacheHandler"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->loadAd()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "receive MSG_BIDDING_WAITING..."

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/c$b;->a:Lbe/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbe/c;->U(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "receive MSG_REQUEST_NEXT_GROUP_WAITING..."

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/c$b;->a:Lbe/c;

    invoke-static {p1}, Lbe/c;->r(Lbe/c;)Z

    :cond_2
    :goto_0
    return-void
.end method
