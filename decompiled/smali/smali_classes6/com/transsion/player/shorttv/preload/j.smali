.class public final synthetic Lcom/transsion/player/shorttv/preload/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lao/e;


# direct methods
.method public synthetic constructor <init>(Lao/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/j;->a:Lao/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/j;->a:Lao/e;

    invoke-static {v0}, Lcom/transsion/player/shorttv/preload/q;->f(Lao/e;)V

    return-void
.end method
