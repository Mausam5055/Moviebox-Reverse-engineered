.class public final synthetic Lcom/cloud/hisavana/protocol/okhttptransport/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/f;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/f;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
