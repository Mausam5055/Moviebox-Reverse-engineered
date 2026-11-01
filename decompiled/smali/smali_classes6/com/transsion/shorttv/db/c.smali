.class public final synthetic Lcom/transsion/shorttv/db/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/db/d;

.field public final synthetic b:Lcom/transsion/shorttv/db/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/db/c;->a:Lcom/transsion/shorttv/db/d;

    iput-object p2, p0, Lcom/transsion/shorttv/db/c;->b:Lcom/transsion/shorttv/db/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/db/c;->a:Lcom/transsion/shorttv/db/d;

    iget-object v1, p0, Lcom/transsion/shorttv/db/c;->b:Lcom/transsion/shorttv/db/e;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/db/d;->g(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
