.class public final synthetic Lwo/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

.field public final synthetic b:Lso/n;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lso/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo/e;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iput-object p2, p0, Lwo/e;->b:Lso/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwo/e;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iget-object v1, p0, Lwo/e;->b:Lso/n;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->d0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lso/n;)V

    return-void
.end method
