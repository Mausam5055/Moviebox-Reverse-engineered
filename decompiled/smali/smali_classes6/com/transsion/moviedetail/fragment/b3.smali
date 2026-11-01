.class public final synthetic Lcom/transsion/moviedetail/fragment/b3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/TrailerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/TrailerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/b3;->a:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/b3;->a:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->b0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)V

    return-void
.end method
