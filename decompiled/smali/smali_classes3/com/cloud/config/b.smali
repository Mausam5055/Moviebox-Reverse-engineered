.class public final synthetic Lcom/cloud/config/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/s;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/b;->a:Lcom/cloud/config/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/b;->a:Lcom/cloud/config/s;

    invoke-static {v0}, Lcom/cloud/config/AbsConfigStore;->c(Lcom/cloud/config/s;)V

    return-void
.end method
