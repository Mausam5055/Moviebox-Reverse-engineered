.class public final synthetic Lcom/transsion/postdetail/shorttv/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;->c(Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;Lcom/transsion/moviedetailapi/bean/ShortTVRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
