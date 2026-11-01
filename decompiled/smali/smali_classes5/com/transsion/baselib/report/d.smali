.class public final synthetic Lcom/transsion/baselib/report/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljb/b;


# direct methods
.method public synthetic constructor <init>(Ljb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/report/d;->a:Ljb/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/report/d;->a:Ljb/b;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/transsion/baselib/report/e;->b(Ljb/b;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
