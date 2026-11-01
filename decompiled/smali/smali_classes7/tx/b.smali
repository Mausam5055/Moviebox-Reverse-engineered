.class public final synthetic Ltx/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/view/VideoFloatView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltx/b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltx/b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->k(Lcom/transsion/videofloat/view/VideoFloatView;)V

    return-void
.end method
