.class public final Lcom/transsion/room/sub/adapter/subscription/s;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/adapter/subscription/s$a;,
        Lcom/transsion/room/sub/adapter/subscription/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;",
        ">;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001e\u001fB)\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/room/sub/adapter/subscription/s;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;",
        "Lr6/i;",
        "",
        "data",
        "Lsj/b;",
        "exposureHelper",
        "",
        "showNumberTh",
        "<init>",
        "(Ljava/util/List;Lsj/b;Z)V",
        "",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/transsion/room/sub/adapter/subscription/b;",
        "itemClickListener",
        "",
        "Q1",
        "(Lcom/transsion/room/sub/adapter/subscription/b;)V",
        "G",
        "Lsj/b;",
        "H",
        "Z",
        "I",
        "Lcom/transsion/room/sub/adapter/subscription/b;",
        "clickListener",
        "J",
        "a",
        "b",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final J:Lcom/transsion/room/sub/adapter/subscription/s$a;

.field private static final K:Ljava/lang/String; = "FollowingsFeedAdapter"

.field public static final L:I = 0x1


# instance fields
.field private final G:Lsj/b;

.field private final H:Z

.field private I:Lcom/transsion/room/sub/adapter/subscription/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/sub/adapter/subscription/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/sub/adapter/subscription/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/sub/adapter/subscription/s;->J:Lcom/transsion/room/sub/adapter/subscription/s$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lsj/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;",
            ">;",
            "Lsj/b;",
            "Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/s;->G:Lsj/b;

    iput-boolean p3, p0, Lcom/transsion/room/sub/adapter/subscription/s;->H:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lsj/b;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/s;-><init>(Ljava/util/List;Lsj/b;Z)V

    return-void
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;",
            ">;I)I"
        }
    .end annotation

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final Q1(Lcom/transsion/room/sub/adapter/subscription/b;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/s;->I:Lcom/transsion/room/sub/adapter/subscription/b;

    new-instance p1, Lcom/transsion/room/sub/adapter/subscription/s$b;

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/s;->G:Lsj/b;

    iget-boolean v1, p0, Lcom/transsion/room/sub/adapter/subscription/s;->H:Z

    invoke-direct {p1, v0, v1}, Lcom/transsion/room/sub/adapter/subscription/s$b;-><init>(Lsj/b;Z)V

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/s;->I:Lcom/transsion/room/sub/adapter/subscription/b;

    invoke-virtual {p1, v0}, Lcom/transsion/room/sub/adapter/subscription/s$b;->D(Lcom/transsion/room/sub/adapter/subscription/b;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
