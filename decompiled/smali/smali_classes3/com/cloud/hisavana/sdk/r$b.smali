.class public final Lcom/cloud/hisavana/sdk/r$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/r;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/r;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/r;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/r;->b(Lcom/cloud/hisavana/sdk/r;)Lcom/cloud/hisavana/sdk/s4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/s4;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/r;->h(Lcom/cloud/hisavana/sdk/r;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
