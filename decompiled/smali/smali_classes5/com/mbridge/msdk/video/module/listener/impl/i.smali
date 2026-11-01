.class public Lcom/mbridge/msdk/video/module/listener/impl/i;
.super Lcom/mbridge/msdk/video/module/listener/impl/f;


# instance fields
.field protected a:Lcom/mbridge/msdk/video/module/listener/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/listener/impl/f;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/listener/impl/i;->a:Lcom/mbridge/msdk/video/module/listener/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/listener/impl/f;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/i;->a:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
