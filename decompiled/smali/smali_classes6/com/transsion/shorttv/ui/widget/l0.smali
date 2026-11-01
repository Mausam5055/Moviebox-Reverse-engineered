.class public final synthetic Lcom/transsion/shorttv/ui/widget/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/l0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/l0;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/l0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget v1, p0, Lcom/transsion/shorttv/ui/widget/l0;->b:F

    check-cast p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
