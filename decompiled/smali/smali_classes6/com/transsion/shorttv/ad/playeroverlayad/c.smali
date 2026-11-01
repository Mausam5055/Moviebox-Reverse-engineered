.class public final synthetic Lcom/transsion/shorttv/ad/playeroverlayad/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

.field public final synthetic b:Lcom/transsion/shorttv/ad/playeroverlayad/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/c;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/c;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/c;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/c;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->b(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    return-void
.end method
