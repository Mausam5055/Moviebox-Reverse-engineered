.class public final synthetic Lcom/therouter/router/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbg/e;

    check-cast p2, Lbg/e;

    invoke-static {p1, p2}, Lcom/therouter/router/NavigatorKt;->a(Lbg/e;Lbg/e;)I

    move-result p1

    return p1
.end method
