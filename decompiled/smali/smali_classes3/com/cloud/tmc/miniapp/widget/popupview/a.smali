.class public final synthetic Lcom/cloud/tmc/miniapp/widget/popupview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/popupview/a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/a;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    return-void
.end method
