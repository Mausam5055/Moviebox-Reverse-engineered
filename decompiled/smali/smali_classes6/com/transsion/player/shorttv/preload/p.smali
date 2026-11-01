.class public final synthetic Lcom/transsion/player/shorttv/preload/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/shorttv/preload/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/shorttv/preload/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/p;->a:Lcom/transsion/player/shorttv/preload/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/p;->a:Lcom/transsion/player/shorttv/preload/a;

    invoke-static {v0}, Lcom/transsion/player/shorttv/preload/q;->d(Lcom/transsion/player/shorttv/preload/a;)V

    return-void
.end method
