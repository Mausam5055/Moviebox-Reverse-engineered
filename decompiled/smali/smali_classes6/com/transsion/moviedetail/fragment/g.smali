.class public final synthetic Lcom/transsion/moviedetail/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/ForYouFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/g;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/g;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/transsion/moviedetail/fragment/ForYouFragment;->m0(Lcom/transsion/moviedetail/fragment/ForYouFragment;IJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
