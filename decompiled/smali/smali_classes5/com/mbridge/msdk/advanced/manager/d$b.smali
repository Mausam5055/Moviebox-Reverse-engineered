.class Lcom/mbridge/msdk/advanced/manager/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/d;->a(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/d$b;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/d$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/d$b;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
