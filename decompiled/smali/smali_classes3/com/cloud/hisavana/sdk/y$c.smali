.class final Lcom/cloud/hisavana/sdk/y$c;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/y;->I(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "timeInterval",
        "",
        "a",
        "(I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/y$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/y;->z(Lcom/cloud/hisavana/sdk/y;)J

    move-result-wide v3

    sub-long v3, v0, v3

    int-to-long v5, p1

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/y;->j(J)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    const-string v3, "attr_click_time"

    invoke-virtual {p1, v3, v0, v1}, Lj7/a;->q(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/y;->x(Lcom/cloud/hisavana/sdk/y;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/y$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2, p1}, Lcom/cloud/hisavana/sdk/y;->l(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y$c;->a(I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
