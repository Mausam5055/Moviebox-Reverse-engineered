.class Lcom/mbridge/msdk/video/dynview/moffer/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/moffer/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/moffer/a;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$b;->b:Lcom/mbridge/msdk/video/dynview/moffer/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$b;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a$b;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->checkViewVisiableState()V

    :cond_0
    return-void
.end method
