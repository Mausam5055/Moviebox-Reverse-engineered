.class Lcom/cloud/hisavana/sdk/o$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$f;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o$f;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$f;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->x(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$f;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->x(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method
