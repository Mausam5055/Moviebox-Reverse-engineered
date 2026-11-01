.class public final Lcom/transsion/postdetail/shorttv/factory/m;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/l;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/m;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lyj/c;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/factory/m;->e()Lyj/c;

    move-result-object v0

    return-object v0
.end method

.method private final d()Lyj/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/m;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    return-object v0
.end method

.method private static final e()Lyj/c;
    .locals 2

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/c;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/m;->d()Lyj/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lyj/c;->a(J)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/m;->d()Lyj/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lyj/c;->b(J)V

    :cond_0
    return-void
.end method
