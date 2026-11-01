.class public Lcom/cloud/hisavana/sdk/v4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/v4$f;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/v4$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/v4;->a:Lcom/cloud/hisavana/sdk/v4$f;

    return-object p0
.end method

.method private b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/m;

    new-instance v1, Lcom/cloud/hisavana/sdk/v4$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/v4$b;-><init>(Lcom/cloud/hisavana/sdk/v4;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/m;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/m;->q()V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "start execute getAdCreativies."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/b;

    new-instance v1, Lcom/cloud/hisavana/sdk/v4$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/v4$a;-><init>(Lcom/cloud/hisavana/sdk/v4;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/cloud/hisavana/sdk/b;-><init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/b$b;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/b;->q()V

    return-void
.end method

.method private f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/n4;

    new-instance v1, Lcom/cloud/hisavana/sdk/v4$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/v4$c;-><init>(Lcom/cloud/hisavana/sdk/v4;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/n4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/n4;->q()V

    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/z1;

    new-instance v1, Lcom/cloud/hisavana/sdk/v4$e;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/v4$e;-><init>(Lcom/cloud/hisavana/sdk/v4;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/z1;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/z1;->u()V

    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/q2;

    new-instance v1, Lcom/cloud/hisavana/sdk/v4$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/v4$d;-><init>(Lcom/cloud/hisavana/sdk/v4;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/q2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q2;->r()V

    return-void
.end method


# virtual methods
.method public c(Lcom/cloud/hisavana/sdk/v4$f;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v4;->a:Lcom/cloud/hisavana/sdk/v4$f;

    return-void
.end method

.method public e(Ljava/util/List;III)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v4;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v4;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v4;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v4;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v4;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_5
    if-lez p4, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string p3, "ssp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ads dto subList -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/v4;->d(Ljava/util/List;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
