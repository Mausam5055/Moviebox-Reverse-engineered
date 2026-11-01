.class public final synthetic Lcom/transsion/moviedetail/fragment/c1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/c1;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/c1;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->u0(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
