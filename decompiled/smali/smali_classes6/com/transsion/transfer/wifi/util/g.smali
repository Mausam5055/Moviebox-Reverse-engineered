.class public final Lcom/transsion/transfer/wifi/util/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/util/g;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/util/g;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/util/g;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/util/g;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/util/g;->g(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "mb_wifi"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "mb_wifi"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final e(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "mb_wifi_r"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "mb_wifi"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
