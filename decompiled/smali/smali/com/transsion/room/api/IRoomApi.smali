.class public interface abstract Lcom/transsion/room/api/IRoomApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJB\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000eH&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J<\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2#\u0010\u0013\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00120\u000eH&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019JJ\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2)\u0010\u0013\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001d\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u00120\u000eH&\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010&\u001a\u00020%2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H&\u00a2\u0006\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/room/api/IRoomApi;",
        "",
        "",
        "d",
        "()Ljava/lang/String;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Laq/a;",
        "f",
        "(Landroidx/fragment/app/Fragment;)Laq/a;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "isNeedDialog",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "isGranted",
        "",
        "callback",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "data",
        "b",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "",
        "latitude",
        "longitude",
        "",
        "place",
        "e",
        "(DDLkotlin/jvm/functions/Function1;)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/room/api/RoomsViewType;",
        "type",
        "Laq/c;",
        "c",
        "(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Laq/c;",
        "RoomApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V
.end method

.method public abstract b(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Laq/c;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e(DDLkotlin/jvm/functions/Function1;)V
.end method

.method public abstract f(Landroidx/fragment/app/Fragment;)Laq/a;
.end method
