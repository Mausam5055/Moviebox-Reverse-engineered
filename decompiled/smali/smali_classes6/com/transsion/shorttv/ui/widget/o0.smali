.class public final synthetic Lcom/transsion/shorttv/ui/widget/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic c:Lcom/transsion/shorttv/bean/ShortTVItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/o0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/o0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/o0;->c:Lcom/transsion/shorttv/bean/ShortTVItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/o0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/o0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/o0;->c:Lcom/transsion/shorttv/bean/ShortTVItem;

    check-cast p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
