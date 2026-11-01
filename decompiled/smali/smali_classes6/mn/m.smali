.class public final synthetic Lmn/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmn/o;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lmn/o;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn/m;->a:Lmn/o;

    iput-object p2, p0, Lmn/m;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmn/m;->a:Lmn/o;

    iget-object v1, p0, Lmn/m;->b:Ljava/util/List;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmn/o;->c(Lmn/o;Ljava/util/List;Lz3/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
