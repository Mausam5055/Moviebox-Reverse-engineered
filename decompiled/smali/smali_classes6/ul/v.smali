.class public final synthetic Lul/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/transsion/home/bean/FilterVal;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/v;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lul/v;->b:Lcom/transsion/home/bean/FilterVal;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lul/v;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lul/v;->b:Lcom/transsion/home/bean/FilterVal;

    invoke-static {v0, v1}, Lul/w$a$a;->a(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
