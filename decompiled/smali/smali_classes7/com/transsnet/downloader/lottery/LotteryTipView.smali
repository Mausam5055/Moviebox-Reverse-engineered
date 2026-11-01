.class public final Lcom/transsnet/downloader/lottery/LotteryTipView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/lottery/LotteryTipView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0001\u0015B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u000fR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsnet/downloader/lottery/LotteryTipView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "",
        "getLotteryUserInfoEntity",
        "()V",
        "",
        "e",
        "()Z",
        "onFragmentResume",
        "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;",
        "a",
        "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;",
        "lotteryUserInfoEntity",
        "b",
        "Z",
        "isRequesting",
        "c",
        "isCountryEnable",
        "Lpy/i1;",
        "d",
        "Lpy/i1;",
        "binding",
        "Companion",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsnet/downloader/lottery/LotteryTipView$a;


# instance fields
.field private a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

.field private b:Z

.field private c:Z

.field private final d:Lpy/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/lottery/LotteryTipView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/lottery/LotteryTipView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/lottery/LotteryTipView;->Companion:Lcom/transsnet/downloader/lottery/LotteryTipView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lpy/i1;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/i1;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->d:Lpy/i1;

    iget-object p2, p1, Lpy/i1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p3, Lcom/transsnet/downloader/lottery/a;

    invoke-direct {p3, p0}, Lcom/transsnet/downloader/lottery/a;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lpy/i1;->c:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsnet/downloader/lottery/b;

    invoke-direct {p2, p0}, Lcom/transsnet/downloader/lottery/b;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/lottery/LotteryTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/lottery/LotteryTipView;->d(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lpy/i1;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->d:Lpy/i1;

    return-object p0
.end method

.method public static final synthetic access$getClassTag(Lcom/transsnet/downloader/lottery/LotteryTipView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    return-object p0
.end method

.method public static final synthetic access$setCountryEnable$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    return-void
.end method

.method public static final synthetic access$setLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/bean/lottery/LotteryUserInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/lottery/LotteryTipView;->c(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "lottery_tip_close_7day_expire_date"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> ivClose \u70b9\u51fb\uff0c\u65e0\u672a\u9886\u53d6\u5956\u54c1\uff0c7\u5929\u5185\u4e0d\u518d\u5c55\u793a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lok/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    sget-object v0, Lti/p;->a:Lti/p;

    invoke-virtual {v0}, Lti/p;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lottery_tip_close_date"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> ivClose \u70b9\u51fb\uff0c\u6709\u672a\u9886\u53d6\u5956\u54c1\uff0c\u5f53\u5929\u4e0d\u518d\u5c55\u793a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lok/c;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final d(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V
    .locals 3

    const-string p1, "/rewards/center"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "source"

    const-string v1, "LotteryTipView"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p1, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> \u70b9\u51fb\u4e4b\u540e\u7f6e\u7a7a\u6570\u636e\uff0c\u56e0\u4e3a\u4e0d\u786e\u5b9a\u7528\u6237\u662f\u5426\u4f1a\u9886\u53d6\u5956\u54c1\uff0c\u91cd\u65b0\u8fdb\u5165\u9700\u8981\u91cd\u65b0\u52a0\u8f7d\u6570\u636e"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lok/c;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    return-void
.end method

.method private final e()Z
    .locals 8

    iget-boolean v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> isRequest() --> \u5f53\u524d\u56fd\u5bb6\u4e0d\u652f\u6301"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lok/c;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->a:Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-lez v0, :cond_2

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> isRequest() --> \u5df2\u7ecf\u6709\u6570\u636e\u4e86"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lok/c;->a(Ljava/lang/String;)V

    return v1

    :cond_2
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "lottery_tip_close_7day_expire_date"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_5

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> isRequest() --> 7\u5929\u81ea\u7136\u65e5\u5185\u4e0d\u518d\u5c55\u793a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lok/c;->a(Ljava/lang/String;)V

    return v1

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "lottery_tip_close_date"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lti/p;->a:Lti/p;

    invoke-virtual {v2}, Lti/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> onFragmentResume() --> 1\u5929\u6700\u591a\u5c55\u793a\u4e00\u6b21"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lok/c;->a(Ljava/lang/String;)V

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    if-eqz v0, :cond_7

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> isRequest() --> \u6b63\u5728\u8bf7\u6c42\u4e2d"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lok/c;->a(Ljava/lang/String;)V

    return v1

    :cond_7
    iput-boolean v3, p0, Lcom/transsnet/downloader/lottery/LotteryTipView;->b:Z

    return v3
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLotteryUserInfoEntity()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v6, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    invoke-direct {v6, p0, v2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method


# virtual methods
.method public final onFragmentResume()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onFragmentResume() --> \u8bf7\u6c42\u672a\u9886\u53d6\u5956\u54c1\u6570\u636e"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->getLotteryUserInfoEntity()V

    return-void
.end method
