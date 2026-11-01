.class public final synthetic Lcom/transsion/postdetail/ad/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ad/VideoFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ad/VideoFloatingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ad/x;->a:Lcom/transsion/postdetail/ad/VideoFloatingView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/x;->a:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;->c(Lcom/transsion/postdetail/ad/VideoFloatingView;)V

    return-void
.end method
