.class Lcom/cloud/hisavana/sdk/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private final b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic c:Lcom/cloud/hisavana/sdk/f;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/f;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/f$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    instance-of v2, p1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/t2;->r()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v2, v0, v1}, Lcom/cloud/hisavana/sdk/f;->c(Lcom/cloud/hisavana/sdk/f;J)J

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/t2;->o(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/t2;->n(Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ssp"

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ad_download"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v4, "pslink half setClickType, click_install"

    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v4, "pslink half setClickType, click_img"

    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/f;->q(Lcom/cloud/hisavana/sdk/f;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v11, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/f;->a(Lcom/cloud/hisavana/sdk/f;)F

    move-result v5

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/f;->h(Lcom/cloud/hisavana/sdk/f;)F

    move-result v6

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/f;->l(Lcom/cloud/hisavana/sdk/f;)F

    move-result v7

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/f;->o(Lcom/cloud/hisavana/sdk/f;)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->v()Z

    move-result p1

    :goto_2
    invoke-static {v2, v3, v11, p1}, Lcom/cloud/hisavana/sdk/N0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f;->r(Lcom/cloud/hisavana/sdk/f;)Lcom/cloud/hisavana/sdk/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/f$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$b;->c:Lcom/cloud/hisavana/sdk/f;

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/f;->c(Lcom/cloud/hisavana/sdk/f;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method
