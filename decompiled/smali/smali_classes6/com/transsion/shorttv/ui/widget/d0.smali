.class public final synthetic Lcom/transsion/shorttv/ui/widget/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/d0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/d0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    check-cast p1, Lcom/transsion/shorttv/bean/DubsInfo;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
