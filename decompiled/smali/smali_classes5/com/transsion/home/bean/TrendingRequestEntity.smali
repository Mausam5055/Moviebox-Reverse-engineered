.class public final Lcom/transsion/home/bean/TrendingRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001e\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010*\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0007\"\u0004\u0008,\u0010\t\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/home/bean/TrendingRequestEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "page",
        "",
        "getPage",
        "()Ljava/lang/String;",
        "setPage",
        "(Ljava/lang/String;)V",
        "perPage",
        "",
        "getPerPage",
        "()I",
        "setPerPage",
        "(I)V",
        "deepLink",
        "getDeepLink",
        "setDeepLink",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "tabId",
        "getTabId",
        "setTabId",
        "tabCode",
        "getTabCode",
        "setTabCode",
        "latest_events",
        "Ljava/util/Queue;",
        "Lcom/transsion/baselib/report/recent_event/ActionEvent;",
        "getLatest_events",
        "()Ljava/util/Queue;",
        "setLatest_events",
        "(Ljava/util/Queue;)V",
        "disablePlaylist",
        "",
        "getDisablePlaylist",
        "()Ljava/lang/Boolean;",
        "setDisablePlaylist",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "grade",
        "getGrade",
        "setGrade",
        "Home_psRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private deepLink:Ljava/lang/String;

.field private disablePlaylist:Ljava/lang/Boolean;

.field private grade:Ljava/lang/String;

.field private latest_events:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/transsion/baselib/report/recent_event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private page:Ljava/lang/String;

.field private perPage:I

.field private sessionId:Ljava/lang/String;

.field private tabCode:Ljava/lang/String;

.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->page:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->perPage:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->deepLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->sessionId:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->disablePlaylist:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisablePlaylist()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->disablePlaylist:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getGrade()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->grade:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatest_events()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/transsion/baselib/report/recent_event/ActionEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->latest_events:Ljava/util/Queue;

    return-object v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->perPage:I

    return v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->tabCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public final setDisablePlaylist(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->disablePlaylist:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGrade(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->grade:Ljava/lang/String;

    return-void
.end method

.method public final setLatest_events(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/transsion/baselib/report/recent_event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->latest_events:Ljava/util/Queue;

    return-void
.end method

.method public final setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->page:Ljava/lang/String;

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->perPage:I

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setTabCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->tabCode:Ljava/lang/String;

    return-void
.end method

.method public final setTabId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/TrendingRequestEntity;->tabId:Ljava/lang/String;

    return-void
.end method
