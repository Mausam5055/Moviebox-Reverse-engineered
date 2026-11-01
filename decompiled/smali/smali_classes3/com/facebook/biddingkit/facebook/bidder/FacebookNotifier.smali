.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lj8/b;


# instance fields
.field private final a:I

.field private b:Lcom/facebook/biddingkit/facebook/bidder/a;

.field private final c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

.field private final d:Lcom/facebook/biddingkit/facebook/bidder/c;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d:Lcom/facebook/biddingkit/facebook/bidder/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/c;)V
    .locals 3

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    return-object p0
.end method

.method protected static c(Lp8/b;Lp8/b;)Ljava/lang/Double;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    invoke-interface {p0}, Lp8/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lp8/b;->a()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lp8/b;->a()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d:Lcom/facebook/biddingkit/facebook/bidder/c;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static e(Lp8/b;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lp8/b;->b()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private i()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lp8/a;)V
    .locals 4

    invoke-static {p2}, Lo8/b;->b(Lp8/a;)[Lp8/b;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e(Lp8/b;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    const/4 v3, 0x1

    aget-object p2, p2, v3

    invoke-static {v1, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c(Lp8/b;Lp8/b;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo8/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected g(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->WIN:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p1

    :cond_1
    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p1
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 1

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->i()I

    move-result p2

    invoke-static {p1, p2}, Lm8/b;->a(Ljava/lang/String;I)Ll8/e;

    move-result-object p1

    const-string p2, "null"

    const-string p3, "FacebookNotifier"

    if-eqz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Facebook display winner notified with http status "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll8/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/facebook/biddingkit/logging/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Facebook bidder winner notified with http status "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ll8/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/facebook/biddingkit/logging/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ""

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :try_start_1
    aget-object v0, v0, v2

    move-object v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v4, v9

    :goto_0
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v9

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string v2, "FacebookNotifier"

    const-string v3, "Failed processing the Url"

    invoke-static {v2, v3, v0}, Lcom/facebook/biddingkit/logging/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method
