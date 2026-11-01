.class public final synthetic Lcom/cloud/tmc/miniapp/utils/athena/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/b;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/util/List;)V

    return-void
.end method
