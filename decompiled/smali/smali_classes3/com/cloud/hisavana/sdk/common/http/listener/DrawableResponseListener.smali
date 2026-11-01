.class public abstract Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.super Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end method

.method public final h(II[BLjava/lang/String;)V
    .locals 8

    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p3, v0

    const/16 v2, 0x47

    if-ne v0, v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_0
    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance p3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;

    invoke-direct {p3, p0, p2, v5, p4}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;IILjava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    const/4 p3, 0x0

    invoke-direct {p1, v5, p3, p4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;[BIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
