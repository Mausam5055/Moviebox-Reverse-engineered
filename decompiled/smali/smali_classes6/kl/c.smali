.class public final synthetic Lkl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl/c;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkl/c;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->n0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
