.class public final synthetic Lkl/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

.field public final synthetic b:Lcom/transsion/home/bean/UGCRankAllData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/film/UGCFilmListFragment;Lcom/transsion/home/bean/UGCRankAllData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl/f;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    iput-object p2, p0, Lkl/f;->b:Lcom/transsion/home/bean/UGCRankAllData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkl/f;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    iget-object v1, p0, Lkl/f;->b:Lcom/transsion/home/bean/UGCRankAllData;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->l0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;Lcom/transsion/home/bean/UGCRankAllData;)V

    return-void
.end method
