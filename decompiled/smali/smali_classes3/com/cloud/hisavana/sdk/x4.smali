.class public final synthetic Lcom/cloud/hisavana/sdk/x4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/r;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x4;->a:Lcom/cloud/hisavana/sdk/r;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/x4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/x4;->c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x4;->a:Lcom/cloud/hisavana/sdk/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/x4;->c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/cloud/hisavana/sdk/r;->a(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
