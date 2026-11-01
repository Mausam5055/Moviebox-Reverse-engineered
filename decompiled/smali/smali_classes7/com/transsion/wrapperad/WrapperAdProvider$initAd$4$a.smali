.class public final Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.method public onBackgroundStatusChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/ad/strategy/a;->a:Lcom/transsion/ad/strategy/a;

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/a;->b()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/ad/strategy/a;->a:Lcom/transsion/ad/strategy/a;

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/a;->a()V

    :goto_0
    return-void
.end method
