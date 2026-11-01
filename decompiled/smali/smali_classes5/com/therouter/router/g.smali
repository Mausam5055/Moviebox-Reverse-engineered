.class public final Lcom/therouter/router/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/therouter/router/Navigator;

.field private final b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/therouter/router/Navigator;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/therouter/router/g;->a:Lcom/therouter/router/Navigator;

    iput-object p2, p0, Lcom/therouter/router/g;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/g;->b:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/therouter/router/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/therouter/router/g;

    iget-object p1, p1, Lcom/therouter/router/g;->a:Lcom/therouter/router/Navigator;

    iget-object v0, p0, Lcom/therouter/router/g;->a:Lcom/therouter/router/Navigator;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/g;->a:Lcom/therouter/router/Navigator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
