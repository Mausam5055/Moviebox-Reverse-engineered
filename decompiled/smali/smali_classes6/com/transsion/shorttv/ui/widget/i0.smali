.class public final synthetic Lcom/transsion/shorttv/ui/widget/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ad/playeroverlayad/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/i0;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/i0;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
