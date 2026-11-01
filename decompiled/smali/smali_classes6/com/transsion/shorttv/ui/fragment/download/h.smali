.class public final synthetic Lcom/transsion/shorttv/ui/fragment/download/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/h;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/h;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/h;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->u0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/util/List;)V

    return-void
.end method
