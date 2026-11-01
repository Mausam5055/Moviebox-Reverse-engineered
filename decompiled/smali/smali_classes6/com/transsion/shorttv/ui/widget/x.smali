.class public final synthetic Lcom/transsion/shorttv/ui/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

.field public final synthetic b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/x;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/x;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/x;->c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/x;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/x;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/x;->c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
