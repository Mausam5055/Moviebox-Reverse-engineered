.class public final synthetic Lli/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lli/m;


# direct methods
.method public synthetic constructor <init>(Lli/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli/h;->a:Lli/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lli/h;->a:Lli/m;

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Lli/m;->t(Lli/m;Lz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
