.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_first_privacy_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
