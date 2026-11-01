.class public final synthetic Lcom/transsion/shorttv/ad/playeroverlayad/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ad/playeroverlayad/e;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/b;->a:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/b;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/b;->a:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/b;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
