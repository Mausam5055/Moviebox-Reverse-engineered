.class public final synthetic Lzx/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/transsion/ad/ps/activate/PsActivateBean;

.field public final synthetic c:Lzx/e;

.field public final synthetic d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

.field public final synthetic e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx/b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lzx/b;->b:Lcom/transsion/ad/ps/activate/PsActivateBean;

    iput-object p3, p0, Lzx/b;->c:Lzx/e;

    iput-object p4, p0, Lzx/b;->d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

    iput-object p5, p0, Lzx/b;->e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lzx/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lzx/b;->b:Lcom/transsion/ad/ps/activate/PsActivateBean;

    iget-object v2, p0, Lzx/b;->c:Lzx/e;

    iget-object v3, p0, Lzx/b;->d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

    iget-object v4, p0, Lzx/b;->e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->a(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V

    return-void
.end method
