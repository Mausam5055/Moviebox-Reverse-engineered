.class public final Lcom/transsion/postdetail/shorttv/factory/e;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 1

    const-string v0, "screenName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method
