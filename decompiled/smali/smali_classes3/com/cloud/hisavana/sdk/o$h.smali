.class Lcom/cloud/hisavana/sdk/o$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$h;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o$h;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$h;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/o;->h(Lcom/cloud/hisavana/sdk/o;Landroid/view/View;)V

    return-void
.end method
