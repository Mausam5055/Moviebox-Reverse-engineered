.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/provider/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/e;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/e;->b:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/e;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/e;->b:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;->y(Lcom/transsion/shorttv_pugc/ui/adapter/provider/f;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V

    return-void
.end method
