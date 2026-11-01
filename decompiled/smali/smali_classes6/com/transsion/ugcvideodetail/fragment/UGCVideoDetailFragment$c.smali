.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lsx/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->V0(Lcom/transsion/videofloat/bean/FloatActionType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpx/a;)Z
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->q(Lpx/a;)Z

    move-result p1

    return p1
.end method

.method public b(Lpx/a;)V
    .locals 1

    invoke-static {p0, p1}, Lsx/a$a;->a(Lsx/a;Lpx/a;)V

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->p(Lpx/a;)V

    return-void
.end method

.method public c(Lpx/a;)V
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->o()V

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->s(Lpx/a;)V

    return-void
.end method
