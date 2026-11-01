.class public final synthetic Lcom/transsion/moviedetail/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/view/MovieDetailShareView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/view/r;->a:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/view/r;->a:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V

    return-void
.end method
