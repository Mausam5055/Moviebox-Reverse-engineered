.class public final synthetic Lki/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lki/f;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lki/f;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lki/e;->a:Lki/f;

    iput-object p2, p0, Lki/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lki/e;->a:Lki/f;

    iget-object v1, p0, Lki/e;->b:Ljava/util/List;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lki/f;->f(Lki/f;Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
