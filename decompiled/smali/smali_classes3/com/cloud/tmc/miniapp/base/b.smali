.class public final synthetic Lcom/cloud/tmc/miniapp/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/base/BaseActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/b;->a:Lcom/cloud/tmc/miniapp/base/BaseActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/b;->a:Lcom/cloud/tmc/miniapp/base/BaseActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->U(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V

    return-void
.end method
