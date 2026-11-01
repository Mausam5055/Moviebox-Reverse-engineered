.class public final Lcom/cloud/hisavana/protocol/okhttptransport/a$b;
.super Lcom/cloud/hisavana/protocol/okhttptransport/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    const-class v0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/protocol/okhttptransport/h;-><init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Lcom/cloud/hisavana/protocol/okhttptransport/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Lcom/cloud/hisavana/protocol/okhttptransport/a;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;Lcom/cloud/hisavana/protocol/okhttptransport/a$a;)V

    return-object v0
.end method
