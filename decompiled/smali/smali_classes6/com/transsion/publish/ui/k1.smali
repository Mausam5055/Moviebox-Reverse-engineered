.class public final synthetic Lcom/transsion/publish/ui/k1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/VideoPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/k1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/k1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->l0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
