.class public final synthetic Lcom/transsion/moviedetail/fragment/x0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/x0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/x0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/x0;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/x0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->s0(Ljava/util/List;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
