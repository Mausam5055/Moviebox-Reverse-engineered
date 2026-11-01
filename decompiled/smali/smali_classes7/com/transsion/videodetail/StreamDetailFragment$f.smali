.class public final Lcom/transsion/videodetail/StreamDetailFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Lsx/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;->g2(Lcom/transsion/videofloat/bean/FloatActionType;)Z
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

    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->r(Lpx/a;)Z

    move-result p1

    return p1
.end method

.method public b(Lpx/a;)V
    .locals 1

    invoke-static {p0, p1}, Lsx/a$a;->a(Lsx/a;Lpx/a;)V

    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->q(Lpx/a;)V

    return-void
.end method

.method public c(Lpx/a;)V
    .locals 1

    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    invoke-virtual {v0}, Lcom/transsion/videodetail/util/StreamFloatManager;->p()V

    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->t(Lpx/a;)V

    return-void
.end method
