.class public final synthetic Lov/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lov/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lov/a;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lov/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lov/a;->b:Ljava/lang/Integer;

    check-cast p1, Lcom/therouter/router/Navigator;

    invoke-static {v0, v1, p1}, Lov/c;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    move-result-object p1

    return-object p1
.end method
