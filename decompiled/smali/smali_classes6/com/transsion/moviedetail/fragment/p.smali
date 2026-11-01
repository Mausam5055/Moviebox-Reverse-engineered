.class public final synthetic Lcom/transsion/moviedetail/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/p;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/p;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->y0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
