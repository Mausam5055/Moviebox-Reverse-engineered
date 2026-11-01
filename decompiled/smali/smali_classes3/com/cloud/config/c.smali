.class public final synthetic Lcom/cloud/config/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/s;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/config/c;->a:Lcom/cloud/config/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cloud/config/c;->a:Lcom/cloud/config/s;

    invoke-static {v0, v1}, Lcom/cloud/config/AbsConfigStore;->a(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    return-void
.end method
