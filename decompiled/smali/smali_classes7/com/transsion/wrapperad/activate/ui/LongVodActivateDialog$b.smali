.class public final Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Lzx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showAd() --> onActivate{open App \u72b6\u6001\u56de\u8c03} --> isActivate = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->p0(Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Z)V

    iget-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
