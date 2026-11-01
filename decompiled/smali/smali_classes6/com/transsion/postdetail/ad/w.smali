.class public final synthetic Lcom/transsion/postdetail/ad/w;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ad/VideoFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ad/VideoFloatingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ad/w;->a:Lcom/transsion/postdetail/ad/VideoFloatingView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/w;->a:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;->a(Lcom/transsion/postdetail/ad/VideoFloatingView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
