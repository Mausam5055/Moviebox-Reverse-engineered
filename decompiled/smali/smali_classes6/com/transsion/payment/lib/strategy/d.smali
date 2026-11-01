.class public final synthetic Lcom/transsion/payment/lib/strategy/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsion/payment/lib/b;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/d;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/d;->b:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/d;->c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    iput-boolean p4, p0, Lcom/transsion/payment/lib/strategy/d;->d:Z

    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/d;->e:Lcom/transsion/payment/lib/b;

    iput-object p6, p0, Lcom/transsion/payment/lib/strategy/d;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/d;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/d;->b:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/d;->c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    iget-boolean v3, p0, Lcom/transsion/payment/lib/strategy/d;->d:Z

    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/d;->e:Lcom/transsion/payment/lib/b;

    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/d;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->h(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
