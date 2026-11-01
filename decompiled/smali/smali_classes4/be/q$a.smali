.class public Lbe/q$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/q;-><init>(Lbe/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lbe/q;


# direct methods
.method public constructor <init>(Lbe/q;Landroid/os/Looper;Z)V
    .locals 0

    iput-object p1, p0, Lbe/q$a;->b:Lbe/q;

    iput-boolean p3, p0, Lbe/q$a;->a:Z

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "QueryPriceCenter"

    const-string v1, "receive MSG_QUERY_TIME_OUT message"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lbe/q$a;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbe/q$a;->b:Lbe/q;

    invoke-static {p1, v0}, Lbe/q;->f(Lbe/q;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbe/q$a;->b:Lbe/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lbe/q;->g(Lbe/q;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
