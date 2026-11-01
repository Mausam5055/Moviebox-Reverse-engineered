.class public final synthetic Lcom/cloud/tmc/miniapp/widget/popupview/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/resource/IResourceProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->a:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->d:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->a:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->d:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/popupview/c;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lcom/cloud/tmc/kernel/resource/IResourceProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
