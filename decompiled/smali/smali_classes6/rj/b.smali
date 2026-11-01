.class public final synthetic Lrj/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lrj/e;

.field public final synthetic b:Lcom/transsion/baselib/db/room/RoomItemBean;


# direct methods
.method public synthetic constructor <init>(Lrj/e;Lcom/transsion/baselib/db/room/RoomItemBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrj/b;->a:Lrj/e;

    iput-object p2, p0, Lrj/b;->b:Lcom/transsion/baselib/db/room/RoomItemBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lrj/b;->a:Lrj/e;

    iget-object v1, p0, Lrj/b;->b:Lcom/transsion/baselib/db/room/RoomItemBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lrj/e;->f(Lrj/e;Lcom/transsion/baselib/db/room/RoomItemBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
