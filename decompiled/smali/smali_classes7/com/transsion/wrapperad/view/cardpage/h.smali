.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/h;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/h;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    return-void
.end method
