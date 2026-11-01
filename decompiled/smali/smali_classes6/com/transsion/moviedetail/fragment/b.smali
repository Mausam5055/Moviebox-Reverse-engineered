.class public final synthetic Lcom/transsion/moviedetail/fragment/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/ForYouFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/b;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/b;->a:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/ForYouFragment;->p0(Lcom/transsion/moviedetail/fragment/ForYouFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
