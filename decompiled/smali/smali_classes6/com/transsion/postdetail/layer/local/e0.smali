.class public final synthetic Lcom/transsion/postdetail/layer/local/e0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/layer/local/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/layer/local/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/e0;->a:Lcom/transsion/postdetail/layer/local/i0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/e0;->a:Lcom/transsion/postdetail/layer/local/i0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/i0;->b(Lcom/transsion/postdetail/layer/local/i0;)V

    return-void
.end method
