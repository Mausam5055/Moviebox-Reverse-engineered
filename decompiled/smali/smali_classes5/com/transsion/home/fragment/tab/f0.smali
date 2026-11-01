.class public final synthetic Lcom/transsion/home/fragment/tab/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/f0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/f0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/SubTabFragment;->B0(Lcom/transsion/home/fragment/tab/SubTabFragment;)V

    return-void
.end method
