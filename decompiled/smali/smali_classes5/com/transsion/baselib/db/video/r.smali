.class public final synthetic Lcom/transsion/baselib/db/video/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/u;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/r;->a:Lcom/transsion/baselib/db/video/u;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/r;->a:Lcom/transsion/baselib/db/video/u;

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Lcom/transsion/baselib/db/video/u;->h(Lcom/transsion/baselib/db/video/u;Lz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
