.class public final synthetic Lqp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lqp/b;


# direct methods
.method public synthetic constructor <init>(Lqp/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp/a;->a:Lqp/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqp/a;->a:Lqp/b;

    invoke-static {v0}, Lqp/b;->a(Lqp/b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
