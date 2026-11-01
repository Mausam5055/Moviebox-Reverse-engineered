.class public final synthetic Lcom/transsion/player/longvideo/intercept/g0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lgo/a;

.field public final synthetic d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/g0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/g0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/g0;->c:Lgo/a;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/g0;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/g0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/g0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/g0;->c:Lgo/a;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/g0;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V

    return-void
.end method
