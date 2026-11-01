.class public final synthetic Lcom/transsion/player/longvideo/ui/dialog/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

.field public final synthetic b:Lgo/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/b;->a:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/b;->b:Lgo/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/b;->a:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/b;->b:Lgo/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->n0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/b;Landroid/view/View;)V

    return-void
.end method
