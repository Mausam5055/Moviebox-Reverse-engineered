.class public final synthetic Lcom/transsion/moviedetail/fragment/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/m;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/m;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->j0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V

    return-void
.end method
