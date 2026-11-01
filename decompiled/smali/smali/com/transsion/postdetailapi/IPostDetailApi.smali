.class public interface abstract Lcom/transsion/postdetailapi/IPostDetailApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J)\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u001b\u0010\u0012J\u0019\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J1\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008\"\u0010#J1\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00020!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008$\u0010#J!\u0010(\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\'\u001a\u00020&H&\u00a2\u0006\u0004\u0008(\u0010)J\u0019\u0010*\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H&\u00a2\u0006\u0004\u0008.\u0010/J\u009f\u0001\u0010<\u001a\u00020\u000e2\u0008\u00100\u001a\u0004\u0018\u00010\u00072\u0008\u00101\u001a\u0004\u0018\u00010\u00072\u0006\u00103\u001a\u0002022\u0008\u0008\u0002\u00104\u001a\u00020&2\u0008\u0008\u0002\u00105\u001a\u00020&2\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010B\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@H&\u00a2\u0006\u0004\u0008B\u0010C\u00a8\u0006D"
    }
    d2 = {
        "Lcom/transsion/postdetailapi/IPostDetailApi;",
        "",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "data",
        "",
        "i",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "",
        "tag",
        "m",
        "(Ljava/lang/String;)V",
        "parentType",
        "insertPostId",
        "insertPostOps",
        "Landroidx/fragment/app/Fragment;",
        "d",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;",
        "l",
        "(Ljava/lang/String;)Landroidx/fragment/app/Fragment;",
        "Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "item",
        "",
        "tabIndex",
        "c",
        "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;",
        "b",
        "groupId",
        "k",
        "e",
        "pageName",
        "pageFrom",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        "pool",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "h",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "o",
        "fragment",
        "",
        "isRefresh",
        "g",
        "(Landroidx/fragment/app/Fragment;Z)V",
        "n",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/app/Application;",
        "application",
        "j",
        "(Landroid/app/Application;)V",
        "topicId",
        "topicType",
        "",
        "commentCount",
        "showDownload",
        "isFromDetail",
        "commentId",
        "trackId",
        "previousTrackId",
        "previousPageVideoId",
        "ugcVideoId",
        "collectionId",
        "f",
        "(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;",
        "Lcom/therouter/router/RouteItem;",
        "routeItem",
        "Lbg/b;",
        "callback",
        "a",
        "(Lcom/therouter/router/RouteItem;Lbg/b;)V",
        "PostDetailApi_psRelease"
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
.method public abstract a(Lcom/therouter/router/RouteItem;Lbg/b;)V
.end method

.method public abstract b(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract c(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract g(Landroidx/fragment/app/Fragment;Z)V
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.end method

.method public abstract i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public abstract j(Landroid/app/Application;)V
.end method

.method public abstract k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract l(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract m(Ljava/lang/String;)V
.end method

.method public abstract n(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.end method
