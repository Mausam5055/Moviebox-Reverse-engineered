.class Lcom/mbridge/msdk/advanced/manager/b$l$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b$l;->onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/manager/b$l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b$l;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l$a;->a:Lcom/mbridge/msdk/advanced/manager/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$l$a;->a:Lcom/mbridge/msdk/advanced/manager/b$l;

    iget-object v1, v0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object v2, v0, Lcom/mbridge/msdk/advanced/manager/b$l;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v0, v0, Lcom/mbridge/msdk/advanced/manager/b$l;->b:I

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    return-void
.end method
