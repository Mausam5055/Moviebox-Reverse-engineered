.class final Lcom/cloud/hisavana/sdk/x0$a$c$a;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/x0$a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "result",
        "",
        "a",
        "(I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/x0;->a:Lcom/cloud/hisavana/sdk/x0$a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1, v1}, Lcom/cloud/hisavana/sdk/x0$a;->c(Lcom/cloud/hisavana/sdk/x0$a;ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x0$a$c$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/x0$a$c$a;->a(I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
