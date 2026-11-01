.class public final synthetic Lcom/cloud/tmc/miniapp/base/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/m;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
