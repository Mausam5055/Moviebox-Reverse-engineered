.class public final synthetic Llj/f1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llj/f1;->a:Z

    iput-object p2, p0, Llj/f1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Llj/f1;->a:Z

    iget-object v1, p0, Llj/f1;->b:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/h1;->e(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
