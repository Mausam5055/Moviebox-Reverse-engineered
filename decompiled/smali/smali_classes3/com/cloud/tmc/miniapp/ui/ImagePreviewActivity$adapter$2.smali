.class final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;->invoke()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v0

    return-object v0
.end method
