.class public final Lcom/transsion/usercenter/tvlink/d;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/tvlink/d$a;,
        Lcom/transsion/usercenter/tvlink/d$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/usercenter/tvlink/d$a;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/tvlink/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/tvlink/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/tvlink/d;->c:Lcom/transsion/usercenter/tvlink/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/tvlink/d;->a:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/tvlink/d;->b:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/tvlink/d;->b:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/usercenter/tvlink/d;->a:Landroidx/lifecycle/b0;

    new-instance v1, Lcom/transsion/usercenter/tvlink/d$b;

    sget-object v2, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v2}, Lsm/f$a;->a()Lsm/f;

    move-result-object v3

    const-string v4, "sa_me_tv_download_url"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v6, ""

    if-nez v3, :cond_1

    move-object v3, v6

    :cond_1
    invoke-virtual {v2}, Lsm/f$a;->a()Lsm/f;

    move-result-object v2

    const-string v7, "sa_me_web_link_url"

    invoke-virtual {v2, v7, v5}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    invoke-direct {v1, v3, v6}, Lcom/transsion/usercenter/tvlink/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
