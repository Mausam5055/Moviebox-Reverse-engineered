.class public final synthetic Lcom/transsion/player/longvideo/member/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/memberapi/PayModule;

.field public final synthetic b:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/memberapi/PayModule;Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/n;->a:Lcom/transsion/memberapi/PayModule;

    iput-object p2, p0, Lcom/transsion/player/longvideo/member/n;->b:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/n;->a:Lcom/transsion/memberapi/PayModule;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/n;->b:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    invoke-static {v0, v1, p1}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->c0(Lcom/transsion/memberapi/PayModule;Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;Landroid/view/View;)V

    return-void
.end method
