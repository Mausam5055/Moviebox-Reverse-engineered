.class public final synthetic Lbr/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbr/d;->a:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lbr/d;->a:Z

    check-cast p1, Lcom/therouter/router/Navigator;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/constant/a;->b(ZLcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    move-result-object p1

    return-object p1
.end method
