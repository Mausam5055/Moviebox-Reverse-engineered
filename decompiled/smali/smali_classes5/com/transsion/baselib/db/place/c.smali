.class public final synthetic Lcom/transsion/baselib/db/place/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/place/d;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/place/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/place/c;->a:Lcom/transsion/baselib/db/place/d;

    iput-object p2, p0, Lcom/transsion/baselib/db/place/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/place/c;->a:Lcom/transsion/baselib/db/place/d;

    iget-object v1, p0, Lcom/transsion/baselib/db/place/c;->b:Ljava/util/List;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/place/d;->e(Lcom/transsion/baselib/db/place/d;Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
