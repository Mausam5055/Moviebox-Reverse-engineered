.class public final Lcom/transsion/shorttv/ad/playeroverlayad/e$a;
.super Le7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

.field final synthetic g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

.field final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    iput-object p3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->h:Lkotlin/jvm/functions/Function0;

    const-wide/16 p1, 0x3e8

    invoke-direct {p0, p4, p5, p1, p2}, Le7/e;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->h:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public f(J)V
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-long p1, p1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d(Lcom/transsion/shorttv/ad/playeroverlayad/e;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
