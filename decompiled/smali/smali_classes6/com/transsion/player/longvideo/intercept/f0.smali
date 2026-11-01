.class public final synthetic Lcom/transsion/player/longvideo/intercept/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

.field public final synthetic b:Lgo/a;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/f0;->a:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/f0;->b:Lgo/a;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/f0;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/f0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/player/longvideo/intercept/f0;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/f0;->a:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/f0;->b:Lgo/a;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/f0;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/f0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/f0;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->e(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method
