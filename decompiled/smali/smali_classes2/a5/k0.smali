.class public La5/k0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# static fields
.field public static a:La5/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/k0;

    invoke-direct {v0}, La5/k0;-><init>()V

    sput-object v0, La5/k0;->a:La5/k0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    iget-object p1, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/j1;->m0()V

    return-void

    :cond_0
    check-cast p2, Lcom/alibaba/fastjson/b;

    invoke-interface {p2}, Lcom/alibaba/fastjson/b;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->write(Ljava/lang/String;)V

    return-void
.end method
