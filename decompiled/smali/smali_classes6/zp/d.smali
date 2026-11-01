.class public final synthetic Lzp/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/activity/CreateRoomActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/activity/CreateRoomActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp/d;->a:Lcom/transsion/room/activity/CreateRoomActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzp/d;->a:Lcom/transsion/room/activity/CreateRoomActivity;

    check-cast p1, Lcom/transsion/room/bean/CheckNameBean;

    invoke-static {v0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->f0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/room/bean/CheckNameBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
