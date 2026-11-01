.class public final synthetic Lcom/transsion/home/tv/fragment/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->q0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V

    return-void
.end method
